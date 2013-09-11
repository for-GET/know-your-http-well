#!/usr/bin/env bash

mode="$1"

# cd master
# git fetch
# git checkout master
# cd -

./regenerate.sh

cd master
VERSION=`npm version $mode`
git add -a
git commit -m "$VERSION"
git push --follow-tags
npm publish
