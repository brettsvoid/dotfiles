return {
    'simrat39/rust-tools.nvim',
    config = function()
        require('rust-tools').setup({
            server = {
                on_attach = function(_, bufnr)
                    -- hover actions
                    vim.keymap.set('n', '<C-Space>', rt.hover_actions.hover_actions, { buffer = bufnr })
                    -- code action groups
                    vim.keymap.set('n', '<leader>a', rt.code_action_group.code_action_group, { buffer = bufnr })
                end,
            },
        })
    end,
}
