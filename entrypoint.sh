#!/bin/bash

echo "==================="

get config --global user.name "${GITHUB_ACTOR}"
get config --global user.name "${INPUT_EMAIL}"
get config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add-A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "==================="