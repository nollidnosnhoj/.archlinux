#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$HOME/.archlinux/dotfiles"
TARGET_DIR="$HOME"

unlink_path() {
    local src="$1"
    local dest="$2"

    if [ ! -L "$dest" ]; then
        return
    fi

    local current_target
    current_target="$(readlink "$dest")"

    if [ "$current_target" != "$src" ]; then
        return
    fi

    rm "$dest"
    echo "Unlinked: $dest"
}

for package in "$DOTFILES_DIR"/*; do
    [ -d "$package" ] || continue

    while IFS= read -r -d '' source_path; do
        relative_path="${source_path#"$package"/}"
        target_path="$TARGET_DIR/$relative_path"

        unlink_path "$source_path" "$target_path"
    done < <(find "$package" -mindepth 1 \( -type f -o -type l \) -print0)
done
