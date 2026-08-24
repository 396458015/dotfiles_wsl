#!/usr/bin/env bash
set -e

sudo apt update

sudo apt install --only-upgrade yazi -y

echo
echo "Yazi 当前版本："
yazi --version
