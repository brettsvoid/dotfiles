return {
    'simrat39/rust-tools.nvim',
    --'rust-lang/rust.vim',
    dependencies = {
        'neovim/nvim-lspconfig',
    },
    ft = 'rust',
    init = function()
        local rt = require('rust-tools')

        --vim.g.rustfmt_autosave = 1
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
