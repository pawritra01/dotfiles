return {
  "ibhagwan/fzf-lua",
  lazy = false,
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  ---@diagnostic enable: missing-fields
  ---
  keys = {
	{ "<leader>f", "<cmd>FzfLua files<cr>", mode="n", desc = "Find Files" },
	{ "<leader>gf", "<cmd>FzfLua live_grep<cr>", desc = "Git Files" },
	{ "<leader><leader>", "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },

	{ "<leader>/", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
  }
}
