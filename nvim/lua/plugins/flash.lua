local f = require("flash")

f.setup({})


vim.keymap.set("n", "fs", function() f.jump() end , {silent=true, desc="Flash"})
vim.keymap.set("x", "fs", function() f.jump() end , {silent=true, desc="Flash"})
vim.keymap.set("o", "fs", function() f.jump() end , {silent=true, desc="Flash"})


-- { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
--     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
--     { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
--     { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
--     { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
