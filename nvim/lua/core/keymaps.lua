vim.keymap.set("n", "<leader>w", "<cmd>q<cr>", { silent=true, desc="Close Window"})

vim.keymap.set("n", "<leader>sv", "<c-w>v", { silent=true, desc="[S]plit [V]ertically"})
vim.keymap.set("n", "<leader>sh", "<c-w>s", { silent=true, desc="[S]plit [H]orizontally"})


-- Move around splits using Ctrl + {h,j,k,l}
local arrows = {'h', 'j', 'k', 'l'}
for _, v in pairs(arrows) do
  vim.keymap.set("n", '<C-' .. v .. '>', '<C-w>' .. v, { silent=true, desc="Move " .. v})
  vim.keymap.set("t", '<C-' .. v .. '>', '<C-\\><C-n><C-w>' .. v, { silent=true, desc="Move " .. v})
  vim.keymap.set("i", '<C-' .. v .. '>', '<Esc><C-w>' .. v, { silent=true, desc="Move " .. v})
end


-- Quckfix
vim.keymap.set("n", "<leader>co", "<cmd>copen<cr>", { silent=true, desc="[C]uickfix [O]pen"})
-- vim.keymap.set("n", "<c-n>", "<cmd>cnext<cr>", { silent=true, desc="[C]uickfix [N]ext"})
-- vim.keymap.set("n", "<c-p>", "<cmd>cprev<cr>", { silent=true, desc="[C]uickfix [P]revious"})
vim.keymap.set("n", "<leader>cq", "<cmd>cclose<cr>", { silent=true, desc="[C]uickfix [Q]uit"})
