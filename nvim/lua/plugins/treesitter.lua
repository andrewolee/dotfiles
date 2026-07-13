return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { "lua", "vim", "vimdoc", "bash", "go", "dart" },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    }
}
