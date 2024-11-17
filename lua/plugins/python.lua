return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers["ruff"].enabled = false
    end,
  },

  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
      keys = {
        {
          "<F10>d",
          function()
            require("dap").continue()
          end,
          desc = "Debug file",
          ft = "python",
        },
      },
    },
  },
}
