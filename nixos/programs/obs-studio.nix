{ config, pkgs, ... }:

{
    enable = true;

    plugins = with pkgs; [
        obs-studio-plugins.wlrobs
        obs-studio-plugins.obs-pipewire-audio-capture
    ];
}
