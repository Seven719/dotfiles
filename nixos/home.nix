{ config, pkgs, ... }:

{
    home.username = "iulian";
    home.homeDirectory = "/home/iulian";

    nixpkgs.config.allowUnfree = true;

    programs = {
        neovim =    (import ./programs/neovim.nix { inherit config pkgs; });
        bash =      (import ./programs/bash.nix { inherit config pkgs; });
        starship =  (import ./programs/starship.nix { inherit config pkgs; });
        btop =      (import ./programs/btop.nix { inherit config pkgs; });
        git =       (import ./programs/git.nix { inherit config pkgs; });
        foot =      (import ./programs/foot.nix { inherit config pkgs; });
        yazi =      (import ./programs/yazi.nix { inherit config pkgs; });
        firefox =   (import ./programs/firefox.nix { inherit config pkgs; });
        obs-studio =(import ./programs/obs-studio.nix { inherit config pkgs; });
    };

    services = {
        syncthing = (import ./services/user/syncthing.nix { inherit config pkgs; });
        gammastep = (import ./services/user/gammastep.nix { inherit config pkgs; });
        mpd =       (import ./services/user/mpd.nix { inherit config pkgs; });
    };

    fonts.fontconfig.enable = true;
    home.packages = with pkgs; [
        (nerdfonts.override {
            fonts = [ "JetBrainsMono" ];
        })
        starship
        keepassxc
        foot
        yazi
        bat
        mpd
        fftw
        mpc-cli
        ncmpcpp
        ripgrep
        btop
        fastfetch
        tmux
        yt-dlp
        vlc
        pavucontrol
        obsidian
        i3status
        wmenu
        dunst
        libnotify
        wl-clipboard
        autotiling
        swappy
        slurp
        grim
        gimp
        inkscape
    ];

    gtk = {
        enable = true;
        theme = {
            name = "Everforest-Dark-BL-LB";
            package = pkgs.everforest-gtk-theme;
        };
        iconTheme = {
            name = "Adwaita";
            package = pkgs.adwaita-icon-theme;
        };
        cursorTheme = {
            name = "Adwaita";
        };
    };

    home.file = {
    };

    home.sessionVariables = {
        EDITOR = "nvim";
        VISUAL = "nvim";
        WEBKIT_DISABLE_DMABUF_RENDERER = "1";
        GOPATH = "$HOME/.go";
    };

    programs.home-manager.enable = true;

    home.stateVersion = "24.05";
}
