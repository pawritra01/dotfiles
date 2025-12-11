vim.pack.add({
  -- Basic Dependencies
  { src="https://github.com/nvim-tree/nvim-web-devicons" },

  -- Snippet
  { src="https://github.com/L3MON4D3/LuaSnip" },

  -- Theme
  { src="https://github.com/folke/tokyonight.nvim" },
  { src="https://github.com/navarasu/onedark.nvim" },

  { src="https://github.com/mason-org/mason.nvim" },

  -- Plugins
	{ src="https://github.com/stevearc/oil.nvim" },
  { src="https://github.com/folke/flash.nvim" },
  { src="https://github.com/saghen/blink.cmp" },
  { src="https://github.com/nvim-lualine/lualine.nvim" },
  { src="https://github.com/nvim-treesitter/nvim-treesitter" },
  { src="https://github.com/FabijanZulj/blame.nvim" },
  { src="https://github.com/stevearc/conform.nvim" },
  { src="https://github.com/ibhagwan/fzf-lua" },

  -- Mini
  { src="https://github.com/nvim-mini/mini.pairs" },
  { src="https://github.com/nvim-mini/mini.comment" },
})



require("oil").setup({
  float = {
    win_options = {
      winblend = 0
    }
  }
})
require("blame").setup({})

require("plugins.mini")
require("plugins.treesitter")
require("core.themes.tokyonight")
require("plugins.fzflua")
require("plugins.blink")
require("plugins.flash")
require("plugins.mason")
require("plugins.lualine")
require("plugins.conform")




