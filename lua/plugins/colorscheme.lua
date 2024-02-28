return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme tokyonight-moon]])
		vim.api.nvim_set_hl(0, 'LineNr', { fg='orange', bold=true, italic=true })
		vim.api.nvim_set_hl(0, 'CursorLineNr', { fg='white', bold=true, italic=true })
	end,
}
