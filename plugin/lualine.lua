local normalColor = OzdaluColors.purples
local insertColor = OzdaluColors.oranges
local visualColor = OzdaluColors.blues
local replaceColor = OzdaluColors.reds

local my_theme = {
	normal = {
		a = { fg = OzdaluColors.black, bg = normalColor.light, gui = 'bold' },
		b = { fg = OzdaluColors.white, bg = normalColor.neutral, },
		c = { fg = OzdaluColors.white, bg = normalColor.dark },
	},

	insert = {
		a = { fg = OzdaluColors.black, bg = insertColor.light, gui = 'bold' } ,
		b = { fg = OzdaluColors.black, bg = insertColor.neutral, gui = 'bold' } ,
		c = { fg = OzdaluColors.white, bg = insertColor.dark },

	},

	visual = {
		a = { fg = OzdaluColors.black, bg = visualColor.light, gui = 'bold' },
		b = { fg = OzdaluColors.white, bg = visualColor.neutral, gui = 'bold' },
		c = { fg = OzdaluColors.white, bg = visualColor.dark, gui = 'bold' },
	},

	replace = {
		a = { fg = OzdaluColors.white, bg = replaceColor.light, gui = 'bold' },
		b = { fg = OzdaluColors.white, bg = replaceColor.neutral, gui = 'bold' },
		c = { fg = OzdaluColors.white, bg = replaceColor.dark, gui = 'bold' },
	},

	command = {
		a = { fg = OzdaluColors.black, bg = OzdaluColors.green, gui = 'bold' },
	},

	inactive = {
		a = { fg = OzdaluColors.white, bg = OzdaluColors.black },
		b = { fg = OzdaluColors.white, bg = OzdaluColors.black },
		c = { fg = OzdaluColors.white, bg = OzdaluColors.black },
	},
}

require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = my_theme,
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {
			{
				'filename',
				file_status = true,
				newfile_status = false,
				path = 1,
				shorting_target = 40,
				symbols = {
					modified = '',
					readonly = '󰈈',
					unnamed = '[No Name]',
					newfile = '',
				 }
			}
		},
		lualine_x = {'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
		{
				'filename',
				file_status = true,
				newfile_status = false,
				path = 1,
				shorting_target = 40,
				symbols = {
					modified = '',
					readonly = '󰈈',
					unnamed = '[No Name]',
					newfile = '',
				 }
			}
		},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {}
}

LualineHighlights()
