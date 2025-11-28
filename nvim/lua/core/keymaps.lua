vim.keymap.set("n", "<leader>w", "<cmd>q<cr>", { silent=true, desc="Close Window"})
vim.keymap.set("t", "<leader>w", "<C-\\><c-n><cmd>q<cr>", { silent=true, desc="Close Window"})

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

-- Move Block of Code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the block selected while indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Terminal Resizing
vim.keymap.set("t", "<C-Up>", "<cmd>resize -2<CR>")
vim.keymap.set("t", "<C-Down>", "<cmd>resize +2<CR>")
vim.keymap.set("t", "<C-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("t", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- Moving through code
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
