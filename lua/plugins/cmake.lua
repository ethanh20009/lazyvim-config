return {
  {
    "cmake-tools.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          keys = {
            { "<F10>b", "<cmd>CMakeBuild<CR>", desc = "CMake Build" },
            { "<F10>d", "<cmd>CMakeDebug<CR>", desc = "CMake Run Debug" },
            { "<F10>r", "<cmd>CMakeRun<CR>", desc = "CMake Run" },
          },
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        {
          mode = { "n", "v" },
          {
            "<F10>",
            group = "run",
          },
        },
      },
    },
  },
}
