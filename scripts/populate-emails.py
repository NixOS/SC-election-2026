#!/usr/bin/env python3
"""Fill blank voter emails from last year's data, maintainers, and recent commits."""

import argparse
import csv
from datetime import datetime, timezone
import http.client
import io
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import time
import urllib.error
import urllib.parse
import urllib.request

ROOT = Path(__file__).resolve().parents[1]
FIELDS = ["githubId", "githubUsername", "email"]
MAINTAINERS_URL = "https://raw.githubusercontent.com/NixOS/nixpkgs/master/maintainers/maintainer-list.nix"


def usable(email, blocked):
    email = email.strip().casefold()
    return (bool(re.fullmatch(r"[^\s@,<>]+@[^\s@,<>]+\.[^\s@,<>]+", email))
            and email not in blocked and not re.search(r"no[._-]?reply", email)
            and email.rsplit("@", 1)[-1] not in {"example.com", "example.org", "example.net"})


class GitHub:
    def __init__(self, token):
        self.token = token
        self.next_request = 0

    def search(self, organization, username):
        url = "https://api.github.com/search/commits?" + urllib.parse.urlencode({
            "q": f"org:{organization} author:{username}",
            "sort": "author-date", "order": "desc", "per_page": 100, "page": 1,
        })
        request = urllib.request.Request(url, headers={
            "Authorization": f"Bearer {self.token}",
            "Accept": "application/vnd.github+json", "User-Agent": "sc-election-emails",
        })
        for attempt in range(3):
            time.sleep(max(0, self.next_request - time.time()))
            self.next_request = time.time() + 2.2
            try:
                with urllib.request.urlopen(request, timeout=30) as response:
                    self.rate_limit(response.headers)
                    data = json.load(response)
                if data.get("incomplete_results"):
                    raise RuntimeError("GitHub returned incomplete results")
                return data["items"][:100]
            except urllib.error.HTTPError as error:
                self.rate_limit(error.headers)
                if error.code not in (403, 429, 500, 502, 503, 504) or attempt == 2:
                    raise RuntimeError(f"GitHub HTTP {error.code} for {username}") from error
                if error.code in (403, 429):
                    self.next_request = max(self.next_request, time.time() + 60)
            except (urllib.error.URLError, http.client.HTTPException, ConnectionError,
                    TimeoutError, json.JSONDecodeError, UnicodeDecodeError, RuntimeError) as error:
                if attempt == 2:
                    raise RuntimeError(f"GitHub response failed for {username}: {error}") from error
            print(f"{username}: retrying GitHub request ({attempt + 1}/2)", file=sys.stderr)
        raise RuntimeError("GitHub lookup failed")

    def rate_limit(self, headers):
        if headers.get("X-RateLimit-Remaining") == "0":
            self.next_request = max(self.next_request, float(headers["X-RateLimit-Reset"]) + 1)
        if headers.get("Retry-After"):
            self.next_request = max(self.next_request, time.time() + float(headers["Retry-After"]) + 1)


def commit_email(github, row, blocked):
    candidates = []
    now = datetime.now(timezone.utc)
    for organization in ("NixOS", "NixCon"):
        for item in github.search(organization, row["githubUsername"]):
            if str((item.get("author") or {}).get("id", "")) != row["githubId"]:
                continue
            if item["repository"]["full_name"].split("/", 1)[0].casefold() != organization.casefold():
                continue
            author = item["commit"]["author"]
            email = (author.get("email") or "").strip()
            date = datetime.fromisoformat(author["date"].replace("Z", "+00:00"))
            if usable(email, blocked) and date <= now:
                candidates.append((date, email, item["html_url"]))
    if not candidates:
        return "", "no usable email in the first page of commits"
    _, email, url = max(candidates)
    return email, url


