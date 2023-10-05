-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps --


-- clear search highlighting
keymap.set('n', '<leader>nh', ':nohlsearch<CR>', { desc = 'Clear search highlights' })

-- run :Explore command
keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- when in visual mode J & K move selection up and down
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

keymap.set('n', 'Y', 'yg$')
keymap.set('n', 'J', 'mzJ`z')
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

keymap.set('x', '<leader>p', '"_dP')

keymap.set('n', '<leader>y', '"+y')
keymap.set('v', '<leader>y', '"+y')
keymap.set('n', '<leader>Y', '"+Y')

keymap.set('n', '<leader>d', '"_d')
keymap.set('v', '<leader>d', '"_d')

keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
keymap.set('n', '<leader>f', function () 
    lsp.buf.format()
end)

keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

