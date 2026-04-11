vim.keymap.set("n", "<leader>-", "<cmd>Oil<cr>", { desc = "Open Oil"})

vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "FzfLua Open Files"})

vim.keymap.set("n", "<leader>rr", "<cmd>restart<cr>", { desc = "Restart Neovim"})

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Prev Diag"})
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next Diag"} )

vim.keymap.set('n', '<C-s>', require("flash").jump, { desc = "Next Diag"} )
