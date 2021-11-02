#!/bin/bash -e
#
# Remove all versions except the given as the parameter

VERSION=${1:?Version is required, e.g. 2.3.1}

SD=$(dirname $0)

for f in $(ls $SD/../v2 | grep -v $VERSION | grep -v current); do
    echo removing $f
    rm -rf $SD/../$f
done
