PACKAGES=(
    zsh
    starship
    keychain
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

if [ "$SHELL" = "/bin/zsh" ]; then
    echo "zsh is already the default shell"
else
    echo "Changing default shell to zsh"
    chsh -s /bin/zsh
fi