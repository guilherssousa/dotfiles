local transparent = require('transparent')

transparent.setup({
  exclude_groups = {},
})

vim.keymap.set('n', '<leader>et', '<cmd>TransparentToggle<cr>', { noremap = true, silent = true, desc = '[T]oggle [T]ransparency' })
