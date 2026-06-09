return {
  -- adds jsonls, schemastore and treesitter for json/json5/jsonc
  { import = "lazyvim.plugins.extras.lang.json" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = {
          settings = {
            json = {
              schemas = {
                {
                  fileMatch = { "**/solution-origin/**/*.schema.json" },
                  url = "https://json-schema.org/draft-07/schema",
                },
              },
            },
          },
        },
      },
    },
  },
}
