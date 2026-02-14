PACKAGES=(
    base-devel
    curl
    git
    stow
    vim
    wget
)

sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"