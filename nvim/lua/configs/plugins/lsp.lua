return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },

    config = function()
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend("force",{},vim.lsp.protocol.make_client_capabilities(),cmp_lsp.default_capabilities())

        require("fidget").setup({})
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "html",
                "cssls",
                "clangd",
                "omnisharp",
                "bashls",
                "rust_analyzer",
                "pyright",
                "tsserver",
                "gopls",
            },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                end,
                ["gopls"] = function ()
                    local lspconfig = require("lspconfig")
                    lspconfig.gopls.setup({
                        filetypes = { "go", "gomod", "gowork", "gotmpl" },
                        settings = {
                            env = {
                                GOEXPERIMENT = "rangefunc",
                            },
                            formatting = {
                                gofumpt = true,
                            },
                        },
                    })
                end
            }
        })
    end
}
