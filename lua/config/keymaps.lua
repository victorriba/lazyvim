-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set
-- floating terminal
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
map("n", "<leader>fT", lazyterm, { desc = "Terminal (Root Dir)" })
map("n", "<leader>ft", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
