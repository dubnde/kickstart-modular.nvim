return {
  "smoka7/multicursors.nvim",
  event = "VeryLazy",
  dependencies = "smoka7/hydra.nvim",
  cond = not vim.g.vscode,
  opts = {},
  cmd = {
    "MCstart",
    "MCvisual",
    "MCclear",
    "MCpattern",
    "MCvisualPattern",
    "MCunderCursor",
  },
  keys = {
    { mode = { "v", "n" }, "<Leader>m", "<cmd>MCstart<cr>", desc = "MultiCursor Start" },
    { mode = { "v", "n" }, "<C-N>", "<cmd>MCstart<cr>", desc = "MultiCursor Start" },
  },
}
