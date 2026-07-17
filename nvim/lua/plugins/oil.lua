return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        -- Free up <C-h>/<C-l> for vim-tmux-navigator (they clashed with oil's
        -- horizontal-split-select and refresh actions). Dropped, not rebound.
        keymaps = {
            ['<C-h>'] = false,
            ['<C-l>'] = false,
        },
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
