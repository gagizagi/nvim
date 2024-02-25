return {
	'nvim-telescope/telescope-file-browser.nvim',
	dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("file_browser")
	end,
	keys = {
		{ '<leader>ff', '<cmd>Telescope file_browser<CR>', desc = '[F]ind [F]iles' },
		{ '<leader><space>', '<cmd>Telescope buffers<CR>', desc = '[F]ind [B]uffers' },
		{ '<leader>fg', '<cmd>Telescope live_grep<CR>', desc = '[F]ind [G]rep' },
	},
}
