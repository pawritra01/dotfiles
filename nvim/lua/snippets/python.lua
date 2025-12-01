local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
  s("__name__", {
    t('if __name__ == "__main__":'),
    i('condition')
  })
})

