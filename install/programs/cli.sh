PACKAGES=(
    bitwarden-cli
    fastfetch
    btop
    fd
    eza
    fzf
    ripgrep
    zoxide
    bat
    man
    tldr
    less
    whois
    plocate
)

yay -S --needed --noconfirm "${PACKAGES[@]}"