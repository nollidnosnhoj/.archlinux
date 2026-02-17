CLI_PACKAGES=(
    eza
    fd
    ffmpeg
    fish
    fzf
    imagemagick
    ripgrep
    starship
    unzip
    wl-clipboard
    yazi
    zellij
    zoxide
)

brew install "${CLI_PACKAGES[@]}"

if [ "$SHELL" != "/bin/fish" ]; then
    echo "fish is not the current shell. Change it using 'chsh -s /bin/fish'"
fi
