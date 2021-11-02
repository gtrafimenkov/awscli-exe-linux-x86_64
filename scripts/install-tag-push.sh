#!/bin/bash -e
#
# Install a new version, commit, tag, push

VERSION=${1:?Version is required, e.g. 2.3.1}

SD=$(dirname $0)

$SD/install.sh $VERSION
$SD/cleanup.sh $VERSION

git add $SD/..

git commit -m "aws cli v$VERSION"
git tag v$VERSION

git push origin main v$VERSION
