require('lazy').setup({
    -- TreeSitter
    'nvim-treesitter/nvim-treesitter',	
    -- Comment Shortcut
    'tpope/vim-commentary',
    -- Auto Pairing
    { 'windwp/nvim-autopairs', event = 'InsertEnter', },
    -- File Manager
    { 'nvim-tree/nvim-tree.lua', dependencies = { "nvim-tree/nvim-web-devicons" } },
    -- Auto Completion
    {'VonHeikemen/lsp-zero.nvim',
    dependencies = {
        -- Server Protocol
        'neovim/nvim-lspconfig',
        -- Completion Engine
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        -- Snippets
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets', 
        'saadparwaiz1/cmp_luasnip',
        -- Install LSPs
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    }},
    -- Rust AutoFormating
    {'rust-lang/rust.vim', ft = "rust", 
    init = function ()
       vim.g.rustfmt_autosave = 1 
    end
    },
    -- ColorSchemes
    'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    'sainnhe/gruvbox-material',
    'cocopon/iceberg.vim',
    'sainnhe/everforest',
    'akinsho/horizon.nvim',
    'rose-pine/neovim',
})
