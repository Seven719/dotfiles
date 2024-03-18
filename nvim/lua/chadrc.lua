---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "kanagawa",
    transparency = true,

    statusline = {
        order = { "mode", "file", "git", "%=", "lsp", "cwd"},
        theme = "vscode_colored",
    },
}

return M
