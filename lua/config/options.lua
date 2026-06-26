-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- vim.g.lazyvim_python_lsp = "pyright"

vim.opt.diffopt = { "internal", "filler", "closeoff", "indent-heuristic", "inline:char", "linematch:40", "iwhite" }

vim.opt.nrformats:append("alpha")

-- Use Copilot inline ghost-text suggestions instead of the blink completion source
vim.g.ai_cmp = false

-- Add a border to floating windows (LSP hover, diagnostics, etc.)
vim.o.winborder = "rounded"
