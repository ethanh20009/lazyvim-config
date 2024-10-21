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
            { "<leader>dRb", "<cmd>CMakeBuild<CR>", desc = "CMake Build" },
            { "<leader>dRd", "<cmd>CMakeDebug<CR>", desc = "CMake Run Debug" },
            { "<leader>dRr", "<cmd>CMakeRun<CR>", desc = "CMake Run" },
          },
        },
      },
    },
  },
}
