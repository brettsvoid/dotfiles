-- https://github.com/kdheepak/lazygit.nvim
return {
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { '<leader>Gl', '<cmd>:LazyGit<cr>', desc = '[L]azyGit' },
  },
  config = function()
    -- Keymap to open Lazygit in a new buffer
    vim.keymap.set('n', '<leader>Gl', function()
      vim.cmd 'enew' -- Open a new buffer
      vim.fn.termopen 'LazyGit' -- Launch Lazygit in the terminal
      vim.cmd 'startinsert' -- Enter insert mode for interaction
    end, { mode = 'n', lhs = '', desc = '[L]azyGit in New Buffer' })
  end,
}
