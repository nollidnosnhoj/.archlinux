if [ "$IS_WSL" == "1" ]; then
    echo "Desktop setup is not intended to be run in WSL."
    return 0
fi

PACKAGES=(
    niri
    noctalia-shell-git
    xorg-xwayland
    xwayland-satellite
    xdg-desktop-portal
    xdg-desktop-portal-gnome
    gnome-keyring
    nautilus
    sushi
    ddcutil
    cliphist
    matugen-git
    cava
    wlsunset
)

yay -S --needed --noconfirm "${PACKAGES[@]}"

systemctl --user add-wants niri.service xwayland-satellite.service

systemctl --user daemon-reload