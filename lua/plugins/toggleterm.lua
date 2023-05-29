return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<leader>tf", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal Float" },
    { "<leader>tv", "<Cmd>3ToggleTerm direction=vertical<Cr>", desc = "Terminal Vertical" },
  },
  cmd = { "ToggleTerm", "TermExec" },
  opts = {
    size = vim.o.columns * 0.4,
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 0.3,
    start_in_insert = true,
    persist_size = true,
    direction = "float",
    winbar = {
      enabled = false,
      name_formatter = function(term)
        return term.name
      end,
    },
  },
}
