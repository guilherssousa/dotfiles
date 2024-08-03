local lualine = require('lualine')

lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'diff', 'diagnostics' },
    lualine_x = { 'encoding', 'fileformat' },
  },
})
