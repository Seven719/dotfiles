return {
    'romgrk/barbar.nvim',
    event = "BufEnter",
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    init = function() vim.g.barbar_auto_setup = true end,
    config = function ()
        require'barbar'.setup {
        auto_hide = true,
        }
    end,
    version = '^1.x'
}
