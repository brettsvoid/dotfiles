return {
    'MunifTanjim/prettier.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'jose-elias-alvarez/null-ls.nvim'
    },
    config = function()
        local prettier = require('prettier')

        prettier.setup({
            bin         = 'prettierd',
            cli_options = {
                config_precedence = "prefer-file",
            },
            filetypes   = {
                "css",
                "graphql",
                "html",
                "javascript",
                "javascriptreact",
                "json",
                "less",
                "markdown",
                "scss",
                "typescript",
                "typescriptreact",
                "yaml",
            },
            ['null-ls'] = {
                timeout = 2000,
            },
        })
    end,
}
