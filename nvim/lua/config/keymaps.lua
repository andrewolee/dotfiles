-- Set space as leader
vim.g.mapleader = " "

-- Don't yank with x
vim.keymap.set('n', 'x', '"_x')

-- Word wrap
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'j', 'gj')

-- Netrw
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- LSP go to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })

-- Split pane
vim.keymap.set('n', 'ss', '<C-w>v')

vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sl', '<C-w>l')
