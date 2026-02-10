#!/usr/bin/env bash

PACKAGES=(
    code
    gcc
    git
    github-cli
    lazygit
    luarocks
    make
    mise
    neovim-git
    opencode-bin
    tree-sitter-cli
    zed
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

if ! command -v mise &> /dev/null; then
    echo "mise is not installed. Install if afterwards using: paru -S mise"
else
    mise install
fi

git config --global user.name "Dillon Johnson"
git config --global user.email "me@nollidnosnhoj.com"
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub
git config --global commit.gpgsign true

# Installing language servers
go install golang.org/x/tools/gopls@latest

bun add -g typescript typescript-language-server