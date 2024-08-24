{ config, pkgs, ... }:

{
    enable = true;
    historyControl = [ "ignoredups" ];
    historySize = 5000;
    shellAliases = {
        sudo = "doas";
        ns = "tmux new-session -s";
        ls = "ls --color=auto";
        la = "ls -a";
        lg = "lazygit";
        grep = "grep --color=auto";
        music = "ncmpcpp";
        download-audio = "yt-dlp --extract-audio --add-metadata --no-playlist --embed-thumbnail";
        download-video = "yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'";
        img = "gpicview";
        ff = "fastfetch";
    };

    bashrcExtra = ''
        # Enable emacs key bindings
        set -o emacs

        # Use Ctrl+P for history search backward
        bind '"\C-p": history-search-backward'
        # Use Ctrl+N for history search forward
        bind '"\C-n": history-search-forward'
        # Use Alt+W to delete the word before the cursor (kill-region)
        bind '"\ew": kill-region'
        # Spell Check
        shopt -s cdspell
        # Case insensitive completion
        bind 'set completion-ignore-case on'
        # Autocomplete more like zsh
        bind 'TAB:menu-complete'
        bind '"\e[Z":menu-complete-backward'
        bind 'set show-all-if-ambiguous on'
        # Rebind Ctrl + W to delete only last word
        stty werase undef
        bind '\C-w:unix-filename-rubout'
    '';
}
