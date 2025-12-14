if [ "$IS_WSL" == "1" ]; then
    echo "Terminal Programs setup is not intended to be run in WSL."
    return 0
fi

PACKAGES=(
    wl-clipboard
    foot
)

yay -S --needed --noconfirm "${PACKAGES[@]}"