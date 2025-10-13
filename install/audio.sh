if [ "$IS_WSL" == "1" ]; then
    echo "Audio setup is not intended to be run in WSL."
    return 0
fi

PACKAGES=(
    pavucontrol
    pamixer
    gst-plugin-pipewire
    pipewire
    pipewire-alsa
    pipewire-audio
    pipewire-jack
    pipewire-pulse
    wireplumber
)

paru -S --needed --noconfirm "${PACKAGES[@]}"