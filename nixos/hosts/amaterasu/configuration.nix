{ config, pkgs, inputs, ... }:

{
    imports =
    [
        ./hardware-configuration.nix
        inputs.home-manager.nixosModules.default
    ];

    boot.loader.grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
        efiSupport = true;
    };

    networking.hostName = "amaterasu";

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    networking.networkmanager.enable = true;

    time.timeZone = "Europe/London";

    # Select internationalisation properties.
    i18n.defaultLocale = "en_GB.UTF-8";

    i18n.extraLocaleSettings = {
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

    environment.variables = {
        MOZ_ENABLE_WAYLAND = "1";
        LC_ALL = "en_GB.UTF-8";
    };

    # Enable CUPS to print documents.
    services.printing.enable = true;

    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };

    users.users.iulian = {
        isNormalUser = true;
        description = "iulian";
        extraGroups = [ "networkmanager" "libvirtd" "wheel" ];
            packages = with pkgs; [
        ];
        openssh.authorizedKeys.keys = [
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGpACQMbFkNKNQIqN+Mnkx1uIlguowd+98GeKIuehKal ilie.andronie@gmail.com"
        ];
    };

    security = {
        doas.enable = true;
        sudo.enable = false;
    };

    home-manager = {
        extraSpecialArgs = { inherit inputs; };
        users = {
            "iulian" = import ./home.nix;
        };
    };

    programs.firefox.enable = true;

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        wget
        neovim
        git
        btop
        fastfetch
        ripgrep
        dconf
        tmux
        noto-fonts
        mpd
        mpc-cli
        ncmpcpp
        yt-dlp
        gcc
        vlc
        obsidian
        unzip
        zip
        pavucontrol
        obsidian
        virt-manager
        libvirt
        greetd.tuigreet
        i3status
        wmenu
        dunst
        libnotify
        wl-clipboard
        autotiling
        xdg-desktop-portal-wlr
        xdg-desktop-portal
        #SCREENSHOTS
        swappy
        slurp
        grim
    ];

    xdg.portal = {
        enable = true;
        wlr.enable = true;
        extraPortals = with pkgs; [
            xdg-desktop-portal-gtk
            xdg-desktop-portal-wlr
        ];
    };

    services.dbus.enable = true;

    programs.sway = {
        enable = true;
        xwayland.enable = true;
        wrapperFeatures.gtk = true;
    };

    hardware = {
        graphics.enable = true;
    };

    services.greetd = {
        enable = true;
        settings = {
            default_session = {
                command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --greeting 'Amaterasu Log In' --cmd sway";
                user = "iulian";
            };
        };
    };

    services.cron = {
        enable = true;
        systemCronJobs = [
            "40 20 * * * /run/current-system/sw/bin/shutdown -h now"
        ];
    };

    services.mpd = {
        enable = true;
        musicDirectory = "/home/iulian/media/music";
        extraConfig = ''
            audio_output {
                type "pipewire"
                name "My PipeWire Output"
            }
        '';

        user = "iulian";
        network.listenAddress = "any";
        startWhenNeeded = true;
    };

    services.blueman.enable = true;
    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
        settings.General = {
            Enable = "Source,Sink,Media,Socket";
        };
    };

    systemd.services.mpd.environment = {
        XDG_RUNTIME_DIR = "/run/user/1000";
    };

    services.openssh.enable = true;

    virtualisation.libvirtd.enable = true;
    programs.virt-manager.enable = true;

    system.stateVersion = "24.05";
}
