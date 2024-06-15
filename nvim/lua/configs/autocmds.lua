local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
		callback = function()
				vim.highlight.on_yank()
		end
})

autocmd("BufWritePre", {
		pattern = "",
		command = ":%s/\\s\\+$//e"
})

autocmd("FileType", {
	pattern = "*",
	command = "setlocal ts=4 sts=4 noet"
})
