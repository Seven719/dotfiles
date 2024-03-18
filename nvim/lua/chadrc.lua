---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "kanagawa",
    transparency = true,

    statusline = {
        order = { "mode", "file", "git", "%=", "lsp", "cwd"},
    },
}

return M
