-- Persistent Undo
vim.opt.undofile = true
-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Show sidebar numbers
vim.o.number = true
-- Hide signs in sidebard
vim.o.signcolumn = "no"
-- Sidebar number width is 4
vim.opt.numberwidth = 4
-- Highlight current line on cursor
vim.opt.cursorline = true

-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Spaces to use for each step of autoindent
vim.opt.shiftwidth = 2
-- Smart indent based on context in code
vim.opt.smartindent = true
-- Number of spaces a tab is
vim.opt.tabstop = 2
-- Insert specified amount of spaces when pressing Tab
vim.opt.softtabstop = 2

-- Display empty lines at the end of the buffer with spaces instead of ~
vim.opt.fillchars = { eob = " " }
-- Ignore case in search patterns
vim.opt.ignorecase = true
-- Override ignorecase if the search contains uppercase letters
vim.opt.smartcase = true

-- Keep n amount of lines visible above and below the cursor when scrolling
vim.opt.scrolloff = 10
