-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.relativenumber = true
opt.wrap = true

opt.spell = true
opt.spelllang = { "en", "ru" }
opt.spelloptions = "camel"
opt.spellfile = {
  vim.fn.stdpath("config") .. "/spell/en.utf-8.add",
  vim.fn.stdpath("config") .. "/spell/ru.utf-8.add",
}
-- formatters
vim.g.lazyvim_prettier_needs_config = false
