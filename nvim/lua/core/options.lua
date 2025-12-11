local g = vim.g
local o = vim.o


o.winborder='rounded'
o.termguicolors = true

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200
o.cmdheight = 0
-- o.autochdir = true

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 25

-- Better editor UI
o.number = true
o.numberwidth = 1
o.relativenumber = true
o.signcolumn = 'no'
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.textwidth = 300
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Diagnostic
vim.diagnostic.config({ virtual_text = true })
