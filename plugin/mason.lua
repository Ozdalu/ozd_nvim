require('mason').setup {}
require('mason-lspconfig').setup {}
require('mason-tool-installer').setup {
  ensure_installed = {
	  "html",
	  "gopls",
	  "lua_ls",
	  "solidity_ls",
  },
}
