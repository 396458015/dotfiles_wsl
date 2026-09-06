#!/usr/bin/env bash

# 获取当前安装的 lazygit 版本
current_version=$(lazygit --version | grep -Po '(?<=version=)[^,]+' | head -1)
echo "当前版本: v$current_version"

# 从 GitHub 获取最新发布版本
latest_version=$(curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest | grep -Po '"tag_name": "\K[^"]+')
echo "最新版本: $latest_version"
