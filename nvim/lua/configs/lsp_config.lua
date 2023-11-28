local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp = require'lspconfig'

lsp.pyright.setup{capabilities=capabilities}
lsp.tsserver.setup{capabilities=capabilities}
lsp.rust_analyzer.setup{capabilities=capabilities}
lsp.cssls.setup{capabilities=capabilities}
lsp.html.setup{capabilities=capabilities}
lsp.lua_ls.setup{capabilities=capabilities}

vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
