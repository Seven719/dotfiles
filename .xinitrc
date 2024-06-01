#!/bin/bash

# Restore Wallpaper
nitrogen --restore &
# Compositor For Transparency
picom &
# Flameshot
flameshot &
# Redshift
redshift &
# nice tiling for i3
autotiling &
# i3 window manager
exec i3
