local remap = vim.keymap.set

-- [[ Diagnostic Keymaps ]]
remap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
remap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
remap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
remap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ File Explorer ]]
remap('n', '<leader>fe', vim.cmd.Ex, { desc = '[F]ile [E]xplorer' })

-- [[ Buffer stuff ]]
remap('n', '<leader>cf', ':bd<cr>', { desc = '[C]lose [F]ile (actually, the Buffer)', silent = true })

-- [[ Terminal remaps ]]
remap('n', '<leader>nt', ':terminal<cr>', { desc = '[N]ew [T]erminal window', silent = true })
remap('t', '<esc>', '<C-\\><C-N>', { silent = true })

-- [[ Navigation keymaps ]]
remap('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up', silent = true })
remap('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down', silent = true })

-- [[ Move line remaps ]]
remap('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
remap('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
remap('n', '<A-h>', ":m '<-2<CR>gv=gv", { desc = 'Move line left' })
remap('n', '<A-l>', ":m '>+1<CR>gv=gv", { desc = 'Move line right' })
