return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = '*',
  event = 'VeryLazy',
  opts = {
    options = {
      mode = 'tabs',
      diagnostics = 'nvim_lsp',
      hover = {
        enabled = true,
        delay = 200,
      },
      show_buffer_icons = true,
      always_show_bufferline = false,
      show_close_icon = false,
      separator_style = 'slant',
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
