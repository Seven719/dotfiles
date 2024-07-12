local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Barbar Keybinds
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>')
map('n', '<Tab>', '<Cmd>BufferNext<CR>')
map('n', '<C-x>', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })

map("n", "<space>e", vim.diagnostic.open_float)

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
-- Save File
map("n", "<C-s>", "<cmd>w<CR>")
-- Show NvimTree
map("n", "<C-n>", "<cmd>Neotree toggle<CR>")
