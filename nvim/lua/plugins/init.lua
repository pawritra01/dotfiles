vim.pack.add({
  -- Basic Dependencies
	{ src="https://github.com/nvim-tree/nvim-web-devicons" },

  -- Snippets
	{ src="https://github.com/L3MON4D3/LuaSnip" },

  -- Theme
  { src="https://github.com/rebelot/kanagawa.nvim" },
  { src="https://github.com/folke/tokyonight.nvim" },

  { src="https://github.com/mason-org/mason.nvim" },

  -- Plugins
	{ src="https://github.com/stevearc/oil.nvim" },
  { src="https://github.com/folke/flash.nvim" },
  { src="https://github.com/saghen/blink.cmp" },
  { src="https://github.com/nvim-lualine/lualine.nvim" },
  { src="https://github.com/nvim-treesitter/nvim-treesitter" },
  { src="https://github.com/FabijanZulj/blame.nvim" },

  -- Mini
  { src="https://github.com/nvim-mini/mini.starter" },
  { src="https://github.com/nvim-mini/mini.pairs" },
  { src="https://github.com/nvim-mini/mini.comment" },
  { src="https://github.com/nvim-mini/mini.pick" },
})


require("plugins.mini")
require("plugins.treesitter")
require("core.themes.tokyonight")
require("plugins.blink")
require("plugins.flash")
require("plugins.mason")
require("plugins.lualine")

require("oil").setup({})
require("blame").setup({})





