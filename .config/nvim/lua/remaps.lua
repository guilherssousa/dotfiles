local remap = vim.keymap.set

-- [[ Diagnostic Keymaps ]]
remap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
remap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
remap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
remap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Quicklist keymaps ]]
remap('n', '[q', '<cmd>:cprev<CR>', { desc = 'Go to previous quicklist item' })
remap('n', ']q', '<cmd>:cnext<CR>', { desc = 'Go to next quicklist item' })

-- [[ File Explorer ]]
remap('n', '<leader>fe', vim.cmd.Ex, { desc = '[F]ile [E]xplorer' })

-- [[ Buffer stuff ]]
remap('n', '<leader>cf', ':bd<cr>', { desc = '[C]lose [F]ile (actually, the Buffer)', silent = true })
remap('n', '<C-k><C-w>', ':bufdo bwipeout<cr>', { desc = 'Close all files', silent = true })

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

-- [[ Clear search wiwth <esc> ]]
remap({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch' })

-- [[ Change theme ]]
remap('n', '<leader>srt', '<cmd>lua SetRandomTheme()<cr><esc>', { desc = '[S]et [R]andom [T]heme' })

-- [[ Open on File Explorer ]]
remap('n', '<leader>ofe', '<cmd>!$EXPLORER .<cr><esc>', { desc = '[O]pen on [F]ile [E]xplorer' })

-- [[ Source neovim configuration ]]
remap('n', '<leader>sn', '<cmd>:source %<CR>', { desc = '[S]ource [N]eovim' })
