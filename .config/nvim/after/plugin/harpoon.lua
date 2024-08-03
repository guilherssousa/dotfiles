local harpoon = require('harpoon')

harpoon:setup()

-- Keybindings
vim.keymap.set('n', '<leader>ha', function()
  harpoon:list():append()
end, { desc = '[A]ppend File' })

vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Open Harpoon Quick Menu' })

vim.keymap.set('n', '<leader>hr', function()
  harpoon:list():remove()
end, { desc = '[R]emove File' })

vim.keymap.set('n', '<leader>hc', function()
  harpoon:list():clear()
end, { desc = '[H]arpoon [C]lear marks' })

-- Map Ctrl + Number to Harpoon Mark
-- This wont work:
vim.keymap.set('n', '<leader>1', function()
  harpoon:list():select(1)
end, { desc = 'Go to Harpoon mark 1' })

vim.keymap.set('n', '<leader>2', function()
  harpoon:list():select(2)
end, { desc = 'Go to Harpoon mark 2' })

vim.keymap.set('n', '<leader>3', function()
  harpoon:list():select(3)
end, { desc = 'Go to Harpoon mark 3' })

vim.keymap.set('n', '<leader>4', function()
  harpoon:list():select(4)
end, { desc = 'Go to Harpoon mark 4' })
