return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'diff', 'diagnostics' },
      lualine_x = { 'encoding', 'fileformat' },
    },
  },
}
