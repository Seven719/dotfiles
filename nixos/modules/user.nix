{pkgs, lib, config, ... }: {
    options.user = with lib; {
        name = mkOption {
            type = types.str;
            description = "User Name";
        };
    };

    config = {
        user.name = "iulian";
    };
}
