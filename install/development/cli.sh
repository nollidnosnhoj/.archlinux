PACKAGES=(
    mise
    github-cli
    lazygit
    neovim-git
    luarocks
    tree-sitter-cli
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

if ! command -v mise &> /dev/null; then
    echo "mise is not installed. Install if afterwards using: paru -S mise"
else
    mise install
fi