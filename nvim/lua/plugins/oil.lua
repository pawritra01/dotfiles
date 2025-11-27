require("oil").setup({})

vim.keymap.set('n', '<leader>e', function() require('oil').toggle_float() end, {silent = true })
