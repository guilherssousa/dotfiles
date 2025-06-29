require('telescope').setup({
  defaults = {
    theme = 'center',
    sorting_strategy = 'ascending',
    layout_config = {
      horizontal = {
        preview_width = 0.6,
      },
    },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
})

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

local dropdown_opts = {
  winblend = 10,
  previewer = false,
}

local dropdown = require('telescope.themes').get_dropdown(dropdown_opts)

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown(dropdown_opts))
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>ff', function()
  require('telescope.builtin').find_files(dropdown)
end, { desc = '[S]earch [F]iles' })

vim.keymap.set('n', '<leader>scs', function()
  require('telescope.builtin').colorscheme(dropdown, {
    enable_preview = true,
  })
end, { desc = '[S]earch [C]olor[S]chemes' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>ss', require('telescope.builtin').lsp_document_symbols, { desc = '[S]earch [S]ymbols' })
vim.keymap.set('n', '<leader>srm', require('telescope.builtin').keymaps, { desc = '[S]earch [R]e[M]appings' })
