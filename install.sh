#!/usr/bin/env bash

set -e

echo "Get required submodules..."
git submodule update --init --recursive

IS_WSL=$(grep -qi microsoft /proc/version && echo "1" || echo "0")

if [ "$IS_WSL" == "1" ]; then
    STOW_PATHS="fastfetch,mise,neovim,starship,zsh"
else
    STOW_PATHS="fastfetch,mise,neovim,niri,starship,zsh"
fi

chmod +x ./install/**/*.sh
for f in ./install/*.sh; do 
    echo "Running $f"
    source "$f"
    echo "$f done"
    echo ""
done
