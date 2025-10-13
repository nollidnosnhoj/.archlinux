PACKAGES=(
    mise
    github-cli
    lazygit
    neovim-git
    luarocks
    tree-sitter-cli
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

if ! command -v paru &> /dev/null; then
    echo "mise is not installed. Install if afterwards using: paru -S mise"
else
    mise install
fi

if [ ! -d ~/.config/nvim ]; then
    echo "Retrieving my neovim configuration..."
    git clone https://github.com/nollidnosnhoj/kickstart.nvim ~/.config/nvim
fi