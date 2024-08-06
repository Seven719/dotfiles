{ pkgs, inputs, ... }:

{
    services.greetd = {
        enable = true;
        settings = {
            default_session = {
                command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --greeting 'Amaterasu Log In' --cmd sway";
                user = "iulian";
            };
        };
    };
}
