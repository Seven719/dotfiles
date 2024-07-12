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
            vim.cmd("colorscheme rose-pine-moon")
        end
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme nightfox")
        end
    }
}
