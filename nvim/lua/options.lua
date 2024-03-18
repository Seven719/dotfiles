require "nvchad.options"

-- Speed Up loading Lua Modules
vim.loader.enable()
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
