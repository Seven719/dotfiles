{ config, pkgs, inputs, meta, ... }:

{
    imports =
    [
        ./hosts/amaterasu/hardware-configuration.nix
        inputs.home-manager.nixosModules.default
        ./services/root/pipewire.nix
        ./services/root/dbus.nix
        ./services/root/greetd.nix
        ./services/root/openssh.nix
        ./services/root/printing.nix
        ./services/root/bluetooth.nix

        ./modules/user.nix
    ];

    boot.loader.grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
        efiSupport = true;
    };

    networking = {
        hostName = meta.hostname;

        networkmanager.enable = true;
    };

    time.timeZone = "Europe/London";

    i18n = {
        defaultLocale = "en_GB.UTF-8";

        extraLocaleSettings = {
            LC_ALL = "en_GB.UTF-8";
            LC_ADDRESS = "en_GB.UTF-8";
            LC_IDENTIFICATION = "en_GB.UTF-8";
            LC_MEASUREMENT = "en_GB.UTF-8";
            LC_MONETARY = "en_GB.UTF-8";
            LC_NAME = "en_GB.UTF-8";
            LC_NUMERIC = "en_GB.UTF-8";
            LC_PAPER = "en_GB.UTF-8";
            LC_TELEPHONE = "en_GB.UTF-8";
            LC_TIME = "en_GB.UTF-8";
            LANGUAGE = "en_GB:en";
        };
    };

    users.users.${config.user.name} = {
        isNormalUser = true;
        description = "${config.user.name} user";
        extraGroups = [ "networkmanager" "libvirtd" "wheel" ];
    };

    security = {
        doas.enable = true;
        sudo.enable = false;
    };

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    home-manager = {
        extraSpecialArgs = { inherit inputs; };
        users = {
            "${config.user.name}" = import ./home.nix;
        };
    };

    nixpkgs.config.allowUnfree = true;

    environment.variables = {
        MOZ_ENABLE_WAYLAND = "1";
        LC_ALL = "en_GB.UTF-8";
    };

    environment.systemPackages = with pkgs; [
        gcc
        noto-fonts
        virt-manager
        libvirt
        greetd.tuigreet
        xdg-desktop-portal-wlr
        xdg-desktop-portal
        dconf
        neovim
        wget
        git
        unzip
        zip
        wl-clipboard
        gnumake
    ];

    xdg.portal = {
        enable = true;
        wlr.enable = true;
        configPackages = with pkgs; [
            xdg-desktop-portal-gtk
            xdg-desktop-portal-wlr
        ];
    };

    hardware = {
        graphics.enable = true;
    };

    virtualisation = {
        libvirtd.enable = true;
        waydroid.enable = true;
    };

    programs = {
        virt-manager.enable = true;
    };

    system.stateVersion = "24.05";
}
