return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find files (all)",
      },
    },
  },
  {
    "LunarVim/bigfile.nvim",
    opts = {
      filesize = 1,
      pattern = {
        "*.json",
      },
    },
  },
  -- {
  --   "pteroctopus/faster.nvim",
  --   opts = {
  --     behaviours = {
  --       bigfile = {
  --         filesize = 1,
  --       },
  --     },
  --   },
  -- },
}
