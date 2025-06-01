return { -- correctly setup lspconfig
  -- Remove when angular lsp thing fixed.
  {
    "neovim/nvim-lspconfig",
    -- commit = "1f941b3668151963fca3e1230922c433ea4b7b64",
    opts = { -- make sure mason installs the server
      servers = {
        -- angularls = {
        --   filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" },
        -- },
        html = {
          filetypes = {
            "htmlangular",
            "html",
            "templ",
          },
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          -- Set not show a message if hover is not available
          -- ex: shift+k on Typescript code
          silent = true,
        },
      },
    },
  },
}
