#!/usr/bin/env bash

set -e

# check if the current directory is in $HOME/.kopa
if [ "$(pwd -P)" != "$HOME/.kopa" ]; then
    echo 'This script should be installed from .kopa folder'
    exit 1
fi

# Make all installation scripts executable
chmod +x ./install/*.sh

# Execute each installation scripts
for f in ./install/*.sh; do
    source "$f"
done

# get git submodules, including the nvim configuration
git submodule update --init --recursive
