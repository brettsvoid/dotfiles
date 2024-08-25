return {
  'rmagatti/auto-session',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>w', group = '[W]orkspace' },
    { '<leader>wl', '<cmd>SessionSearch<CR>', desc = '[W]orkspace [L]ist' },
    { '<leader>ws', '<cmd>SessionSave<CR>', desc = '[W]orkspace [S]ave' },
    { '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', desc = '[W]orkspace Toggle [A]utosave' },
    { '<leader>wr', '<cmd>SessionRestore<CR>', desc = '[W]orkspace [R]estore' },
    { '<leader>wd', '<cmd>SessionDelete<CR>', desc = '[W]orkspace [D]elete' },
  },
  config = function()
    require('auto-session').setup {
      auto_session_suppress_dirs = { '/', '~/', '~/projects', '~/work', '~/work/projects' },
    }
  end,
}
