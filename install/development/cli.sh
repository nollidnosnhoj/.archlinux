PACKAGES=(
    mise
    github-cli
    lazygit
    neovim-git
    luarocks
    tree-sitter-cli
    opencode-bin
)

yay -S --needed --noconfirm "${PACKAGES[@]}"

if ! command -v mise &> /dev/null; then
    echo "mise is not installed. Install if afterwards using: yay -S mise"
else
    mise install
fi