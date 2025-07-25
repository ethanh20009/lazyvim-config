-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- vim.g.lazyvim_python_lsp = "pyright"

vim.opt.diffopt = {
  "internal",
  "filler",
  "closeoff",
  -- "context:12",
  "algorithm:patience",
  "linematch:200",
  "indent-heuristic",
  -- "inline:char", -- Probably neovim 12+ needed
}

vim.opt.nrformats:append("alpha")
