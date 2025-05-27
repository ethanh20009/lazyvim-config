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
  --     setup = {
  --       angularls = function(_, opts)
  --         vim.filetype.add({
  --           pattern = {
  --             [".*%.component%.html"] = "angular.html", -- Sets the filetype to `angular.html` if it matches the pattern
  --           },
  --         })
  --
  --         vim.api.nvim_create_autocmd("FileType", {
  --           pattern = "angular.html",
  --           callback = function()
  --             vim.treesitter.language.register("angular", "angular.html") -- Register the filetype with treesitter for the `angular` language/parser
  --           end,
  --         })
  --       end,
  --     },
  --   },
  -- },
  -- {
  --   "akinsho/bufferline.nvim",
  --   branch = "main",
  -- },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "angular",
  --     },
  --   },
  -- },
  -- {
  --   "windwp/nvim-ts-autotag",
  --   opts = {
  --     filetypes = {
  --       "angular.html",
  --       "typescript",
  --       "rust",
  --       "javascript",
  --       "html",
  --       "tsx",
  --       "handlebars",
  --     },
  --   },
  -- },
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
