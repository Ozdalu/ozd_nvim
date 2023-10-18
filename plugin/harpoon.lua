vim.api.nvim_create_user_command('HarpoonMark',
	function()
		require('harpoon.mark').add_file()
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonToggle',
	function()
		require("harpoon.ui").toggle_quick_menu()
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate1',
	function()
		require("harpoon.ui").nav_file(1)
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate2',
	function()
		require("harpoon.ui").nav_file(2)
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate3',
	function()
		require("harpoon.ui").nav_file(3)
	end,
	{}
)

vim.api.nvim_create_user_command('HarpoonNavigate4',
	function()
		require("harpoon.ui").nav_file(4)
	end,
	{}
)
