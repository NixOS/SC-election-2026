#!/usr/bin/env bash
set -euo pipefail

endorsersAskedFile=endorsersAsked.csv

while true; do

  if [[ -f "$endorsersAskedFile" ]] && grep "^$ENDORSER_ID$" "$endorsersAskedFile" >/dev/null; then
    gh api \
      --method POST \
      "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
      -F "body=@-" << EOF
@$ENDORSER_LOGIN: You've already been asked to disclose your conflicts of interest after a previous endorsement. So the endorsement is already complete if you replied to the email sent to your voter email address. If you never received the email, check the spam folder or [get in touch with the EC](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#how-to-get-in-touch).
EOF
    exit 0

  else
    echo "$ENDORSER_ID" >> "$endorsersAskedFile"

    sort -o "$endorsersAskedFile"{,}
    git add "$endorsersAskedFile"
    git commit -m "Update list of endorsers asked"
    if git push; then
      break
    else
      git fetch
      git reset --hard origin/main
    fi
  fi

done

if ! endorserEntry=$(grep "^$ENDORSER_ID," eligible.csv); then
  gh api \
    --method POST \
    "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
    -F "body=@-" << EOF
@$ENDORSER_LOGIN You cannot endorse because you are not in the list of eligible voters.
EOF
  exit 0
fi

endorserEmail=$(cut -d, -f3 <<< "$endorserEntry")
if [ -z "$endorserEmail" ]; then
  gh api \
    --method POST \
    "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
    -F "body=@-" << EOF
@$ENDORSER_LOGIN You cannot endorse until you [set a voter email](https://github.com/$REPOSITORY/blob/main/doc/email.md). Please try again once set.
EOF
  exit 0
fi
scripts/send-email.sh "$endorserEmail" "Nix SC Election 2025: Endorser conflicts of interest" <<EOF
Hello, @$ENDORSER_LOGIN!

You've indicated that you'd like to endorse a nominee for the Nix Steering Committee.

To complete the endorsement, reply to this email with a disclosure of _all_ your
potential sources of conflicts of interest.
This includes, but is not limited to, employers or otherwise payers of Nix work.

We will use this disclosure to check for conflicts of interest with
any candidates you endorse but also their other endorsers.
As such, you will only receive this request once for this election.

Note that this disclosure will not be published.
EOF

gh api \
  --method POST \
  "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
  -F "body=@-" << EOF
@$ENDORSER_LOGIN To complete your endorsement, please reply to the email asking for your conflicts of interest that has been sent to your [voter email address](https://github.com/$REPOSITORY/blob/main/doc/email.md). If it doesn't arrive within a couple minutes, check the spam folder or [get in touch with the EC](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#election-committee-ec).
EOF
