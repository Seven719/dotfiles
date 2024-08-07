{ config, pkgs, ... }:

{
    enable = true;
    settings = {
        command_timeout = 1000;
        add_newline = false;

        format = "$directory\$git_branch\$git_state\$git_status\$line_break\$character";

        directory = {
            style = "blue";
        };

        character = {
            success_symbol = "[❯](purple)";
            error_symbol = "[❯](red)";
            vimcmd_symbol = "[❮](green)";
        };

        hostname = {
            disabled = true;
        };

        git_branch = {
            format = "[$branch]($style)";
            style = "bright-black";
        };

        git_status = {
            format = "[[(*$conflicted$untracked$modified$staged$renamed$deleted)](218) ($ahead_behind$stashed)]($style)";
            style = "cyan";
            conflicted = "​";
            untracked = "​";
            modified = "​";
            staged = "​";
            renamed = "​";
            deleted = "​";
            stashed = "≡";
        };
    };
}
