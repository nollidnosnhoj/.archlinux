if [ -z $STOW_PATHS ]; then
    echo "STOW_PATHS variable is not defined. Aborting stowing..."
    return
fi

for folder in $(echo $STOW_PATHS | sed "s/,/ /g"); do
    source ./utils/stow.sh $folder
done