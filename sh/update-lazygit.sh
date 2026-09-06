#!/usr/bin/env bash
set -e

cd /tmp

LAZYGIT_VERSION=$(curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest \
    | grep -Po '"tag_name": "v\K[^"]+')

wget -O lazygit.tar.gz \
"https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

tar -xzf lazygit.tar.gz lazygit

sudo install lazygit /usr/local/bin/lazygit

rm -f lazygit.tar.gz
rm -f lazygit

hash -r

echo
echo "Lazygit 已升级到："
lazygit --version
