local harpoon = require("harpoon")

harpoon:setup({
	settings = {
		save_on_toggle = true,
		sync_on_ui_close = true,
	}
})

vim.api.nvim_create_user_command('HarpoonMark',
	function()
		harpoon:list():append()
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonToggle',
	function()
		harpoon.ui:toggle_quick_menu(harpoon:list())
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate1',
	function()
		harpoon:list():select(1)
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate2',
	function()
		harpoon:list():select(2)
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate3',
	function()
		harpoon:list():select(3)
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate4',
	function()
		harpoon:list():select(4)
	end,
	{}
)
