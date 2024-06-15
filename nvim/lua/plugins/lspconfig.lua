return {
    "neovim/nvim-lspconfig",
    init_options = {
        userLanguages = {
            eelixir = "html-eex",
            eruby = "erb",
            rust = "html",
        },
    },
    config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
    end,
}
