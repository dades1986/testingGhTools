#!/bin/bash    
git checkout $1
echo "squashing this branch :" $1
git reset $(git merge-base master $(git branch --show-current))
git status
git add -A
git status
git commit -m $2
git status
git push -f
git status
