#!/usr/bin/env bash

echo "当前版本: $(nvim --version | head -n 1)"
echo "最新版本: v$(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | grep -Po '"tag_name": "v\K[^"]+')"
