require("mason").setup()

vim.lsp.config("*", {
  auto_trigger = true,
})

vim.lsp.enable("rust-analyzer")
vim.lsp.enable("eslint")
vim.lsp.enable("ts_ls")
vim.lsp.enable("basedpyright")

require('blink.cmp').setup({
  keymap = { preset = 'default' },
  appearance = {
    nerd_font_variant = 'mono'
  },
  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 500 },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  signature = { enabled = true },
  fuzzy = {
    implementation = "lua"
  }
})
