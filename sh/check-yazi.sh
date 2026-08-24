#!/usr/bin/env bash

echo "当前版本: v$(yazi --version | grep -Pom1 '[0-9]+\.[0-9]+\.[0-9]+')"
echo "最新版本: $(curl -s https://api.github.com/repos/sxyazi/yazi/releases/latest | grep -Po '"tag_name": "\K[^"]+')"
