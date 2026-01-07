require('nvim-tree').setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.api.nvim_create_user_command('NvimTreeCD',
	function()
		require("nvim-tree.api").tree.change_root_to_node()
	end,
	{}
)
