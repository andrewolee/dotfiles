return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Dart's LSP ships inside the Dart SDK itself, not via Mason
        vim.lsp.enable('dartls')
    end,
}
