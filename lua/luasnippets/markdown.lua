local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
luasnip.add_snippets("markdown", {
  s("bmat", {
    t({ "$$", "" }),
    i(1),
    t({ "", "$$" }),
  }),
  s("mat", {
    t({ "$" }),
    i(1),
    t({ "$" }),
  }),
})
