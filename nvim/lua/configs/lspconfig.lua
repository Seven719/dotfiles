local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "lua_ls", "rust_analyzer", "pyright", "tsserver", "gopls"}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    }
end

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    'vim'
                }
            }
        }
    }
}
