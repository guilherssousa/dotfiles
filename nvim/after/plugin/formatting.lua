local conform = require('conform')

conform.setup({
  formatters_by_ft = {
    javascript = { 'prettier' },
    javascriptreact = { 'prettier' },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    svelte = { 'prettier' },
    astro = { 'prettier' },
    json = { 'prettier' },
    css = { 'prettier' },
    markdown = { 'prettier' },
    graphql = { 'prettier' },
    python = { 'isort', 'black' },
    lua = { 'stylua' },
    rust = { 'rustfmt' },
    go = { 'gofmt', 'goimports' },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },
})

vim.keymap.set({ 'n', 'v' }, '<leader>fm', function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = '[F]or[m]at' })
