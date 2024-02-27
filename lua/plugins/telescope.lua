return {
	'nvim-telescope/telescope-file-browser.nvim',
	dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
	config = function()
		require("telescope").setup {
			defaults = {
				file_ignore_patterns = {
					'.git',
				},
			},
			pickers = {
				live_grep = {
					additional_args = function()
						return {'--hidden'}
					end
				},
				grep_string = {
					additional_args = function()
						return {'--hidden'}
					end
				},
			},
			extensions = {
				file_browser = {
					hidden = true,
				}
			}
		}
	end,
	keys = {
		{ '<leader>ff', '<cmd>Telescope find_files hidden=true<CR>', desc = '[F]ind [F]iles' },
		{ '<leader>fb', '<cmd>Telescope file_browser<CR>', desc = '[F]ile [B]rowser' },
		{ '<leader><space>', '<cmd>Telescope buffers<CR>', desc = '[F]ind [B]uffers' },
		{ '<leader>fg', '<cmd>Telescope live_grep<CR>', desc = '[F]ind [G]rep' },
		{ '<leader>fsg', '<cmd>Telescope grep_string<CR>', desc = '[F]ind [S]tring [G]rep' },
	},
	cmd = { 'Telescope' },
}
