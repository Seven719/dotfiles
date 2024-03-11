require('everforest').setup({
    background = 'hard',
    transparent_background_level = 1,
})

require('rose-pine').setup({
    disable_background = true
})

require("kanagawa").setup({
	transparent = true,
	theme = "default",
})

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {'branch'},
        lualine_x = {'filetype'},
        lualine_y = {''},
        lualine_z = {''}
    }
}

vim.cmd('syntax off')
vim.cmd('colorscheme everforest')
