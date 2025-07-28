return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(highlights, colors)
        highlights.CursorLineNr = {
          bold = true,
          fg = "#ffffff",
        }
        highlights.LineNr = {
          fg = colors.fg,
        }
        highlights.LineNrAbove = {
          fg = colors.fg_dark,
        }
        highlights.LineNrBelow = {
          fg = colors.fg_dark,
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   keys = {
  --     {
  --       "<leader>ff",
  --       function()
  --         require("telescope.builtin").find_files()
  --       end,
  --       desc = "Find files (all)",
  --     },
  --   },
  -- },
}
