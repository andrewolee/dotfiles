vim.api.nvim_create_autocmd('LspAttach', {
    desc = "LSP actions",
    callback = function(event)
    end
})

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
    }
})
