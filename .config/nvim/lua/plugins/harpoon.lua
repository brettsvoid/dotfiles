return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    local which_key = require 'which-key'

    harpoon:setup()

    local nav = function(index)
      return function()
        harpoon:list():select(index)
      end
    end

    which_key.add {
      { '<leader>h', group = '[H]arpoon' },
      {
        '<leader>he',
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'View all project marks',
      },
      {
        '<leader>ha',
        function()
          harpoon:list():add()
        end,
        desc = 'Mark a file',
      },
      {
        '<leader>hn',
        function()
          harpoon:list():next()
        end,
        desc = 'Navigate to next mark',
      },
      {
        '<leader>hp',
        function()
          harpoon:list():prev()
        end,
        desc = 'Navigate to previous mark',
      },
      { '<leader>h1', nav(1), desc = 'Navigate to mark 1' },
      { '<leader>h2', nav(2), desc = 'Navigate to mark 2' },
      { '<leader>h3', nav(3), desc = 'Navigate to mark 3' },
      { '<leader>h4', nav(4), desc = 'Navigate to mark 4' },
      { '<leader>h5', nav(5), desc = 'Navigate to mark 5' },
    }
  end,
}
