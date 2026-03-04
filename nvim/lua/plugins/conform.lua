return {
	'stevearc/conform.nvim',
	opts = {},

	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
			},
		})
	end
}
