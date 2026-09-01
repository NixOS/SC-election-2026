#!/usr/bin/env bash
set -euo pipefail

nomineeEmail=$1
nomineeHandle=$2

scripts/send-email.sh "$nomineeEmail" "Nix SC Election 2025: Next steps as a nominee" <<EOF
Hello, @$nomineeHandle!

Thank you for [your self-nomination] for the Nix Steering Committee!

To get on the ballot as a candidate, there are some additional requirements:
- Reply to this email with the filled-out candidate template below.
  If you become a candidate,
  this document will be published and linked on the ballot.
- Receive at least 3 [endorsements] by other eligible voters,
  such that among you and the endorsers, there are at least four people
  with no two sharing a [conflict of interest].

Please be aware of [the deadlines].

Once the Election Committee confirms the above, your pull requests will be merged.
Note that you can participate in the [candidate Q&A] already.

[your self-nomination]: https://github.com/$REPOSITORY/pull/$PR_NUMBER
[endorsements]: https://github.com/$REPOSITORY/blob/main/doc/endorse.md
[conflict of interest]: https://github.com/$REPOSITORY/blob/main/doc/conflict-of-interest.md
[the deadlines]: https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#timeline
[candidate Q&A]: https://github.com/NixOS/SC-election-2025/blob/main/doc/qna.md

---

$(<doc/candidate-template.md)
EOF

gh api \
  --method POST \
  "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
  -F "body=@-" << EOF
Thank you for the nomination!

An email with next steps has been sent to your voter email address in \`voters.csv\`. If it doesn't arrive within a couple minutes, check the spam folder or [get in touch with the EC](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#election-committee-ec).

To be confirmed as a candidate, you need to receive [endorsements](https://github.com/$REPOSITORY/blob/main/doc/endorse.md) from at least 3 other eligible voters before [the deadline](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#timeline), such that among you and the endorsers, there are at least four people with no two sharing a [conflict of interest](https://github.com/$REPOSITORY/blob/main/doc/conflict-of-interest.md).

---

**To endorse this candidate, leave a comment containing the string \`!endorse\`**. This PR will be merged if there are enough endorsements to satisfy the conflict of interest requirement, so if it's still open, the nominee might still need more endorsements.
EOF

