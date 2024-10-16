{ config, pkgs, ... }:

{
    imports = [
        ./modules/user.nix
    ];

    home.username = config.user.name;
    home.homeDirectory = "/home/${config.user.name}";

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
        i3status =  (import ./programs/i3status.nix { inherit config pkgs; });
        tmux =      (import ./programs/tmux.nix { inherit config pkgs; });
    };

    services = {
        syncthing = (import ./services/user/syncthing.nix { inherit config pkgs; });
        gammastep = (import ./services/user/gammastep.nix { inherit config pkgs; });
        dunst     = (import ./services/user/dunst.nix { inherit config pkgs; });
    };

    wayland.windowManager = {
        sway =      (import ./programs/sway.nix { inherit config pkgs; });
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
        fftw
        ripgrep
        btop
        fastfetch
        yt-dlp
        vlc
        pavucontrol
        obsidian
        wmenu
        libnotify
        autotiling
        swappy
        slurp
        grim
        gimp
        inkscape
        waydroid
        lazygit
        vscode
        teams-for-linux
        spotify
        playerctl
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
