-- Fancier statusline
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    --'nvim-tree/nvim-web-devicons',
    'echasnovski/mini.icons',
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin',
      },
      sections = {
        lualine_c = {
          { 'filename', path = 1 },
        },
      },
    }
  end,
}
