return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        focus = true,
    },

    cmd = "Trouble",
    keys = {
        { "<leader>td", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
    },

    config = function ()
        require("trouble")
    end
}
