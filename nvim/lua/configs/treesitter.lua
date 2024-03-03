require'nvim-treesitter.configs'.setup {
    ensure_installed = {'typescript', 'c', 'lua', 'rust', 'python'},

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}
