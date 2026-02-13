#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$HOME/.archlinux/dotfiles"
TARGET_DIR="$HOME"
BACKUP_SUFFIX=".bak.$(date +%Y%m%d%H%M%S)"

link_path() {
    local src="$1"
    local dest="$2"

    mkdir -p "$(dirname "$dest")"

    if [ -L "$dest" ]; then
        local current_target
        current_target="$(readlink "$dest")"
        if [ "$current_target" = "$src" ]; then
            return
        fi

        mv "$dest" "${dest}${BACKUP_SUFFIX}"
        echo "Backed up symlink: $dest -> ${dest}${BACKUP_SUFFIX}"
    elif [ -e "$dest" ]; then
        mv "$dest" "${dest}${BACKUP_SUFFIX}"
        echo "Backed up path: $dest -> ${dest}${BACKUP_SUFFIX}"
    fi

    ln -sfn "$src" "$dest"
    echo "Linked: $dest -> $src"
}

for package in "$DOTFILES_DIR"/*; do
    [ -d "$package" ] || continue

    while IFS= read -r -d '' source_path; do
        relative_path="${source_path#"$package"/}"
        target_path="$TARGET_DIR/$relative_path"

        link_path "$source_path" "$target_path"
    done < <(find "$package" -mindepth 1 \( -type f -o -type l \) -print0)
done
