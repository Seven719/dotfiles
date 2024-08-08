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
        pyright
        clang-tools
        nil
        rust-analyzer
        bash-language-server
        omnisharp-roslyn
        typescript-language-server
    ];
}
