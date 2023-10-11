return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },
   --opts = {
   --    ensure_installed = {
   --        'rust-analyzer',
   --    },
   --},
    config = function () 
        require('mason').setup({
            ui = {
                icons = {
                    package_installed = "",
                    package_pending = "",
                    package_uninstalled = "",
                },
            }
        })
        require("mason-lspconfig").setup()
    end,
}
