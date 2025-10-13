if [ "$IS_WSL" == "1" ]; then
    echo "Printer setup is not intended to be run in WSL."
    return 0
fi

sudo pacman -S --noconfirm cups cups-pdf cups-filters system-config-printer
sudo systemctl enable --now cups.service