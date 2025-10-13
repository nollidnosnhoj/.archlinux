if [ "$IS_WSL" == "1" ]; then
    echo "Installing CachyOS repositories is not intended to be run in WSL."
    return 0
fi

if grep -q "\[cachyos\]" /etc/pacman.conf; then
    echo "CachyOS repositories is already enabled."
else
    echo "Enabling CachyOS repositories..."
    curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
    tar xvf cachyos-repo.tar.xz && cd cachyos-repo
    sudo ./cachyos-repo.sh
    cd ..
    rm -rf ./cachyos-repo
    rm cachyos-repo.tar.xz
fi