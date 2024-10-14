-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.dbs = {
  { name = "dev", url = "postgres://myuser:mypassword@localhost:5432/corfu-bookings" },
}
vim.g.lazyvim_python_lsp = "pyright"
