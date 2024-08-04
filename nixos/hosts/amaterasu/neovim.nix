{ config, pkgs, ... }:

{
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
        lua-language-server
        vscode-langservers-extracted
        vscode-extensions.ms-python.python
        clang-tools
        nil
        cargo
        rust-analyzer
        bash-language-server
        omnisharp-roslyn
        typescript-language-server
    ];
}
