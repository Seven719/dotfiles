return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },

    config = function()
        require("fidget").setup({})
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend("force",{},vim.lsp.protocol.make_client_capabilities(),cmp_lsp.default_capabilities())
        local lspconfig = require("lspconfig")
        local servers = { "html", "cssls", "clangd", "omnisharp", "bashls", "rust_analyzer", "pyright", "tsserver", "nil_ls" }

        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup {
                capabilities = capabilities,
            }
        end

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
