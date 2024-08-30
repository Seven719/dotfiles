return {
    {
        "rose-pine/neovim",
		priority = 1000,
        config = function()
            require("rose-pine").setup({
                styles = {
                    italic = false,
                    transparency = true,
                },
            })
            -- vim.cmd("colorscheme rose-pine-moon")
        end
    },

    {
        "rebelot/kanagawa.nvim",
        config = function ()
            require("kanagawa").setup({
            })
            vim.cmd("colorscheme kanagawa-dragon")
        end
    },

    {
        "craftzdog/solarized-osaka.nvim",
        config = function ()
            require("solarized-osaka").setup({
            })
            -- vim.cmd("colorscheme solarized-osaka")
        end
    }
}
