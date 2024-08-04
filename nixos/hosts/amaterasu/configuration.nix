# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
    imports =
    [
        ./hardware-configuration.nix
        inputs.home-manager.nixosModules.default
    ];

    # Bootloader.
    boot.loader.grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
        efiSupport = true;
    };

    networking.hostName = "amaterasu"; # Define your hostname.

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Enable networking
    networking.networkmanager.enable = true;

    # Set your time zone.
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

    # Configure keymap in X11
    services.xserver = {
        enable = true;

        desktopManager = {
            xterm.enable = false;
        };

        displayManager.lightdm = {
            enable = true;
        };

        windowManager.i3 = {
            enable = true;
            extraPackages = with pkgs; [
                dmenu
                i3status
            ];
        };

        xkb.layout = "us";
        xkb.variant = "";
    };

    environment.variables = {
        # NIXOS_OZONE_WL = "1";
        TERMINAL = "st";
        LC_ALL = "en_GB.UTF-8";
    };

    services.displayManager = {
        defaultSession = "none+i3";
    };

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };

    # Define a user account. Don't forget to set a password with ‘passwd’.
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

    # Install firefox.
    programs.firefox.enable = true;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    nixpkgs.overlays = [
        (final: prev: {
            st = prev.st.overrideAttrs (old: {
                src = /home/iulian/.config/st;
                postPatch = ''
                cp ${/home/iulian/.config/st/config.h} config.h
                '';
            });
        })
    ];

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        wget
        neovim
        git
        btop
        fastfetch
        dconf
        st
        tmux
        spice-vdagent
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
        flameshot
        xclip
        pavucontrol
        pcmanfm
        virt-manager
        libvirt
        # HYPRLAND
        # greetd.tuigreet
        # foot
        # swayrbar
        # bemenu
        # dunst
        # libnotify
        # wl-clipboard
        # thunar
    ];
    #
    # xdg.portal = {
    #     enable = true;
    #     extraPortals = [
    #         pkgs.xdg-desktop-portal-gtk
    #     ];
    # };
    #
    # programs.hyprland = {
    #     enable = true;
    #     xwayland.enable = true;
    # };
    #
    # hardware = {
    #     graphics.enable = true;
    #     nvidia.modesetting.enable = true;
    # };
    #
    # services.greetd = {
    #     enable = true;
    #     settings = {
    #         default_session = {
    #             command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --greeting 'Amaterasu Log In' --cmd Hyprland";
    #             user = "iulian";
    #         };
    #     };
    # };

    services.cron = {
        enable = true;
        systemCronJobs = [
            "40 20 * * * /run/current-system/sw/bin/shutdown -h now"
        ];
    };

    location.provider = "manual";
    location.latitude = 51.65;
    location.longitude = 0.42;
    services.redshift = {
        enable = true;
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

    # List services that you want to enable:
    services.spice-vdagentd.enable = true;

    # Enable the OpenSSH daemon.
    services.openssh.enable = true;

    virtualisation.libvirtd.enable = true;
    programs.virt-manager.enable = true;


    system.stateVersion = "24.05";
}
