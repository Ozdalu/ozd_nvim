require('FTerm').setup({
	vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true }),
	vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true }),

	cmd = os.getenv('SHELL'),
    border = 'rounded',
})
