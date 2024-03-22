-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')

	------ Color themes ------
	-- Dracula
	use('Mofiqul/dracula.nvim')


	------ Actual plugins ------
	-- Mason(-lspconfig)
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	use({
		'akinsho/flutter-tools.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		},
	})

	-- Telescope
	use({
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	})

	-- Harpoon
	use({
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		requires = { {'nvim-lua/plenary.nvim'} }
	})

	-- Treesitter (+ playgroud)
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	--GitSigns
	use('lewis6991/gitsigns.nvim')

	-- Nvim Tree
	use('nvim-tree/nvim-tree.lua')
	use('nvim-tree/nvim-web-devicons')

	-- Floating Terminal
	use('numToStr/FTerm.nvim')

	-- CCC (Color Picker)
	use('uga-rosa/ccc.nvim')

	-- LSP Zero
	use({
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	})

	-- LUA Line
	use({
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	})

	-- LSP Lines
	use('https://git.sr.ht/~whynothugo/lsp_lines.nvim')

end)

