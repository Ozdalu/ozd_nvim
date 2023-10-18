-- empty setup using defaults
require('nvim-tree').setup()

-- OR setup with some options
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
