require('lazy').setup({
    -- Colorized brackets
    'HiPhish/rainbow-delimiters.nvim',
    -- Colors for css
    'brenoprata10/nvim-highlight-colors',
    -- TreeSitter
    'nvim-treesitter/nvim-treesitter',	
    -- Comment Shortcut
    'tpope/vim-commentary',
    -- Lualine
    'nvim-lualine/lualine.nvim',
    -- Icons
    'nvim-tree/nvim-web-devicons',
    -- Tabs in Neovim
    'romgrk/barbar.nvim',
    -- File Manager
    'nvim-tree/nvim-tree.lua',
    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
    -- Surround words with brackets/quotes 
    { 'kylechui/nvim-surround', version = '*', event = 'VeryLazy', 
    config = function() require('nvim-surround').setup() end },
    -- Auto Pairing
    {'windwp/nvim-autopairs', event = 'InsertEnter'},
    -- Auto Completion
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    -- ColorSchemes
    'folke/tokyonight.nvim',
    'catppuccin/nvim',	
    'rebelot/kanagawa.nvim',
    'sainnhe/gruvbox-material',
    'marko-cerovac/material.nvim',
    'cocopon/iceberg.vim',
    'sainnhe/everforest',
    'akinsho/horizon.nvim',
    'sainnhe/sonokai',
})
