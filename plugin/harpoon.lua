local harpoon = require("harpoon")

harpoon:setup({
	settings = {
		save_on_toggle = true,
		sync_on_ui_close = true,
	}
})

vim.api.nvim_create_user_command('HarpoonMark',
	function()
		harpoon:list():add()
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonToggle',
	function()
		harpoon.ui:toggle_quick_menu(harpoon:list())
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate',
	function(opts)
		harpoon:list():select(tonumber(opts.fargs[1]))
	end,
	{ nargs = 1 }
)
