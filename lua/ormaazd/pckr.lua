local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end
bootstrap_pckr()

require('pckr').add{
	------ Color themes ------
	-- Dracula
	{'Mofiqul/dracula.nvim'};


	------ Actual plugins ------
	-- Mason(-lspconfig)
	{
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	};

    -- Flutter tools
	{
		'akinsho/flutter-tools.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		},
	};

	-- Telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	};

	-- Harpoon
	{
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		requires = { {'nvim-lua/plenary.nvim'} }
	};

	-- Treesitter (+ playgroud)
	{'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}};
	{'nvim-treesitter/playground'};

	--GitSigns
	{'lewis6991/gitsigns.nvim'};

	-- Nvim Tree
	{'nvim-tree/nvim-tree.lua'};
	{'nvim-tree/nvim-web-devicons'};

	-- Floating Terminal
	{'numToStr/FTerm.nvim'};

	-- CCC (Color Picker)
	{'uga-rosa/ccc.nvim'};

	-- LSP Zero
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	};

	-- LUA Line
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	};

	-- LSP Lines
	{'https://git.sr.ht/~whynothugo/lsp_lines.nvim'};
}
