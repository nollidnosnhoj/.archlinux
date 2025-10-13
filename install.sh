#!/usr/bin/env bash

set -e

IS_WSL=$(grep -qi microsoft /proc/version && echo "1" || echo "0")

if [ "$IS_WSL" == "1" ]; then
    STOW_PATHS="fastfetch,mise,zsh"
else
    STOW_PATHS="fastfetch,mise,niri,zsh"
fi

chmod +x ./install/*.sh
for f in ./install/*.sh; do 
    echo "Running $f"
    source "$f"
done
