return {
    'mfussenegger/nvim-dap',
    config = function()
        local dap = require('dap')

        dap.adapters.lldb = {
            type = 'executable',
            command = '/opt/homebrew/opt/llvm/bin/lldb-vscode', -- adjust as needed, must be absolute path
            name = 'lldb'
        }

        vim.keymap.set('n', '<leader>dh', dap.toggle_breakpoint, { desc = 'Toggle breakpoint' })
        vim.keymap.set('n', '<S-k>', dap.step_out, { desc = 'Step out' })
        vim.keymap.set('n', '<S-l>', dap.step_into, { desc = 'Step into' })
        vim.keymap.set('n', '<S-j>', dap.step_over, { desc = 'Step over' })
        vim.keymap.set('n', '<leader>dn', dap.continue, { desc = 'Continue' })
        vim.keymap.set('n', '<leader>d_', dap.run_last, { desc = 'Run last' })
    end
}
