# aws cli v2 installed

This repo contains AWS CLI v2 installed and ready to use on Linux x64.

## Usage

- `git clone --depth 1 https://github.com/gtrafimenkov/awscli-exe-linux-x86_64 ~/.local/awscli`
- `export PATH=$PATH:~/.local/awscli`
- `aws --version`

## Upgrade to the latest repo version

- `cd ~/.local/awscli && git pull --ff-only`

## Add new version to the repo

- check https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst
- `scripts/install-tag-push.sh VERSION`
