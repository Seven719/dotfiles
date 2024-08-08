{ config, pkgs, ... }:

{
    enable = true;
    provider = "manual";
    latitude = 51.65;
    longitude = 0.42;
    temperature.day = 6500;
    settings = {
        general = {
            brightness-night = "0.6";
            gamma-night = "0.8";
        };
    };
}
