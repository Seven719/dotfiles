local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        python = { "black" },
        rust = { "rustfmt" },
    },
}

require("conform").setup(options)
