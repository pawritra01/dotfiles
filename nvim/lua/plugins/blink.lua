local blink = require("blink.cmp")

blink.setup({
  keymap = { preset = 'default' },
  appearance = {
    nerd_font_variant = 'mono'
  },

  completion = { 
    documentation = { auto_show = true },
    list = {
      selection = { preselect = false, auto_insert = false },
    },
  },

  signature = { enabled = true },
  snippets = { preset = "luasnip" },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
    providers = {
      path = {
        opts = {
          get_cwd = function(_) return vim.fn.getcwd() end,
          show_hidden_files_by_default = true,
          trailing_slash = false,
        },
      },
    },
  },

  -- fuzzy = { implementation = "prefer_rust_with_warning" },
  fuzzy = { implementation = "lua" },
})
