{ config, pkgs, ... }:

let
    super = "Mod4";
    left = "h";
    down = "j";
    up = "k";
    right = "l";
    term = "foot";
    menu = "wmenu-run";
in

{
    enable = true;
    xwayland = true;
    wrapperFeatures.gtk = true;

    config = {
        output = {
            eDP-1 = {
                mode = "1920x1080@60Hz";
                pos = "0 0";
            };
            HDMI-A-2 = {
                mode = "1920x1080@120Hz";
                pos = "1920 0";
            };
        };
        input = {
            "type:mouse" = {
                accel_profile = "flat";
                pointer_accel = "0";
            };
        };

        defaultWorkspace = "workspace number 1";
        fonts = {
            names = [ "JetBrains Mono"];
            style = "Regular";
            size = 10.0;
        };

        bars = [{
            statusCommand = "i3status";
            trayOutput = "none";
        }];

        assigns = {
            "1" = [{ app_id = "firefox"; }];
            "4" = [{ class = "obsidian"; }];
        };

        window = {
            titlebar = false;
            border = 0;
        };

        floating.modifier = super;

        keybindings = {
            "XF86AudioRaiseVolume" = "exec --no-startup-id playerctl --player=spotify volume 0.1+";
            "XF86AudioLowerVolume" = "exec --no-startup-id playerctl --player=spotify volume 0.1-";
            "XF86AudioPrev" = "exec --no-startup-id playerctl --player=spotify previous";
            "XF86AudioNext" = "exec --no-startup-id playerctl --player=spotify next";
            "XF86AudioMute" = "exec --no-startup-id playerctl --player=spotify play-pause";
            "XF86AudioPlay" = "exec --no-startup-id playerctl --player=spotify play-pause";
            "XF86AudioStop" = "exec --no-startup-id playerctl --player=spotify stop";
            "Print" = "exec --no-startup-id grim -g \"$(slurp)\" - | swappy -f -";

            "${super}+w" = "kill";
            "${super}+space" = "exec ${menu}";
            "${super}+Mod1+r" = "reload";
            "${super}+Mod1+q" = "exec swaymsg exit";
            "${super}+Return" = "exec ${term}";

            "${super}+Shift+${left}" = "move left";
            "${super}+Shift+${down}" = "move down";
            "${super}+Shift+${up}" = "move up";
            "${super}+Shift+${right}" = "move right";
            "${super}+${left}" = "focus left";
            "${super}+${down}" = "focus down";
            "${super}+${up}" = "focus up";
            "${super}+${right}" = "focus right";

            "${super}+1" = "workspace number 1";
            "${super}+2" = "workspace number 2";
            "${super}+3" = "workspace number 3";
            "${super}+4" = "workspace number 4";
            "${super}+5" = "workspace number 5";
            "${super}+6" = "workspace number 6";
            "${super}+7" = "workspace number 7";
            "${super}+8" = "workspace number 8";
            "${super}+9" = "workspace number 9";
            "${super}+0" = "workspace number 10";
            "${super}+Shift+1" = "move container to workspace number 1";
            "${super}+Shift+2" = "move container to workspace number 2";
            "${super}+Shift+3" = "move container to workspace number 3";
            "${super}+Shift+4" = "move container to workspace number 4";
            "${super}+Shift+5" = "move container to workspace number 5";
            "${super}+Shift+6" = "move container to workspace number 6";
            "${super}+Shift+7" = "move container to workspace number 7";
            "${super}+Shift+8" = "move container to workspace number 8";
            "${super}+Shift+9" = "move container to workspace number 9";
            "${super}+Shift+0" = "move container to workspace number 10";

            "${super}+f" = "fullscreen";

            "${super}+s" = "floating toggle";
            "${super}+r" = "mode \"resize\"";
        };

        modes = {
            resize = {
                "${left}"  = "resize shrink width 10 px";
                "${down}"  = "resize grow height 10 px";
                "${up}"    = "resize shrink height 10 px";
                "${right}" = "resize grow width 10 px";

                "Escape" = "mode default";
                "Return" = "mode default";
            };
        };
    };
}
