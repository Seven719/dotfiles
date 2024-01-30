local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = require('lsp-zero').cmp_format()
local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')
local util = require("lspconfig/util") 

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {"clangd", "lua_ls", "rust_analyzer", "pyright", "tsserver"},
    handlers = {
        lsp_zero.default_setup,
    },
})

lspconfig.rust_analyzer.setup({
    filetypes = {"rust"},
    root_dir = util.root_pattern("Cargo.toml"),
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            }
        }
    }
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = {
        { name = 'nvim_lsp'},
        { name = 'luasnip'},   
        { name = 'path' },
    },
    mapping = cmp.mapping.preset.insert({ 
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({select = false}), 
        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
    }),
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' },
        { name = 'cmdline' },
    })
})
