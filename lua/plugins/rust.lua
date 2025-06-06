return {
  "mrcjkb/rustaceanvim",
  version = "*",
  opts = {
    server = {
      on_attach = function(_, bufnr)
        -- vim.keymap.set("n", "<leader>ca", function()
        --   vim.cmd.RustLsp("codeAction")
        -- end, { desc = "Code Action", buffer = bufnr })
        -- vim.keymap.set("n", "<leader>dr", function()
        --   vim.cmd.RustLsp("debuggables")
        -- end, { desc = "Rust Debuggables", buffer = bufnr })
        -- vim.keymap.set("n", "<leader>cl", function()
        --   vim.cmd.RustLsp("rebuildProcMacros")
        -- end,
        -- { desc = "Rust rebuild proc macros", buffer = bufnr })
        vim.keymap.set("i", "'", "'")
      end,
      settings = {
        ["rust-analyzer"] = {
          procMacro = {
            enabled = true,
          },
        },
      },
    },
  },
}
