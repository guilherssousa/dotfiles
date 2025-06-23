--[[ local tree = require('nvim-tree')
local api = require('nvim-tree.api')

tree.setup({
  sort = {
    sorter = 'case_sensitive',
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  on_attach = function(bufnr)
    vim.keymap.set('n', '<leader>tf', api.tree.toggle, { buffer = bufnr, desc = '[T]oggle [F]ile Tree' })
  end,
}) ]]
