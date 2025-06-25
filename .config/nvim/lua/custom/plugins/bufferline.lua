return {
  'akinsho/nvim-bufferline.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      mode = 'buffers',
      diagnostics = 'nvim_lsp',
      hover = {
        enabled = true,
        delay = 200,
      },
      always_show_bufferline = false,
      separator_style = 'thin',
      custom_filter = function(buf_number)
        return vim.bo[buf_number].buftype ~= 'terminal'
      end,
    },
  },
  init = function()
    for i = 1, 9 do
      vim.api.nvim_set_keymap('n', '<A-' .. i .. '>', ':BufferLineGoToBuffer ' .. i .. '<CR>', { noremap = true, silent = true })
    end
  end,
}
