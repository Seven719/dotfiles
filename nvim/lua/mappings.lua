require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Shift + K/J
map('n', 'K', ':m .-2<CR>==')
map('n', 'J', ':m .+1<CR>==')
map('x', 'K', ":move '<-2<CR>gv=gv")
map('x', 'J', ":move '>+1<CR>gv=gv")

-- Force Quit File
map('n', '<C-q>', '<Esc>:q!<CR>')
-- Deselect Searched Items
map('n', '<C-C>', ':set hlsearch!<CR>')
-- Indentation
map('x', '<Tab>', [[>gv]])
map('x', '<S-Tab>', [[<gv]])
-- Select All
map('n', '<C-a>', 'ggVG')
-- Esc for NTERM mode
map('t', '<Esc>', '<C-\\><C-n>')
