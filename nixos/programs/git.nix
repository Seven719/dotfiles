{ config, pkgs, ... }:

{
    enable = true;
    userName = "Iulian Nichifor";
    userEmail = "73722884+Seven719@users.noreply.github.com";
    extraConfig = {
        pull.rebase = false;
        init.defaultBranch = "main";
        color.ui = true;
    };
    aliases = {
        st = "status";
        df = "diff";
    };
}
