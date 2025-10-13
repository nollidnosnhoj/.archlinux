PACKAGES=(
    zsh
    starship
    keychain
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

echo "Changing default shell to zsh"
chsh -s /bin/zsh