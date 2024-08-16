require('bufferline').setup({
  options = {
    mode = 'buffers',
    diagnostics = 'nvim_lsp',
    hover = {
      enabled = true,
      delay = 200,
    },
    always_show_bufferline = false,
    separator_style = 'thin',
  },
})

-- Map Alt+ 1-9 to switch buffers
for i = 1, 9 do
  vim.api.nvim_set_keymap('n', '<leader>' .. i, ':BufferLineGoToBuffer ' .. i .. '<CR>', { noremap = true, silent = true })
end
