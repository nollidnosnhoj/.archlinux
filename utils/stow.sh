#!/usr/bin/env bash

FOLDER=$1

if ! command -v stow $> /dev/null; then
    echo "Installing stow..."
    sudo pacman -S --needed --noconfirm stow
fi

DOTFILES_DIR=$(pwd)/dotfiles

if [ ! -d $DOTFILES_DIR ]; then
    echo "Unable to locate dotfiles."
    exit 1
fi

if [ -z $FOLDER ]; then
    echo "No folder specified. Aborting stowing..."
    exit 1
fi

echo "stow -d $DOTFILES_DIR -t $HOME $FOLDER"
stow -d $DOTFILES_DIR -t $HOME -D $FOLDER
stow -d $DOTFILES_DIR -t $HOME $FOLDER