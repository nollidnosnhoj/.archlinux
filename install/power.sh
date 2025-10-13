if [ "$IS_WSL" == "1" ]; then
    echo "Power management setup is not intended to be run in WSL."
    return 0
fi

paru -S --noconfirm --needed power-profiles-daemon

if ls /sys/class/power_supply/BAT* &>/dev/null; then
  # This computer runs on a battery
  powerprofilesctl set balanced || true
else
  # This computer runs on power outlet
  powerprofilesctl set performance || true
fi