local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = cmp_nvim_lsp.default_capabilities()
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup({})
mason_lspconfig.setup({
    ensure_installed = {'clangd', 'lua_ls', 'rust_analyzer', 'pyright', 'tsserver'},
    automatic_installation = true,
})

lspconfig.clangd.setup{}
lspconfig.lua_ls.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}

for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

-- vim.lsp.handlers['textDocument/publishDiagnostics'] = function() end
