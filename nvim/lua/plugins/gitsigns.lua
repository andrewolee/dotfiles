return {
    'lewis6991/gitsigns.nvim',
    opts = {
        on_attach = function(bufnr)
            local gitsigns = require('gitsigns')

            local function map(mode, l, r, desc)
                vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
            end

            map('n', ']c', function()
                if vim.wo.diff then
                    vim.cmd.normal({ ']c', bang = true })
                else
                    gitsigns.nav_hunk('next')
                end
            end, 'Next hunk')

            map('n', '[c', function()
                if vim.wo.diff then
                    vim.cmd.normal({ '[c', bang = true })
                else
                    gitsigns.nav_hunk('prev')
                end
            end, 'Prev hunk')

            map('n', '<leader>hp', gitsigns.preview_hunk, 'Preview hunk')
            map('n', '<leader>hb', function() gitsigns.blame_line({ full = true }) end, 'Blame line')
        end,
    },
}
