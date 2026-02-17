#!/usr/bin/env bash

set -euo pipefail

OS_NAME="$(uname -s)"

if [ "$OS_NAME" = "Darwin" ]; then
    bash "./install_mac.sh" "$@"
    exit 0
fi

if [ "$OS_NAME" = "Linux" ] && [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "${ID:-}" = "arch" ] || [[ "${ID_LIKE:-}" == *"arch"* ]]; then
        bash "./install_arch.sh" "$@"
        exit 0
    fi
fi

echo "Unsupported operating system. This installer currently supports Arch Linux and macOS only." >&2
exit 1
