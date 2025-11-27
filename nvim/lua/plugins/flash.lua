local f = require("flash")

f.setup({})


vim.keymap.set("n", "s", function() f.jump() end , {silent=true, desc="Flash"})
vim.keymap.set("x", "s", function() f.jump() end , {silent=true, desc="Flash"})
vim.keymap.set("o", "s", function() f.jump() end , {silent=true, desc="Flash"})


-- { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
--     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
--     { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
--     { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
--     { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
