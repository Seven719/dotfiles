{ config, pkgs, ... }:

{
    enable = true;

    enableDefault = false;

    general = {
        interval = 1;
    };

    modules = {
        "battery 0" = {
            position = 1;
            settings = {
                format = "IN %percentage";
                path = "/sys/class/power_supply/BAT0/uevent";
                last_full_capacity = true;
            };
        };

        "battery 1" = {
            position = 2;
            settings = {
                format = "OUT %percentage";
                path = "/sys/class/power_supply/BAT1/uevent";
                last_full_capacity = true;
            };
        };

        "memory" = {
            position = 3;
            settings = {
                format = "%used/ %total";
            };
        };

        "tztime local" = {
            position = 4;
            settings = {
                format = "%A, %B %d - %H:%M";
            };
        };
    };
}
