#!/usr/bin/env bash
set -e

cd /tmp

wget -O nvim-linux-x86_64.tar.gz \
https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

sudo rm -rf /opt/nvim-linux-x86_64

sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

sudo ln -sfn /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim

rm -f nvim-linux-x86_64.tar.gz

hash -r

echo
echo "Neovim 已升级到："
nvim --version | head -n 1
