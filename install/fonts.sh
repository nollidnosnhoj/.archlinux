#!/usr/bin/env bash

PACKAGES=(
    ttf-jetbrains-mono-nerd
)

paru -S --needed --noconfirm "${PACKAGES[@]}"