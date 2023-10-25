local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>cc", ":nohl<CR>")

-- Split orientation
map("n", "<leader>ss", ":split<CR>") -- change vertical to horizontal
map("n", "<leader>sv", ":vsplit<CR>") -- change horizontal to vertical

-- Change split orientation
map("n", "<leader>tk", "<C-w>t<C-w>K") -- change vertical to horizontal
map("n", "<leader>th", "<C-w>t<C-w>H") -- change horizontal to vertical

-- Move around splits using Alt + {h,j,k,l}
local arrows = { "h", "j", "k", "l" }

for _, v in pairs(arrows) do
	map("n", "<C-" .. v .. ">", "<C-w>" .. v)
	map("t", "<C-" .. v .. ">", "<C-\\><C-n><C-w>" .. v)
	map("i", "<C-" .. v .. ">", "<Esc><C-w>" .. v)
end

-- Move selected line / block of text in visual mode
map("v", "K", ":move '<-2<CR>gv-gv")
map("v", "J", ":move '>+1<CR>gv-gv")
