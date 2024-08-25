return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    local which_key = require 'which-key'

    which_key.setup()

    -- Document existing key chains
    which_key.add {
      { '<leader>c', group = '[C]ode' },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]oggle' },
      -- {'<leader>h', group = 'Git [H]unk', mode = 'v' },
    }
  end,
}
