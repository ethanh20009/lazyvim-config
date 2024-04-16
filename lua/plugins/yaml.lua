return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["yaml"] = {},
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = { -- make sure mason installs the server
      servers = {
        yamlls = {
          settings = {
            yaml = {
              format = {
                enable = false,
              },
            },
          },
        },
      },
    },
  },
}
