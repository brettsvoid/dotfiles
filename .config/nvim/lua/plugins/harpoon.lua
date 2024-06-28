return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'
    local which_key = require 'which-key'

    local nav = function(index)
      return function()
        ui.nav_file(index)
      end
    end

    which_key.register({
      h = {
        name = '[H]arpoon',
        e = { ui.toggle_quick_menu, 'View all project marks' },
        a = { mark.add_file, 'Mark a file' },
        n = { ui.nav_next, 'Navigate to next mark' },
        p = { ui.nav_prev, 'Navigate to previous mark' },
        ['1'] = { nav(1), 'Navigate to mark 1' },
        ['2'] = { nav(2), 'Navigate to mark 2' },
        ['3'] = { nav(3), 'Navigate to mark 3' },
        ['4'] = { nav(4), 'Navigate to mark 4' },
        ['5'] = { nav(5), 'Navigate to mark 5' },
      },
    }, { prefix = '<leader>' })
  end,
}
