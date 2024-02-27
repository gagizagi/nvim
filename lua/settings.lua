-- Disable providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0

-- Line numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

-- Set global clipboard
vim.opt.clipboard = 'unnamedplus'

-- Visual stuff
vim.opt.breakindent = true
vim.opt.signcolumn = 'yes'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.scrolloff = 10

-- Highlight cursor line
vim.opt.cursorline = true
