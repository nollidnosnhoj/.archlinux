if [ "$IS_WSL" == "1" ]; then
    echo "Desktop setup is not intended to be run in WSL."
    return 0
fi

chmod +x ./desktop/*.sh
for f in ./desktop/*.sh; do source "$f"; done