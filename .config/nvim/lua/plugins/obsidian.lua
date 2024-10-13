-- A Neovim plugin for writing and navigating Obsidian vaults.
-- https://github.com/epwalsh/obsidian.nvim
return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/Documents/Obsidian Vault',
      },
      {
        name = 'work',
        path = '~/Documents/Work Vault',
      },
    },
    notes_subdir = '.inbox',
    new_notes_location = '.notes_subdir',
  },
}
