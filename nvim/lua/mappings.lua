require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tmux keybinds
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")

-- Shift + K/J
map('n', 'K', ':m .-2<CR>==')
map('n', 'J', ':m .+1<CR>==')
map('x', 'K', ":move '<-2<CR>gv=gv")
map('x', 'J', ":move '>+1<CR>gv=gv")

-- Force Quit File
map('n', '<C-q>', '<Esc>:q!<CR>')
-- Deselect Searched Items
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Indentation
map('x', '<Tab>', [[>gv]])
map('x', '<S-Tab>', [[<gv]])
-- Select All
map('n', '<C-a>', 'ggVG')
-- Esc for NTERM mode
map('t', '<Esc>', '<C-\\><C-n>')
