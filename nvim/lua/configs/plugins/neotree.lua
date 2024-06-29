return {
    "nvim-neo-tree/neo-tree.nvim",
    event = "BufReadPost",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    config = function ()
        require("neo-tree").setup({
            window = {
                width = 30,
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                },
            },
        })
    end
}
