-- Editor options
vim.opt.number = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.scrolloff = 5
vim.opt.mouse = 'a'
vim.opt.signcolumn = 'yes'
vim.opt.showcmd = false

-- Tab options
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Search options
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Split options
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Use system clipboard for copy/paste
vim.opt.clipboard:append { 'unnamedplus' }
