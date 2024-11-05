return {
  {
    "lervag/vimtex",
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_general_viewer = "okular"
    end,
  },

  {
    "barreiroleo/ltex_extra.nvim",
    ft = { "markdown", "tex" },
    branch = "dev",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      path = ".ltex",
      load_langs = { "en-GB" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ltex = {
          filetypes = {
            "bib",
            "gitcommit",
            "latex",
            "mail",
            "norg",
            "org",
            "pandoc",
            "rst",
            "tex",
          },
          settings = {
            -- https://valentjn.github.io/ltex/settings.html
            ltex = {
              -- trace = { server = "verbose" },
              -- XXX: unwanted checks are still occurring, often delaying CodeActions
              checkFrequency = "save",
              language = "en-GB",
            },
          },
        },
      },
    },
  },
}
