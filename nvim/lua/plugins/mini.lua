local picker = require("mini.pick")
local comment = require("mini.comment")
local pairs = require("mini.pairs")
local starter = require("mini.starter")

picker.setup({})
comment.setup({})
pairs.setup({})
starter.setup({})

vim.keymap.set("n", "<leader>f", "<cmd>Pick files<cr>", { silent=true, desc="Pick files" })
vim.keymap.set("n", "<leader>bb", "<cmd>Pick buffers<cr>", { silent=true, desc="Pick buffers" })
vim.keymap.set("n", "<leader>/", "<cmd>Pick grep_live<cr>", { silent=true, desc="Pick live_grep" })

