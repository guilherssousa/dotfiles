local neotree = require('neo-tree')

neotree.setup({
  source_selector = {
    statusline = false,
  },
  filesystem = {
    window = {
      position = 'right',
      mappings = {
        ['<C-b>'] = 'close_window',
      },
    },
  },
})

vim.keymap.set('n', '<C-b>', ':Neotree reveal right<cr>', { desc = 'toggle file tree', silent = true })
