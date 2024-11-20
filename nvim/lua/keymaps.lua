local map = vim.keymap.set

-- Display Lsp Diagnostics
map("n", "<space>e", vim.diagnostic.open_float)

-- Shift + K/J for moving lines up and down
-- Single Lines
map("n", "K", ":m .-2<CR>==")
map("n", "J", ":m .+1<CR>==")
-- Muliple Lines
map("x", "K", ":move '<-2<CR>gv=gv")
map("x", "J", ":move '>+1<CR>gv=gv")

-- Deselect Searched Items
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Indent
map("x", "<Tab>", [[>gv]])
-- Outdent
map("x", "<S-Tab>", [[<gv]])
