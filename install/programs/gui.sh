if [ "$IS_WSL" == "1" ]; then
    echo "GUI Programs setup is not intended to be run in WSL."
    return 0
fi

PACKAGES=(
    gnome-calculator
    bitwarden
    firefox
    mpv
    imv
    evince
    vesktop-bin
)

paru -S --needed "${PACKAGES[@]}"