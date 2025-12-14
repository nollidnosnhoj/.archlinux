if [ "$IS_WSL" == "1" ]; then
    echo "Bluetooth setup is not intended to be run in WSL."
    return 0
fi

PACKAGES=(
    bluez
    bluez-utils
    blueman
)

yay -S --needed --noconfirm "${PACKAGES[@]}"

sudo systemctl enable --now bluetooth.service