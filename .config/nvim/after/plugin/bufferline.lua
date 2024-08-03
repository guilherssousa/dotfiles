require("bufferline").setup({
  options = {
    mode = "buffers",
    diagnostics = 'nvim_lsp',
    hover = {
      enabled = true,
      delay = 200,
    },
    always_show_bufferline = false,
    separator_style = "thin",
  },
})
