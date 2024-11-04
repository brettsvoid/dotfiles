-- https://github.com/stevearc/oil.nvim
return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    -- Open parent directory in current window
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
  opts = {
    columns = { 'icon' },
    view_options = {
      show_hidden = true,
    },
  },
  config = function(opts)
    local oil = require 'oil'

    oil.setup(opts)

    -- Open parent directory in floating window
    vim.keymap.set('n', '<leader>-', oil.toggle_float, { desc = 'Open parent directory (floating window)' })
  end,
}
