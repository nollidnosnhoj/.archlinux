# Make dotfiles script executable
chmod +x ./dotfiles.sh

# Update dotfiles
DOTFILES_PACKAGES="${1:-fish,git,mise,nvim,starship,zellij}"
./dotfiles.sh link "$DOTFILES_PACKAGES"
