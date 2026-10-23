#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR=$(cd -- "$(dirname -- "$0")" && pwd)
repository=${REPOSITORY:-NixOS/SC-election-2026}
# Pass a separate output directory to review the generated files first.
outputDir=${1:-"$SCRIPT_DIR/../candidates"}

if (( $# > 1 )); then
  echo "Usage: $0 [output-directory]" >&2
  exit 1
fi

command -v gh >/dev/null
command -v jq >/dev/null

shopt -s nullglob
files=("$SCRIPT_DIR"/../candidates/*.md)
if (( ${#files[@]} == 0 )); then
  echo "No candidate files found" >&2
  exit 1
fi

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

gh api \
  --method GET \
  --paginate \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "/repos/$repository/issues" \
  -f labels=question \
  -f state=open \
  -f sort=comments |
  jq -sc 'add | .[] | select(has("pull_request") | not)' > "$tmp/questions.json"

# Fetch every page before preparing any candidate files.
while IFS= read -r questionJson; do
  number=$(jq -r .number <<< "$questionJson")
  gh api \
    --paginate \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "/repos/$repository/issues/$number/comments" |
    jq -s 'add | sort_by(.created_at, .id) | group_by(.user.login | ascii_downcase) |
      map({key: (.[0].user.login | ascii_downcase), value: .}) | from_entries' > "$tmp/answers-$number.json"
done < "$tmp/questions.json"

for file in "${files[@]}"; do
  basename=$(basename "$file")
  login=${basename%.md}
  login=${login,,}
  rendered="$tmp/$basename"
  unanswered="$tmp/unanswered-$basename"
  : > "$unanswered"

  # Replace a previous generated section when collecting again.
  if grep -qx '<!-- BEGIN GENERATED Q&A -->' "$file"; then
    sed '/^<!-- BEGIN GENERATED Q&A -->$/,$d' "$file" > "$rendered"
  else
    cat "$file" > "$rendered"
    printf '\n\n' >> "$rendered"
  fi
  printf '<!-- BEGIN GENERATED Q&A -->\n## Q&A\n\n' >> "$rendered"

  while IFS= read -r questionJson; do
    number=$(jq -r .number <<< "$questionJson")
    title=$(jq -r .title <<< "$questionJson")
    questionUrl=$(jq -r .html_url <<< "$questionJson")
    question=$(jq -r .body <<< "$questionJson" |
      awk '
        /^### Question/ { q=1; next }
        /^### Candidates/ { q=0 }
        q { print }
      ')

    if jq -e --arg login "$login" 'has($login)' "$tmp/answers-$number.json" >/dev/null; then
      {
        printf '### %s ([link](%s))\n\n%s\n\n' "$title" "$questionUrl" "$question"
        responseNumber=0
        while IFS= read -r answerJson; do
          answer=$(jq -r .body <<< "$answerJson")
          answerUrl=$(jq -r .html_url <<< "$answerJson")
          responseNumber=$((responseNumber + 1))
          label=Answer
          if (( responseNumber > 1 )); then
            label="Additional response"
          fi
          printf '<details>\n<summary>%s (<a href="%s">link</a>)</summary>\n\n' "$label" "$answerUrl"
          printf '%s\n\n</details>\n\n' "$answer"
        done < <(jq -c --arg login "$login" '.[$login][]' "$tmp/answers-$number.json")
      } >> "$rendered"
    else
      summaryTitle=$(jq -r '.title | @html' <<< "$questionJson")
      printf '<details>\n<summary>%s (<a href="%s">link</a>)</summary>\n\n%s\n\n</details>\n\n' "$summaryTitle" "$questionUrl" "$question" >> "$unanswered"
    fi
  done < "$tmp/questions.json"

  {
    printf '## Unanswered questions\n\n'
    cat "$unanswered"
    printf '<!-- END GENERATED Q&A -->\n'
  } >> "$rendered"
done

# Write files only after all API requests and rendering have succeeded.
mkdir -p "$outputDir"
for file in "${files[@]}"; do
  basename=$(basename "$file")
  cp "$tmp/$basename" "$outputDir/$basename"
  echo "Collected Q&A: $outputDir/$basename"
done
