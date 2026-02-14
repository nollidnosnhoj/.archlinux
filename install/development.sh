PACKAGES=(
    bun
    code
    docker
    docker-compose
    fnm
    gcc
    git
    github-cli
    go
    lazydocker
    lazygit
    lua-language-server
    luarocks
    make
    markdown-oxide-git
    neovim-git
    opencode-bin
    tree-sitter-cli
    zed
)

paru -S --needed --noconfirm "${PACKAGES[@]}"

# Installing language servers
go install golang.org/x/tools/gopls@latest
bun add -g typescript typescript-language-server

# enabling docker service
sudo systemctl enable --now docker.service
