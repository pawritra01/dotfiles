local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

map('i', 'jj', '<ESC>')
map('i', 'kk', '<ESC>')

-- Move around splits using Alt + {h,j,k,l}
local arrows = { 'h', 'j', 'k', 'l' }

for _, v in pairs(arrows) do
	map('n', '<A-' .. v .. '>', '<C-w>' .. v)
	map('t', '<A-' .. v .. '>', '<C-\\><C-n><C-w>' .. v)
	map('i', '<A-' .. v .. '>', '<Esc><C-w>' .. v)
end

map('t', '<A-f>', '<C-\\><C-n><cmd>FzfLua files<cr>', silent);
-- Keep visual mode indenting
map("v", "<", "<gv", silent)
map("v", ">", ">gv", silent)

-- Navigate QuickFix
map("n", "<A-o>", "<cmd>copen<cr>", silent)
map("i", "<A-o>", "<cmd>copen<cr>", silent)

map("n", "<A-n>", "<cmd>cnext<cr>", silent)
map("i", "<A-n>", "<cmd>cnext<cr>", silent)

map("n", "<A-p>", "<cmd>cprev<cr>", silent)
map("i", "<A-p>", "<cmd>cprev<cr>", silent)

map("n", "<A-c>", "<cmd>cclose<cr>", silent)
map("i", "<A-c>", "<cmd>cclose<cr>", silent)

map("n", "<leader>cf", "<cmd>lua vim.lsp.buf.format()<cr>", silent);
