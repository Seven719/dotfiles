return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme tokyonight-night")
            require("catppuccin").setup({
                comments = { italic = false },
            })
        end
    },
    {
        "catppuccin/nvim",
        priority = 1000,
        config = function()
            -- vim.cmd("colorscheme catppuccin-mocha")
            require("catppuccin").setup({
                no_italic = true,
            })
        end
    },
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
            -- vim.cmd("colorscheme rose-pine")
        end
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme nightfox")
        end
    }
}
