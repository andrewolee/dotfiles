-- Check for external file changes (needed for 'autoread' to actually trigger)
vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter' }, {
    pattern = '*',
    callback = function()
        if vim.fn.mode() ~= 'c' then
            vim.cmd('checktime')
        end
    end,
})
