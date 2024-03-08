---------------------------------------- Options -----------------------------------------
-- Persistent Undo
vim.opt.undofile = true
-- Make neovim respond faster
vim.opt.updatetime = 50
-- ClipBoard
vim.opt.clipboard = "unnamedplus"
-- Colors
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Mouse
vim.opt.mouse = ""
vim.opt.guicursor = ""

-- Side Bar
vim.o.number = true
vim.o.signcolumn = 'no'
vim.opt.cursorline = true
vim.opt.numberwidth = 4
vim.opt.ruler = false

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.fillchars = { eob = " " }
vim.opt.ignorecase = true
vim.opt.smartcase = true

-------------------------------------- ColorScheme ---------------------------------------

vim.g.everforest_background = 'hard'
vim.g.everforest_better_performance = 1
require('rose-pine').setup({
    disable_background = true
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
vim.cmd('colorscheme rose-pine')
