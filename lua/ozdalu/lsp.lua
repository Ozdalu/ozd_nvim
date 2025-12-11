-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

vim.lsp.enable({
	-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls
	-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/lua_ls.lua
	"lua_ls",

	-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#gopls
	-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/gopls.lua
	"gopls",

	-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#html
	-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/html.lua
	"html",

	-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#solidity_ls
	-- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/solidity_ls.lua
	"solidity_ls",
})
