require('gitsigns').setup {
	signcolumn	= true
}

vim.api.nvim_create_user_command('GitsignsBlame',
	function()
		require('gitsigns').blame_line{full=true}
	end,
	{}
)
