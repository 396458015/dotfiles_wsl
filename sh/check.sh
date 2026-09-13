#!/usr/bin/env bash

echo "========== Neovim =========="
echo "当前版本: $(nvim --version | head -n 1 | awk '{print $2}')"
echo "最新版本: v$(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | grep -Po '"tag_name": "v\K[^"]+')"

echo
echo "========== Yazi =========="
echo "当前版本: v$(yazi --version | grep -Pom1 '[0-9]+\.[0-9]+\.[0-9]+')"
echo "最新版本: $(curl -s https://api.github.com/repos/sxyazi/yazi/releases/latest | grep -Po '"tag_name": "\K[^"]+')"

echo
echo "========== fzf =========="
echo "当前版本: $(fzf --version | awk '{print $1}')"
echo "当前路径: $(command -v fzf)"
echo "最新版本: $(curl -s https://api.github.com/repos/junegunn/fzf/releases/latest | grep -Po '"tag_name": "v\K[^"]+')"

echo
echo "========== Lazygit =========="
current_version=$(lazygit --version | grep -Po '(?<=version=)[^,]+' | head -1)
echo "当前版本: v$current_version"
latest_version=$(curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest | grep -Po '"tag_name": "\K[^"]+')
echo "最新版本: $latest_version"
