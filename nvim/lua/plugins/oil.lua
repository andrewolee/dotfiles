return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        float = {
            padding = 2,
            max_width = 0.8,
            max_height = 0.8,
            border = 'rounded',
        },
    },
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    lazy = false,
}
