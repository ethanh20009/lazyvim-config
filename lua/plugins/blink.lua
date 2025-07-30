return {
  {
    "saghen/blink.cmp",
    opts = {
      signature = { enabled = false },
      sources = {
        providers = {
          buffer = {
            score_offset = -10,
          },
        },
      },

      keymap = {
        ["<C-y>"] = {
          function(cmp)
            vim.schedule(cmp.select_next)
            vim.schedule(cmp.select_prev)
            vim.schedule(cmp.hide)
          end,
        },
      },
    },
  },
}
