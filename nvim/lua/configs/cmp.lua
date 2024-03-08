local cmp = require('cmp')
local snippets = require('luasnip.loaders.from_vscode')

snippets.lazy_load()

cmp.setup({
    sources = {
        { name = 'nvim_lsp'},
        { name = 'luasnip'},   
        { name = 'path' },
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(), 
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({select = false}), 
        ['<C-f>'] = cmp.mapping.scroll_docs(-4),
        ['<C-b>'] = cmp.mapping.scroll_docs(4),
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
