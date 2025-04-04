return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    --'nvim-tree/nvim-web-devicons'
    'echasnovski/mini.icons',
  },
  config = function()
    local nvimtree = require 'nvim-tree'

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- change color for arrows in tree to light blue
    vim.cmd [[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]]
    vim.cmd [[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]]

    -- configure nvim-tree
    nvimtree.setup {
      view = {
        relativenumber = true,
        width = 35,
      },
      -- change folder arrow icons
      renderer = {
        highlight_git = true,
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '', -- arrow when folder is closed
              arrow_open = '', -- arrow when folder is open
            },
          },
          show = {
            git = true,
          },
        },
      },
      -- disable window-picker for explorer to work well with window
      -- splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { '.DS_Store' },
      },
      git = {
        enable = true,
        ignore = false,
      },
    }

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    -- toggle file explorer
    keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
    -- toggle file explorer on current file
    keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' })
    -- collapse file explorer
    keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' })
    -- refresh file explorer
    keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' })
  end,
}
