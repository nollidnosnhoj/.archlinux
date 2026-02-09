#!/usr/bin/env bash

set -e

if [ "$(pwd -P)" != "$HOME/.archlinux" ]; then
    echo 'This script should be installed from .archlinux folder'
    exit 1
fi

git submodule update --init --recursive

chmod +x ./install/*.sh
for f in ./install/*.sh; do
    source "$f"
done

chmod +x ./bin/*

dotfiles