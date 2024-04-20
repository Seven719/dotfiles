---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "rosepine",
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
