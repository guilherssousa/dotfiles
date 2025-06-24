local neotree = require('neo-tree')

neotree.setup({
  source_selector = {
    statusline = false,
  },
  filesystem = {
    filtered_items = {
      visible = true,
      show_hidden_count = true,
      hide_dotfiles = false,
      hide_gitignored = true,
      hide_by_name = {
        '.git',
        '.DS_Store',
        'thumbs.db',
      },
      never_show = {},
    },
    window = {
      position = 'right',
      mappings = {
        ['<C-b>'] = 'close_window',
      },
    },
  },
})

vim.keymap.set('n', '<C-b>', ':Neotree reveal right<cr>', { desc = 'toggle file tree', silent = true })
