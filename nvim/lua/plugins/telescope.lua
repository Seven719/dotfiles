return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-file-browser.nvim",
	},

	-- Setup telescope
	keys = function()
		local builtin = require("telescope.builtin")

		return {
			{
				"<leader>ff",
				function()
					builtin.find_files()
				end,
			},
			{
				"<leader>tg",
				function()
					builtin.live_grep()
				end,
			},
			{
				"<leader>ts",
				function()
					builtin.buffers()
				end,
			},
		}
	end,
}
