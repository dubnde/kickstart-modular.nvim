-- [[ Custom Keymaps ]]

local keymap = function(mode, lhs, rhs, opts)
  local options = { silent = true, noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

local map = function(mode, lhs, rhs, desc)
  keymap(mode, lhs, rhs, { desc = desc })
end

-- Blazingly fast way out of modes
map({ 'i', 'v', 'x', 't' }, 'jk', '<ESC>', 'Escape')
map({ 'i', 'v', 'x', 't' }, 'kj', '<ESC>', 'Escape')

-- Search will center on the line it's found in
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('n', '#', '#zz')
map('n', '*', '*zz')

-- Quick access to some common actions
map('n', '<leader>fw', '<cmd>w<cr>', 'Write')
map('n', '<leader>fW', '<cmd>wa<cr>', 'Write all')
map('n', '<leader>fn', '<cmd>enew<cr>', 'New File')

-- Redo
map('n', 'U', '<C-r>')

-- Better paste
map('v', 'p', '"_dP')

-- Navigate buffers
map('n', '<S-l>', '<CMD>bnext<CR>', 'Next Buffer')
map('n', '<S-h>', '<CMD>bprevious<CR>', 'Previous Buffer')
map('n', '<TAB>', '<CMD>bnext<CR>', 'Next Buffer')
map('n', '<S-TAB>', '<CMD>bprevious<CR>', 'Previous Buffer')

-- quit
map('n', '<leader>qq', '<cmd>qa<cr>', 'Quit All')

-- window management
map('n', '<leader>w=', '<Cmd>wincmd =<CR>', 'Equalise')
map('n', '<leader>wv', '<Cmd>wincmd v<CR>', 'split vertically')
map('n', '<leader>wh', '<Cmd>wincmd s<CR>', 'split horizontally')
map('n', '<leader>wc', '<Cmd>wincmd c<CR>', 'close window')
map('n', '<leader>wn', '<Cmd>wincmd n<CR>', 'New window')
map('n', '<leader>wo', '<Cmd>wincmd o<CR>', 'Only window')
map('n', '<leader>wp', '<Cmd>wincmd p<CR>', 'Previous window')
map('n', '<leader>wq', '<Cmd>wincmd q<CR>', 'Quit')
map('n', '<leader>wr', '<Cmd>wincmd r<CR>', 'Rotate down/right')
map('n', '<leader>wR', '<Cmd>wincmd R<CR>', 'Rotate up/left')
map('n', '<leader>wt', '<Cmd>wincmd T<CR>', 'Move to tab')
map('n', '<leader>wx', '<Cmd>wincmd X<CR>', 'Exchange window')

return {}

-- vim: ts=2 sts=2 sw=2 et
