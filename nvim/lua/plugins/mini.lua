local picker = require("mini.pick")

picker.setup({})

vim.keymap.set("n", "<leader>f", "<cmd>Pick files<cr>", { silent=true, desc="Pick files" })
vim.keymap.set("n", "<leader>bb", "<cmd>Pick buffers<cr>", { silent=true, desc="Pick buffers" })
vim.keymap.set("n", "<leader>/", "<cmd>Pick grep_live<cr>", { silent=true, desc="Pick live_grep" })

