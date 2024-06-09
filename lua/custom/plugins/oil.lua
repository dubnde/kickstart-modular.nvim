return {
  'stevearc/oil.nvim',
  cmd = 'Oil',
  cond = not vim.g.vscode,
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
  opts = {
    keymaps = {
      ['<BS>'] = 'actions.parent',
      ['!'] = 'actions.toggle_hidden',
      ['H'] = 'actions.toggle_hidden',
    },
  },
}
