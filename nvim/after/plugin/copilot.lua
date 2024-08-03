local copilot = require('copilot')

copilot.setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
})

require('copilot_cmp').setup()

local enabled = true

vim.keymap.set('n', '<leader>cot', function()
  if enabled then
    enabled = false
    vim.cmd('Copilot disable')
    print("Copilot disabled")
  else
    enabled = true
    vim.cmd('Copilot enable')
    print("Copilot enabled")
  end
end, { desc = '[Co]pilot [T]oggle' })
