# Use dark mode for QT apps too (like kdenlive)
sudo pacman -S --noconfirm kvantum-qt5

# Prefer dark mode everything
sudo pacman -S --noconfirm gnome-themes-extra
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

PACKAGES=(
    bibata-cursor-theme-bin
    papirus-icon-theme-git
)

yay -S --needed --noconfirm "${PACKAGES[@]}"

gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
gsettings set org.gnome.desktop.interface cursor-theme "Bibata-Modern-Ice"
gsettings set org.gnome.desktop.interface cursor-size 24