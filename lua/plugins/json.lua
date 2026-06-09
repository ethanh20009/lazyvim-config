return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = {
          settings = {
            json = {
              schemas = {
                {
                  fileMatch = { "**/solution-origin/**/*schema.json" },
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