def maintainer_emails(path=None):
    if path is None:
        with urllib.request.urlopen(MAINTAINERS_URL, timeout=30) as response:
            content = response.read()
        with tempfile.TemporaryDirectory() as directory:
            downloaded = Path(directory) / "maintainer-list.nix"
            downloaded.write_bytes(content)
            return maintainer_emails(downloaded)
    # Read a Nix maintainer list or a JSON snapshot.
    data = (subprocess.check_output(["nix", "eval", "--json", "--file", str(path.resolve())], text=True)
            if path.suffix == ".nix" else path.read_text())
    grouped = {}
    for entry in json.loads(data).values():
        if entry.get("githubId") is not None and entry.get("email"):
            grouped.setdefault(str(entry["githubId"]), set()).add(entry["email"].strip())
    return {ident: next(iter(emails)) for ident, emails in grouped.items() if len(emails) == 1}


def local_sources(args):
    with args.previous.open(newline="") as file:
        yield "2025 voters", {row["githubId"]: row["email"].strip() for row in csv.DictReader(file)}
    for path in args.maintainers or [None]:
        yield str(path) if path else "Nixpkgs maintainers", maintainer_emails(path)


def fill_email(row, email, source, blocked, used):
    email = email.strip()
    if not usable(email, blocked) or email.casefold() in used:
        return False
    row["email"] = email
    used.add(email.casefold())
    print(f"{row['githubUsername']}: {email}, {source}", file=sys.stderr)
    return True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--eligible", type=Path, default=ROOT / "eligible.csv")
    parser.add_argument("--previous", type=Path, default=ROOT / "eligible-2025.csv")
    parser.add_argument("--blocked", type=Path, default=ROOT / "emails-not-to-autoset.txt")
    parser.add_argument("--maintainers", type=Path, nargs="+",
                        help="local maintainer files, newest first")
    parser.add_argument("--output", type=Path, help="write to another CSV")
    parser.add_argument("--offline", action="store_true", help="skip network requests")
    args = parser.parse_args()
    if args.offline and not args.maintainers:
        parser.error("--offline requires --maintainers PATH")
    original = args.eligible.read_bytes()
    reader = csv.DictReader(io.StringIO(original.decode()))
    if reader.fieldnames != FIELDS:
        parser.error("unexpected eligible.csv header")
    rows = list(reader)
    if any(set(row) != set(FIELDS) or None in row.values() for row in rows):
        parser.error("malformed eligible.csv row")
    if len({row["githubId"] for row in rows}) != len(rows):
        parser.error("duplicate voter IDs")
    blocked = {line.strip().casefold() for line in args.blocked.read_text().splitlines() if line.strip()}
    used = {row["email"].strip().casefold() for row in rows if row["email"]}
    pending = [row for row in rows if not row["email"]]
    missing_before = len(pending)
    if pending:
        for source, emails in local_sources(args):
            for row in pending:
                fill_email(row, emails.get(row["githubId"], ""), source, blocked, used)
            pending = [row for row in pending if not row["email"]]
            if not pending:
                break

    failures = 0
    if pending and not args.offline:
        github = GitHub(os.environ.get("GITHUB_TOKEN", ""))
        if not github.token:
            parser.error("set GITHUB_TOKEN or use --offline")
        for row in pending:
            try:
                email, source = commit_email(github, row, blocked)
                if fill_email(row, email, source, blocked, used):
                    continue
                if email:
                    source = "email already assigned to another voter"
            except (RuntimeError, urllib.error.URLError, TimeoutError) as error:
                source = f"lookup failed: {error}"
                failures += 1
            print(f"{row['githubUsername']}: blank, {source}", file=sys.stderr)
    if args.eligible.read_bytes() != original:
        parser.error("eligible.csv changed during lookup; refusing to overwrite it")
    output = args.output or args.eligible
    with tempfile.NamedTemporaryFile(mode="w", newline="", dir=output.parent, delete=False) as file:
        temporary = Path(file.name)
        writer = csv.DictWriter(file, fieldnames=FIELDS, lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)
    try:
        temporary.chmod(output.stat().st_mode & 0o777 if output.exists() else 0o644)
        os.replace(temporary, output)
    finally:
        temporary.unlink(missing_ok=True)
    missing = sum(not row["email"] for row in rows)
    print(f"Filled {missing_before - missing}; {missing} still blank; {failures} lookup failures.", file=sys.stderr)
    return bool(failures)


if __name__ == "__main__":
    sys.exit(main())
