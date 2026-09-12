#!/usr/bin/env bash

echo "当前版本: $(fzf --version | awk '{print $1}')"
echo "当前路径: $(command -v fzf)"
echo "最新版本: $(curl -s https://api.github.com/repos/junegunn/fzf/releases/latest | grep -Po '"tag_name": "v\K[^"]+')"
