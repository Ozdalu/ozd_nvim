local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	------ Color themes ------
	-- Dracula
  'Mofiqul/dracula.nvim',

  ------ Actual plugins ------
  -- Mason(-lspconfig)
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  --Harpoon
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

 	-- Treesitter (+ playgroud)
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
 	'nvim-treesitter/playground',

 	--GitSigns
 	'lewis6991/gitsigns.nvim',

 	-- Nvim Tree
 	'nvim-tree/nvim-tree.lua',
 	'nvim-tree/nvim-web-devicons',

 	-- Floating Terminal
 	'numToStr/FTerm.nvim',

 	-- CCC (Color Picker)
 	'uga-rosa/ccc.nvim',

  -- Comments
  'numToStr/Comment.nvim',

 	-- LSP Zero
 	{
 		'VonHeikemen/lsp-zero.nvim',
 		branch = 'v3.x',
 		dependencies = {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip'
 		}
 	},

 	-- LUA Line
 	{
 		'nvim-lualine/lualine.nvim',
 		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
 	},

 	-- LSP Lines
 	'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
}

local opts = {}

require("lazy").setup(plugins, opts)
