-- Set space as leader
vim.g.mapleader = " "

-- Don't yank with x
vim.keymap.set('n', 'x', '"_x')

-- Word wrap
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'j', 'gj')

-- Netrw
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
