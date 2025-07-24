return {
  {
    "neovim/nvim-lspconfig",
    -- commit = "1f941b3668151963fca3e1230922c433ea4b7b64",
    opts = { -- make sure mason installs the server
      servers = {
        denols = {
          root_dir = require("lspconfig").util.root_pattern({ "deno.json", "deno.jsonc" }),
          single_file_support = false,
          settings = {},
        },
      },
    },
  },
}
