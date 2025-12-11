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

-- Code
vim.keymap.set('n', '<leader>cf', function() require('conform').format({ async = true, lsp_format = "fallback" }) end, {silent = true, desc="[C]ode [F]ormat" })
vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, {silent = true, desc="[C]ode [A]ctions" })
vim.keymap.set('n', '<leader>cr', function() vim.lsp.buf.references() end, {silent = true, desc="[C]ode [R]eferences" })
vim.keymap.set('n', '<leader>cd', function() vim.lsp.buf.type_definition() end, {silent = true, desc="[C]ode [D]efinition" })
vim.keymap.set('n', '<leader>cs', function() vim.lsp.buf.document_symbol() end, {silent = true, desc="[C]ode [S]ymbol" })
vim.keymap.set('n', '<leader>sr', function() vim.lsp.buf.rename() end, {silent = true, desc="[S]ymbol [R]ename" })

-- Oil
vim.keymap.set('n', '<leader>-', function() require('oil').toggle_float() end, {silent = true })

-- Blame
vim.keymap.set('n', '<leader>gb', "<cmd>BlameToggle<cr>", {silent = true })

-- Mini
vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<cr>", { silent=true, desc="Pick files" })
vim.keymap.set("n", "<leader><leader>", "<cmd>FzfLua files<cr>", { silent=true, desc="Pick files" })
vim.keymap.set("n", "<leader>bb", "<cmd>FzfLua buffers<cr>", { silent=true, desc="Pick buffers" })
vim.keymap.set("n", "<leader>/", "<cmd>FzfLua live_grep<cr>", { silent=true, desc="Pick live_grep" })

-- Quckfix
vim.keymap.set("n", "qq", "<cmd>copen<cr>", { silent=true, desc="[Q]uickfix [O]pen"})
vim.keymap.set("n", "qn", "<cmd>cnext<cr>", { silent=true, desc="[Q]uickfix [N]ext"})
vim.keymap.set("n", "qp", "<cmd>cprev<cr>", { silent=true, desc="[Q]uickfix [P]revious"})
vim.keymap.set("n", "qc", "<cmd>cclose<cr>", { silent=true, desc="[Q]uickfix [Q]uit"})

-- Rebind u to U
vim.keymap.set("n", "u", "", { silent=true, desc="Unbind u"})
vim.keymap.set("n", "U", "u", { silent=true, desc="Unbind u"})

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


-- LSP
