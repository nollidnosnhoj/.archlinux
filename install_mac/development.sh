PACKAGES=(
    gcc
    git
    gh
    lazygit
    lua-language-server
    luarocks
    markdown-oxide
    mise
    neovim
    anomalyco/tap/opencode
    tree-sitter-cli
    usage # required by mise
)

brew install "${PACKAGES[@]}"

eval "$(mise activate bash)"    # Use mise install
mise install

# Installing language servers
go install golang.org/x/tools/gopls@latest
bun add -g typescript typescript-language-server
