#!/bin/sh

while true; do
    total=$(free -m | awk '/^Mem:/ {print $2}')
    used=$(free -m | awk '/^Mem:/ {print $3}')
    ram="$used MiB/ $total Mib"

    datetime=$(date +'%A, %B %d - %H:%M')

    echo "$ram | $datetime"

    sleep 1
done
