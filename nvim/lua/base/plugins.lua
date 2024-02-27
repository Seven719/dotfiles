local plugins = {
    -- Focus
    "folke/twilight.nvim",
    "folke/zen-mode.nvim",
    -- TreeSitter
    'nvim-treesitter/nvim-treesitter',	
    -- Auto Pairing
    'windwp/nvim-autopairs',
    -- Comment Shortcut
    'tpope/vim-commentary',
    -- Rust Auto Formating
    {'rust-lang/rust.vim', ft = "rust", 
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

local opts = {
  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
        "editorconfig",
        "health",
        "man",
        "matchparen",
        "nvim",
        "shada",
        "spellfile",
      },
    },
  },
}

require('lazy').setup(plugins, opts)
