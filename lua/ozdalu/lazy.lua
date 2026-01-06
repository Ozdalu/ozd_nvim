local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
  -- LSP
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'neovim/nvim-lspconfig',
  'mason-org/mason.nvim',
  'mason-org/mason-lspconfig.nvim',
  'WhoIsSethDaniel/mason-tool-installer.nvim',

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

  --GitSigns
  'lewis6991/gitsigns.nvim',

  -- Nvim Tree
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  -- Floating Terminal
  'numToStr/FTerm.nvim',

  -- CCC (Color Picker)
  'uga-rosa/ccc.nvim',

  -- LUA Line
  {
  	'nvim-lualine/lualine.nvim',
  	dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
  },

  -- LSP Lines
  'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
},

  -- automatically check for plugin updates
  checker = { enabled = false },
})
