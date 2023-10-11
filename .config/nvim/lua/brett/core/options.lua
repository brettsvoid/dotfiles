local opt = vim.opt -- for conciseness

-- enable the experimental loader to speed up startup times
vim.loader.enable()

-- line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.relativenumber = true -- show relative line numbers

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- line wrapping
opt.wrap = false -- disable line wrapping

-- backup and undo handling
opt.swapfile = false
opt.backup = false -- let undo tree handle undos
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
opt.undofile = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- scroll settings
opt.scrolloff = 8
opt.isfname:append('@-@')

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- updatetime
opt.updatetime = 250 -- the length of time that vim waits before updating the swapfile

-- Appearance --

-- turn on termguicolors for 24-bit color
opt.termguicolors = true
opt.signcolumn = 'yes' -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- split windows
opt.splitright = true -- split vertical window to the right
--opt.splitbelow = true -- split horizontal window to the bottom

-- colorcolumn
opt.colorcolumn = '80'


-- Set completeopt to have a better completion experience --
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
opt.completeopt = {'menuone', 'noselect', 'noinsert'}
opt.shortmess = vim.opt.shortmess + { c = true}
