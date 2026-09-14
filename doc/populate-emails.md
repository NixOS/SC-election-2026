# Populate voter emails

Set `GITHUB_TOKEN`, then run:

```sh
nix shell nixpkgs#python3 -c python3 scripts/populate-emails.py
```

The script fills blank emails in `eligible.csv`. It checks `eligible-2025.csv`,
the Nixpkgs maintainer list, then GitHub commits. It keeps existing emails and
matches voters by GitHub ID.

The script downloads the maintainer list from Nixpkgs and reads it with `nix eval`.
Use `--maintainers PATH` to supply a local Nix file or JSON snapshot instead.
You can pass several files, newest first.

GitHub lookups check only the first page of commits, newest first.
The script verifies the author's GitHub ID and picks the newest usable
email. It waits for rate limits and makes up to three attempts per request.
It logs each email's source to stderr.

`eligible-2025.csv` and `emails-not-to-autoset.txt` come from the 2025 election.
The script skips addresses in the blocklist, noreply addresses, and addresses
already assigned to another voter. Entries without a usable email stay blank.

Use `--offline --maintainers PATH` to use local files without network requests.
Use `--output /tmp/eligible-preview.csv` to write a preview instead of updating
`eligible.csv`.
