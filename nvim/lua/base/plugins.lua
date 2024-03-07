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
    {'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                disable_background = true
            })
        end
    },
    -- LSP Configs
    {'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            -- Completion Engine
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
            -- LSPs Installation
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        }
    },
}

local opts = {}

require('lazy').setup(plugins, opts)
