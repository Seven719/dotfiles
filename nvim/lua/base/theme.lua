local current_theme = 'horizon'

-- Theme Preferences
    -- EverForest
    vim.g.everforest_background = 'hard'
    vim.g.everforest_better_performance = 1
    -- Edge
    vim.g.edge_style = 'aura dim'
    vim.g.edge_better_performance = 1
    -- Sonokai
    vim.g.sonokai_style = 'shusia'
    vim.g.sonokai_better_performance = 1


-- Lualine
require('lualine').setup {
    options = {
        theme = "auto"  
  },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {'fileformat','filetype'},
        lualine_y = {'encoding'},
        lualine_z = {'location'}
    }
}

-- Set The Theme
vim.cmd('colorscheme ' .. current_theme)
