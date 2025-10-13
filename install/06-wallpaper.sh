if [ "$IS_WSL" == "1" ]; then
    echo "Wallpaper setup is not intended to be run in WSL."
    return 0
fi

if [ -d $(pwd)/wallpapers ]; then
    echo "Moving wallpapers..."
    mkdir -p $HOME/Pictures/Wallpapers
    cp -R $(pwd)/wallpapers/* $HOME/Pictures/Wallpapers
fi