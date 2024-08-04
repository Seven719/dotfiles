{ config, pkgs, ... }:

{
    home.username = "iulian";
    home.homeDirectory = "/home/iulian";

    nixpkgs.config.allowUnfree = true;

    programs = {
        neovim = (import ./neovim.nix { inherit config pkgs; });
        bash = (import ./bash.nix { inherit config pkgs; });
        starship = (import ./starship.nix { inherit config pkgs; });
        btop = (import ./btop.nix { inherit config pkgs; });
        git = (import ./git.nix { inherit config pkgs; });
    };

    services.syncthing = {
        enable = true;
    };

    home.stateVersion = "24.05";

    fonts.fontconfig.enable = true;
    home.packages = with pkgs; [
        (nerdfonts.override {
            fonts = [ "JetBrainsMono" ];
        })
        starship
    ];

    gtk = {
        enable = true;
        theme = {
            name = "Everforest-Dark-BL-LB";
            package = pkgs.everforest-gtk-theme;
        };
        iconTheme = {
            name = "Everforest-Dark";
            package = pkgs.everforest-gtk-theme;
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
}
