if [ "$IS_WSL" == "1" ]; then
    echo "Font setup is not intended to be run in WSL."
    return 0
fi

PACKAGES=(
    ttf-dejavu
    ttf-dejavu-nerd
    ttf-hack-nerd
    otf-comicshanns-nerd
    noto-fonts-cjk
    noto-fonts-emoji
    ttf-font-awesome
)

yay -S --needed --noconfirm "${PACKAGES[@]}"