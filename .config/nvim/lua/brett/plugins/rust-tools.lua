return {
    'simrat39/rust-tools.nvim', 
    dependencies = {
        'neovim/nvim-lspconfig',
    },
    ft = 'rust',
    config = function()
        local rt = require('rust-tools')

        rt.setup({
            server = {
                on_attach = function(_, bufnr)
                    -- hover actions
                    vim.keymap.set('n', '<C-Space>', rt.hover_actions.hover_actions, { buffer = bufnr })
                    -- code action groups
                    vim.keymap.set('n', '<leader>ca', rt.code_action_group.code_action_group, { buffer = bufnr })
                end,
            },
        })
    end,
}
