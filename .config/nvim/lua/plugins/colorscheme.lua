return {
  'catppuccin/nvim',
  name = 'catppuccin',
  -- Make sure to load this before all the other start plugins
  priority = 1000,
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'catppuccin-latte', 'catppuccin-frappe', 'catppuccin-macchiato', or 'catppuccin-mocha'.

    vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'

    require('catppuccin').setup {
      flavour = 'macchiato',
      term_colors = true,
      transparent_background = true, -- disables setting the background color
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      integrations = {
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        harpoon = true,
        mason = true,
      },
    }

    -- Setup must be called before loading.
    vim.cmd.colorscheme 'catppuccin-macchiato'
  end,
}
