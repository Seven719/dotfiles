#! /bin/sh

# Battery Status
battery(){
    battery1=$(acpi -b | sed -n '1p' | grep -P -o '[0-9]+(?=%)')
    battery2=$(acpi -b | sed -n '2p' | grep -P -o '[0-9]+(?=%)')
    
    echo -e "$battery1% $battery2%"
}

# DATE and RAM in Status Bar
dte(){
    dte="$(date +'%A, %B %d - %H:%M')"
    echo -e "$dte"
}

mem(){
    mem=`free | awk '/Mem/ {printf "%d MiB/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
    echo -e "$mem"
}

while true;do
    xsetroot -name "$(battery) | $(mem) | $(dte)"
    sleep 10s
done &

# Restore Wallpaper
nitrogen --restore &
# Compositor For Transparency
picom &
# Flameshot
flameshot &
# Redshift
redshift &
# Monitor Setup
xrandr --output HDMI-2 --primary --mode 1920x1080 --rate 144 --output eDP-1 --off
# DWM
exec dwm
