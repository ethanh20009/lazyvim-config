return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers["ruff"].enabled = false
  end,
}
