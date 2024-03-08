local plugins = {
    -- LuaLine
    {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
    -- TreeSitter
    'nvim-treesitter/nvim-treesitter',
    -- Auto Pairing
    {'windwp/nvim-autopairs', event = 'InsertEnter'},
    -- Comment Shortcut
    'tpope/vim-commentary',
    -- Rust Auto Formating
    {'rust-lang/rust.vim', ft = 'rust',
        dependencies = {
            'mrcjkb/rustaceanvim',
        },
        init = function ()
           vim.g.rustfmt_autosave = 1
        end
    },
    -- ColorScheme
    'rose-pine/neovim',
    'folke/tokyonight.nvim',
    'LunarVim/horizon.nvim',
    'catppuccin/nvim',
    'neanias/everforest-nvim',
    'cocopon/iceberg.vim',
    'rebelot/kanagawa.nvim',
    'sainnhe/gruvbox-material',
    -- LSP
    {'neovim/nvim-lspconfig',
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
        }
    },
    -- Mason
    {'williamboman/mason.nvim', dependencies = { 'williamboman/mason-lspconfig.nvim',}},
    -- Completion
    {'hrsh7th/nvim-cmp',
        event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        }
    },
}

local opts = {}

require('lazy').setup(plugins, opts)
