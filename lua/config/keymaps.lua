-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("n", "<leader>;", function()
  require("snacks").dashboard.open()
end, { desc = "Dashboard" })

vim.keymap.set("n", "zg", function()
  local w = vim.fn.expand("<cword>")
  local is_ru = vim.fn.match(w, "[а-яА-ЯёЁ]") >= 0
  vim.cmd.normal({ args = { (is_ru and "2zg" or "1zg") }, bang = true })
end, { desc = "Add to RU/EN dictionary (auto)" })
