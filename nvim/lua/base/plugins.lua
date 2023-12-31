require('lazy').setup({
    -- TreeSitter
    'nvim-treesitter/nvim-treesitter',	
    -- Comment Shortcut
    'tpope/vim-commentary',
    -- Auto Pairing
    { 'windwp/nvim-autopairs', event = 'InsertEnter' },
    -- -- Snippets
    { "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" } },
    -- File Manager
    { 'nvim-tree/nvim-tree.lua', dependencies = { "nvim-tree/nvim-web-devicons" } },
    -- Auto Completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'neovim/nvim-lspconfig',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    -- -- ColorSchemes
    'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    'sainnhe/gruvbox-material',
    'cocopon/iceberg.vim',
    'sainnhe/everforest',
    'akinsho/horizon.nvim',
    'rose-pine/neovim',
})
