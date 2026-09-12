#!/usr/bin/env bash
set -e

cd /tmp

LATEST=$(
    curl -fsSLI \
        -o /dev/null \
        -w '%{url_effective}' \
        https://github.com/junegunn/fzf/releases/latest
)

VERSION="${LATEST##*/}"
VERSION="${VERSION#v}"

curl -fLo "fzf-${VERSION}-linux_amd64.tar.gz" \
    "https://github.com/junegunn/fzf/releases/download/v${VERSION}/fzf-${VERSION}-linux_amd64.tar.gz"

tar -xzf "fzf-${VERSION}-linux_amd64.tar.gz"

install -m 0755 fzf "$HOME/.local/bin/fzf"

rm -f fzf "fzf-${VERSION}-linux_amd64.tar.gz"

hash -r

echo
echo "fzf 已升级到："
fzf --version
