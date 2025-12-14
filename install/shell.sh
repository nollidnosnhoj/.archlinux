PACKAGES=(
    fish
    starship
    keychain
)

yay -S --needed --noconfirm "${PACKAGES[@]}"

if [ "$SHELL" = "/usr/bin/fish" ]; then
    echo "fish is already the default shell"
else
    echo "Changing default shell to fish"
    chsh -s /usr/bin/fish
fi