local g = vim.g
local o = vim.o
local op = vim.opt
-- Window Tabs
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Mouse
op.mouse = ""
vim.opt.guicursor = ""

-- Tabbing
o.cindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- Colors
o.t_Co = 256
op.termguicolors = true
op.background = "dark"

-- Side Bar
o.relativenumber = true
o.number = true
o.signcolumn = 'no'
o.cursorline = true

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8
-- ClipBoard
op.clipboard = "unnamedplus"
-- SQL Change
g.lazy_sql_default_compl_type = 'syntax'
