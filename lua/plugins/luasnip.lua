return {
  "L3MON4D3/LuaSnip",
  init = function()
    -- extend html snippets for htmlangular
    require("luasnip").filetype_extend("htmlangular", { "html" })
  end,
}
