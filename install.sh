#!/usr/bin/env bash

set -e

IS_WSL=$(grep -qi microsoft /proc/version && echo "1" || echo "0")
STOW_PATHS="fastfetch,mise,zsh"

chmod +x ./install/*.sh
for f in ./install/*.sh; do 
    echo "Running $f"
    source "$f"
done
