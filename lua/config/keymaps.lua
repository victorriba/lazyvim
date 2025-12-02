-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    if vim.bo.filetype == "snacks_terminal" then
      vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>:close<CR>", { buffer = true, desc = "Hide Terminal" })
    end
  end,
})
