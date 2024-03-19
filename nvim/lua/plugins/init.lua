return {
    {
        "stevearc/conform.nvim",
        config = function()
            require "configs.conform"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
                "clangd",
                "omnisharp",
                "bash-language-server",
                "rust-analyzer",
                "pyright",
                "black",
                "typescript-language-server",
                "gopls",
            },
        },
    },
  --
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "typescript",
                "c",
                "c_sharp",
                "bash",
                "lua",
                "rust",
                "python",
                "go",
            },
        },
    },
}
