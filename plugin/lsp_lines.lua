require("lsp_lines").setup()

vim.api.nvim_create_user_command('LspLinesToggle',
	function()
		require("lsp_lines").toggle()
	end,
	{}
)
