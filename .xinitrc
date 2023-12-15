#! /bin/sh

# Restore Wallpaper
nitrogen --restore &

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
    xsetroot -name "$(mem) | $(dte)"
    sleep 10s
done &

# Flameshot
flameshot &
# DWM
exec dwm
