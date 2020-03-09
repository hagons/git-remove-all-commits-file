#! /bin/bash
if [ "$1" = "--file" ]; then
  git filter-branch --force --index-filter "git rm --cached --ignore-unmatch $2" --prune-empty --tag-name-filter cat -- --all
elif [ "$1" = "--folder" ]; then
  git filter-branch --force --index-filter "git rm -r --cached --ignore-unmatch $2" --prune-empty --tag-name-filter cat -- --all
else
  echo "try again"
fi