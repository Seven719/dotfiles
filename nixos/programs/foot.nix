{ config, pkgs, ... }:
{
    enable = true;
    settings = {
        main = {
            term = "xterm-256color";
            font = "JetBrains Mono Nerd Font:size=18";
            dpi-aware = "no";
        };

        mouse = {
            hide-when-typing = "yes";
        };

        colors = {
            background = "191919";
            foreground = "fbf9ff";
        };
    };
}
