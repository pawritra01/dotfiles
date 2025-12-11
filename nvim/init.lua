vim.g.mapleader = ' '

require('plugins')

require('core.autocmd')
require('core.options')
require('core.keymaps')

require('snippets')

vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('ts_ls')
vim.lsp.enable('tailwindcss')
