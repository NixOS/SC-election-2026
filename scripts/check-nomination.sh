#!/usr/bin/env bash

set -x
set -euo pipefail
shopt -s nocasematch
shopt -s inherit_errexit

nomineeHandle=

getNominee() {
  readarray -t addedFiles < <(
    gh api "repos/$REPOSITORY/pulls/$PR_NUMBER/files" \
      --jq '.[] | select(.status == "added") .filename'
  )
  isNomination=
  for file in "${addedFiles[@]}"; do
    if [[ "$file" == candidates/* ]]; then
      isNomination=1
      break
    fi
  done

  if [[ -z "$isNomination" ]]; then
    echo "Not a nomination PR"
    exit 0
  fi

  if (( "${#addedFiles[@]}" > 1 )); then
    echo "Only one person can be nominated per PR"
    exit 1
  elif ! [[ "${addedFiles[0]}" =~ candidates/(.*).md ]]; then
    echo "Nominations must add the file <github handle>.md"
    exit 1
  fi
  nomineeHandle=${BASH_REMATCH[1]}
}

case "$EVENT" in
  pull_request_target)
    if ! nominatorEntry=$(grep "^$NOMINATOR_ID," eligible.csv); then
      echo "Only eligible voters can nominate"
      exit 0
    fi

    nominatorEmail=$(cut -d, -f3 <<< "$nominatorEntry")
    if [ -z "$nominatorEmail" ]; then
      echo "The nominator has not yet set their email"
      exit 1
    fi

    if [[ "$HAS_NOMINATION_LABEL" == true ]]; then
      echo "This PR is already marked as a nomination"
      exit 0
    fi

    getNominee

    if ! nomineeId=$(gh api "/users/$nomineeHandle" --jq .id); then
      echo "GitHub user @$nomineeHandle does not exist"
      exit 4
    elif [[ "$PR_TITLE" != *$nomineeHandle* ]]; then
      echo "The nominee $nomineeHandle is not mentioned in the PR title"
      exit 5
    fi

    if ! grep "^$nomineeId," eligible.csv; then
      echo "Only eligible voters can be nominated"
      exit 6
    fi

    if [[ "$NOMINATOR_ID" == "$nomineeId" ]]; then
      scripts/self-nomination.sh "$nominatorEmail" "$nomineeHandle"
    else
      ENDORSER_ID="$NOMINATOR_ID" ENDORSER_LOGIN="$NOMINATOR_LOGIN" scripts/endorse.sh
    fi

    gh api --method POST \
      "/repos/$REPOSITORY/issues/$PR_NUMBER/labels" \
      -f "labels[]=nomination"

    ;;
  issue_comment)
    if ! commenterEntry=$(grep "^$COMMENTER_ID," eligible.csv); then
      echo "Only eligible voters can comment"
      exit 0
    fi
    commenterEmail=$(cut -d, -f3 <<< "$commenterEntry")
    if [ -z "$commenterEmail" ]; then
      echo "The commenter has not yet set their email"
      exit 1
    fi

    if [[ "$COMMENT_IS_ACCEPTANCE" == true ]]; then
      getNominee
      if test "$nomineeHandle" = "$COMMENTER_LOGIN"; then
        scripts/self-nomination.sh "$commenterEmail" "$COMMENTER_LOGIN"
      else
        gh api \
          --method POST \
          "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
          -F "body=@-" <<< \
          "The commenter $COMMENTER_LOGIN is not $nomineeHandle; not a nomination acceptance"
      fi
    elif [[ "$COMMENT_IS_ENDORSEMENT" == true ]]; then
      ENDORSER_ID="$COMMENTER_ID" ENDORSER_LOGIN="$COMMENTER_LOGIN" scripts/endorse.sh
    fi
esac
