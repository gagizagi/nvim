-- Language server
local lsp = {
	'neovim/nvim-lspconfig',
	dependencies = {
		{ 'williamboman/mason.nvim', config = true },
		'williamboman/mason-lspconfig.nvim',
		'folke/neodev.nvim',
	},
	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup({
			ensure_installed = { 'lua_ls', 'tsserver' },
		})
		local lspconfig = require('lspconfig')
		lspconfig.lua_ls.setup({})
		lspconfig.tsserver.setup({})

		vim.keymap.set({ 'n', 'v', }, '<leader>ca', vim.lsp.buf.code_action, {})
	end,
	cmd = { 'Mason', 'LspInfo' },
}

-- Autocompletion and snippets
local cmp = {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-path',
		'rafamadriz/friendly-snippets',
	},
}

return {
	lsp,
	cmp,
}
