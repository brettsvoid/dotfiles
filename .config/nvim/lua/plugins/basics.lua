return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- tmux & split window navigation
  'christoomey/vim-tmux-navigator',

  -- replace with register contents using motion (gr + motion)
  'inkarkat/vim-ReplaceWithRegister',

  -- "gc" to comment visual regions/lines
  'numToStr/Comment.nvim',

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
