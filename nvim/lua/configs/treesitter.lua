require'nvim-treesitter.configs'.setup {
    ensure_installed = {'typescript', 'c', 'lua', 'rust', 'python'},
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = { enable = true },
}
