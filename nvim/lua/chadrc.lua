---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "catppuccin",
    transparency = true,

    statusline = {
        order = { "mode", "file", "git", "%=", "lsp", "cwd"},
        theme = "vscode_colored",
    },
    tabufline = {
        order = { "treeOffset", "buffers", "tabs"},
    },
}

return M
