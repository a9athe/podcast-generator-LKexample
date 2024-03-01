#!/bin/bash

echo "======================"

git config --global user.name "${GITHUB_ACTOR}" #who is running this action
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace # allows to run git operation

python3 /usr/bin/feed.py

git add -A && commit -m "Update Feed"
git push --set-upstream origin main #send thing back to the server

echo "======================"