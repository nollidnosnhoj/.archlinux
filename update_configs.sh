#!/usr/bin/env bash

set -e

echo "Get required submodules..."
git submodule update --init --recursive

IS_WSL=$(grep -qi microsoft /proc/version && echo "1" || echo "0")

if [ "$IS_WSL" == "1" ]; then
    source ./utils/_stowpaths_wsl.sh
else
    source ./utils/_stowpaths.sh
fi

# check if STOW_PATHS is set
if [ -z "$STOW_PATHS" ]; then
    echo "STOW_PATHS is not set. Exiting."
    exit 1
fi

echo "STOW_PATHS: $STOW_PATHS"

for folder in $(echo $STOW_PATHS | sed "s/,/ /g"); do
    source ./utils/stow.sh $folder
done
