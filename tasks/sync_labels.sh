#!/bin/bash

REPOS=$(gh repo list metaplex-foundation --json name | jq -r '.[].name')
echo $REPOS


while IFS= read -r line; do
    echo "... $line ..."
    github-label-sync "metaplex-foundation/$line"
done <<< "$REPOS"
