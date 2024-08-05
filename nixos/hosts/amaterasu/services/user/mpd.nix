{ config, pkgs, ... }:

{
    enable = true;
    musicDirectory = "/home/iulian/media/music";
    extraConfig = ''
        audio_output {
            type "pipewire"
                name "My PipeWire Output"
        }
    '';

    network.listenAddress = "any";
    network.startWhenNeeded = true;
}
