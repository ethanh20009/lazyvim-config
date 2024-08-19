return {
  {
    "neovim/nvim-lspconfig",

    ---@type vim.diagnostic.Opts
    opts = { -- make sure mason installs the server
      servers = {
        typos_lsp = {
          filetypes = {
            "text",
          },
        },
      },
    },
  },
}
