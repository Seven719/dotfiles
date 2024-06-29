return {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    version = "v2.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = { history = true, updateevents = "TextChanged,TextChangedI" },
    config = function(_, opts)
        local luasnip = require "luasnip"
        luasnip.filetype_extend("javascriptreact", { "html" })
        luasnip.filetype_extend("typescriptreact", { "html" })
        luasnip.config.set_config(opts)

        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.vscode_snippets_path or "" }

        vim.api.nvim_create_autocmd("InsertLeave", {
            callback = function()
                if
                    luasnip.session.current_nodes[vim.api.nvim_get_current_buf()]
                    and not luasnip.session.jump_active
                then
                    luasnip.unlink_current()
                end
            end,
        })
    end,
}
