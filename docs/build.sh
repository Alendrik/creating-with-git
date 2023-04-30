#!/bin/bash

# Make docs folder if it doesn't exist
if [ ! -d docs ]; then
    mkdir docs
fi

# Rebuild the site
npx honkit build

# Copy the `_book` folder contents to docs
cp -Rf _book/* docs/

## Create a new commit for teh rebuild (every time), with a new date
git add docs/
git commit -m "Rebuild: ($date)"

# push commit 
git push
