PACKAGES=(
    archlinux-keyring
    curl
    wget
    unzip
    git
    base-devel
    openssh
)

sudo pacman -Syu --noconfirm --needed "${PACKAGES[@]}"

git config --global user.name "Dillon Johnson"
git config --global user.email "me@nollidnosnhoj.com"