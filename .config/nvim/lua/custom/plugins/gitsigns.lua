return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(buf)
      local gitsigns = require 'gitsigns'

      vim.keymap.set('n', '<leader>gb', gitsigns.blame_line, { buffer = buf, desc = '[G]it [B]lame Line' })
    end,
  },
}
