vim.g.mapleader = ' '

require('plugins')

require('core.options')
require('core.keymaps')

vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('ts_ls')
vim.lsp.enable('tailwindcss')
