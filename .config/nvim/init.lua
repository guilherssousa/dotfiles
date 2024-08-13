-- [[ Real important to configure this first ]]
vim.g.mapleader = ' '

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- no config needed plugins.

  -- [[ theme config ]]
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('kanagawa-dragon')
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end,
  },
  -- make it transparent!
  'xiyaowong/transparent.nvim',

  -- [[ format related ]]
  'tpope/vim-sleuth',

  -- [[ lsp stuff ]]
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      'onsails/lspkind-nvim',

      -- useful status updates for lsp
      {
        'j-hui/fidget.nvim',
        tag = 'legacy',
      },

      -- additional lua configuration
      'folke/neodev.nvim',
    },
  },

  -- [[ Autocomplete ]]
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
  },

  -- [[ Telescope, can't live without it ]]
  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable('make') == 1
        end,
      },
    },
  },

  -- [[ highlight, edit, and navigate code ]]
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  -- [[ Formatting ]]
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
  },

  -- [[ Help utilities ]]
  'folke/which-key.nvim',
  'lewis6991/gitsigns.nvim',
  'NvChad/nvim-colorizer.lua',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'j-hui/fidget.nvim',
  'numToStr/Comment.nvim',

  -- [[ Git related stuff ]]
  { 'akinsho/git-conflict.nvim', version = '*', config = true },

  -- [[ Quickfix ]]
  { 'kevinhwang91/nvim-bqf', ft = 'qf' },

  -- [[ Copilot ]]
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
  },
  {
    'zbirenbaum/copilot-cmp',
    after = { 'copilot.lua' },
  },

  -- [[ Um netrw melhor ]]
  'prichrd/netrw.nvim',

  -- [[ Frufru ]]
  'wakatime/vim-wakatime',
  'nvim-lualine/lualine.nvim',
  'nvim-tree/nvim-web-devicons',
  'akinsho/nvim-bufferline.lua',
  'stevearc/dressing.nvim',
})

require('set')
require('remaps')
