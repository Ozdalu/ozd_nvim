local telescope = require('telescope.builtin')

vim.api.nvim_create_user_command('TelescopeFindFiles',
	function()
		telescope.find_files()
	end,
	{}
)

vim.api.nvim_create_user_command('TelescopeGrep',
	function()
		telescope.grep_string({ search = vim.fn.input("Grep > ") });
	end,
	{}
)

vim.api.nvim_create_user_command('TelescopeReferences',
	function()
		telescope.lsp_references();
	end,
	{}
)

vim.api.nvim_create_user_command('TelescopeGrepUnder',
	function()
		telescope.grep_string();
	end,
	{}
)
