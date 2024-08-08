{ config, ... }:

{
    services.openssh.enable = true;

    users.users."${config.user.name}".openssh.authorizedKeys.keys = [
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGpACQMbFkNKNQIqN+Mnkx1uIlguowd+98GeKIuehKal ilie.andronie@gmail.com"
    ];
}
