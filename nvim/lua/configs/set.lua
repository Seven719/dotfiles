-- Persistent Undo
vim.opt.undofile = true
-- Make neovim respond faster
vim.opt.updatetime = 250
-- ClipBoard
vim.opt.clipboard = "unnamedplus"
-- Colors
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Mouse
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

vim.opt.scrolloff = 10

-- Disable unwated defaults
vim.g["loaded_node_provider"] = 0
vim.g["loaded_python3_provider"] = 0
vim.g["loaded_perl_provider"] = 0
vim.g["loaded_ruby_provider"] = 0
