if [ "$IS_WSL" == "1" ]; then
    echo "Development editor setup is not intended to be run in WSL."
    return 0
fi

PACKAGES=(
    zed
    code
)

paru -S --needed --noconfirm "${PACKAGES[@]}"