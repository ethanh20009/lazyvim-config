return { -- correctly setup lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = { -- make sure mason installs the server
      servers = { angularls = {} },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "angular",
      },
    },
  },
}
