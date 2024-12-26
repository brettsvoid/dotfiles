return {
  'L3MON4D3/LuaSnip',
  -- follow latest release.
  version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- config = function ()
  --     local ls = require('luasnip')
  --
  --     vim.keymap.set('i', '<C-K>', ls.expand, { silent = true })
  --     vim.keymap.set({'i', 's'}, '<C-L>', function() ls.jump(1) end, { silent = true })
  --     vim.keymap.set({'i', 's'}, '<C-H>', function() ls.jump(-1) end, { silent = true })
  --
  --     vim.keymap.set({'i', 's'}, '<C-E>', function()
  --         if ls.choice_active() then
  --             ls.change_choice(1)
  --         end
  --     end, { silent = true })
  -- end
}
