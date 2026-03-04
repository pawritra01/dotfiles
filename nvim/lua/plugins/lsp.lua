return {
	"https://github.com/neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('ts_ls')
		vim.lsp.enable('basedpyright')
	end
}
