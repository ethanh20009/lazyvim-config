return { -- correctly setup lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = { -- make sure mason installs the server
      servers = {
        angularls = {
          filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "angular.html" },
        },
        html = {
          filetypes = {
            "angular.html",
            "html",
            "templ",
          },
        },
      },
      setup = {
        angularls = function(_, opts)
          vim.filetype.add({
            pattern = {
              [".*%.component%.html"] = "angular.html", -- Sets the filetype to `angular.html` if it matches the pattern
            },
          })

          vim.api.nvim_create_autocmd("FileType", {
            pattern = "angular.html",
            callback = function()
              vim.treesitter.language.register("angular", "angular.html") -- Register the filetype with treesitter for the `angular` language/parser
            end,
          })
        end,
      },
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
  {
    "windwp/nvim-ts-autotag",
    opts = {
      filetypes = {
        "angular.html",
        "typescript",
        "rust",
        "javascript",
        "html",
        "tsx",
        "handlebars",
      },
    },
  },
}
