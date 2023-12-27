local bind = function(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

-- NERDTreeToggle Keybind
bind('n', '<Leader>f', ':NvimTreeToggle<CR>')

-- Shift + K/J
bind('n', 'K', ':m .-2<CR>==')
bind('n', 'J', ':m .+1<CR>==')
bind('x', 'K', ":move '<-2<CR>gv=gv")
bind('x', 'J', ":move '>+1<CR>gv=gv")

-- Force Save File
bind('n', 'zz', ':w!<CR>')
-- Force Quit File
bind('n', '<C-q>', '<Esc>:q!<CR>')
-- Deselect Searched Items
bind('n', '<C-C>', ':set hlsearch!<CR>')
-- Indentation
bind('x', '<Tab>', [[>gv]])
bind('x', '<S-Tab>', [[<gv]])
-- Select All
bind('n', '<C-a>', 'ggVG')

-- Tabs in neovim
bind('n', '<Leader>e', ':bnext<CR>')
bind('n', '<Leader>q', ':bprevious<CR>')
bind('n', '<Leader>w', ':bdelete<CR>')
