vim.keymap.set("n", "<leader>-", "<cmd>Oil<cr>", { desc = "Open Oil"})

vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "FzfLua Open Files"})

vim.keymap.set("n", "<leader>rr", "<cmd>restart<cr>", { desc = "Restart Neovim"})

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Prev Diag"})
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next Diag"} )

vim.keymap.set('n', '<C-s>', require("flash").jump, { desc = "Next Diag"} )

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv", {desc = "TODO"})
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv", {desc = "TODO"})

-- Keep visual mode indenting
vim.keymap.set("v", "<", "<gv", {desc = "TODO"})
vim.keymap.set("v", ">", ">gv", {desc = "TODO"})

-- Move around splits using Alt + {h,j,k,l}
local arrows = {'h', 'j', 'k', 'l'}

for _, v in pairs(arrows) do
  vim.keymap.set('n', '<A-' .. v .. '>', '<C-w>' .. v)
  vim.keymap.set('t', '<A-' .. v .. '>', '<C-\\><C-n><C-w>' .. v)
  vim.keymap.set('i', '<A-' .. v .. '>', '<Esc><C-w>' .. v)
end

vim.keymap.set('n', '<A-n>', '<cmd>cnext<cr>', {desc = "QuickFix Next"})
vim.keymap.set('n', '<A-p>', '<cmd>cprev<cr>', {desc = "QuickFix Next"})
vim.keymap.set('n', '<A-c>', '<cmd>cclose<cr>', {desc = "QuickFix Next"})
