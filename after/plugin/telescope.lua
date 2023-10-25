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
