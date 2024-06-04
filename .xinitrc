#!/bin/bash

# Restore Wallpaper
nitrogen --restore &
# Compositor For Transparency
picom &
# Flameshot
flameshot &
# Redshift
redshift &
# Monitor
xrandr --output HDMI-2 --mode 1920x1080 --rate 120 --above eDP-1 &
# i3 window manager
exec i3
