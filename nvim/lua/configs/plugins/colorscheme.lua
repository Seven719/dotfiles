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
    config = function()
      require("kanagawa").setup({
        transparent = true,
      })
      vim.cmd("colorscheme kanagawa")
    end
  },

  {
    "craftzdog/solarized-osaka.nvim",
    config = function()
      require("solarized-osaka").setup({
      })
      -- vim.cmd("colorscheme solarized-osaka")
    end
  },

  {
    "Mofiqul/vscode.nvim",
    config = function()
      require("vscode").setup({
        transparent = true,
      })
      -- vim.cmd("colorscheme vscode")
    end
  }
}
