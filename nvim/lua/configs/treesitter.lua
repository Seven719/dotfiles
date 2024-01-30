require'nvim-treesitter.configs'.setup {
    ensure_installed = {'javascript', 'typescript', 'c', 'lua', 'rust'},
    
    highlight = { 
        enable = true, 
        use_languagetree = true,
    },

    indent = { enable = true },
}
