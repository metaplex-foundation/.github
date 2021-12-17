#!/bin/bash

if [ -z $GITHUB_ACCESS_TOKEN ]
then
    echo 'Missing $GITHUB_ACCESS_TOKEN'
    exit 1
fi


REPOS=$(gh repo list metaplex-foundation --json name | jq -r '.[].name')
echo $REPOS

while IFS= read -r line; do
    echo "... $line ..."
    echo github-label-sync "metaplex-foundation/$line"
    github-label-sync "metaplex-foundation/$line"
done <<< "$REPOS"
