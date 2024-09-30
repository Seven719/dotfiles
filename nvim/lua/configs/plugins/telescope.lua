return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
    },
    "nvim-telescope/telescope-file-browser.nvim",
  },
  keys = {
    {
      "<leader>tt",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          no_ignore = false,
          hidden = true,
        })
      end,
      desc = "Lists files in your current working directory, respects .gitignore",
    },
    {
      "<leader>tg",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep()
      end,
      desc =
      "Search for a string in your current working directory and get results live as you type, respects .gitignore",
    },
    {
      "<leader>ts",
      function()
        local builtin = require("telescope.builtin")
        builtin.treesitter()
      end,
      desc = "Lists Function names, variables, from Treesitter",
    },
    {
      "<leader>tb",
      function()
        local telescope = require("telescope")

        local function telescope_buffer_dir()
          return vim.fn.expand("%:p:h")
        end

        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          cwd = telescope_buffer_dir(),
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = false,
          initial_mode = "normal",
          layout_config = { height = 40 },
        })
      end,
      desc = "Open File Browser with the path of the current buffer",
    },
    {
      "<C-p>",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          no_ignore = false,
          hidden = false,
        })
      end,
      desc = "Find files in the current working directory",
    },
  },

  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
    })

    telescope.load_extension("fzf")
  end,
}
