#!/bin/bash -e
#
# https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

VERSION=${1:?Version is required, e.g. 2.3.1}

ARCHIVE_NAME=awscli-exe-linux-x86_64-${VERSION}.zip
DOWNLOAD_URL=https://awscli.amazonaws.com/$ARCHIVE_NAME

TMP=$(mktemp --tmpdir -d awscli-XXXXXX)
pushd $TMP

curl -LO $DOWNLOAD_URL
unzip $ARCHIVE_NAME
aws/install -i ~/.local/awscli -b ~/.local/awscli --update

popd
rm -rf $TMP
