if ! command -v paru &> /dev/null; then
    echo "Installing paru..."
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd .. && rm -rf paru
    export PATH="$PATH:$HOME/.local/bin"
else
    echo "paru is already installed."
fi