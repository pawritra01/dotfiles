vim.pack.add({
  -- Basic Dependencies
	{ src="https://github.com/nvim-tree/nvim-web-devicons" },
  { src="https://github.com/MunifTanjim/nui.nvim" },

  -- Theme
  { src="https://github.com/rebelot/kanagawa.nvim" },
  { src="https://github.com/folke/tokyonight.nvim" },

  { src="https://github.com/mason-org/mason.nvim" },

  -- Plugins
	{ src="https://github.com/stevearc/oil.nvim" },
  { src="https://github.com/folke/flash.nvim" },
  { src="https://github.com/nvim-mini/mini.pick" },
  { src="https://github.com/saghen/blink.cmp" },
  { src="https://github.com/nvim-lualine/lualine.nvim" },
  { src="https://github.com/folke/noice.nvim" },
})


require("core.themes.tokyonight")

require("plugins.oil")
require("plugins.mini")
require("plugins.blink")
require("plugins.flash")
require("plugins.mason")
require("plugins.lualine")
require("plugins.noice")

