local normalColor = OrmaazdColors.purples
local insertColor = OrmaazdColors.oranges
local visualColor = OrmaazdColors.blues
local replaceColor = OrmaazdColors.reds

local my_theme = {
	normal = {
		a = { fg = OrmaazdColors.black, bg = normalColor.light, gui = 'bold' },
		b = { fg = OrmaazdColors.white, bg = normalColor.neutral, },
		c = { fg = OrmaazdColors.white, bg = normalColor.dark },
	},

	insert = {
		a = { fg = OrmaazdColors.black, bg = insertColor.light, gui = 'bold' } ,
		b = { fg = OrmaazdColors.black, bg = insertColor.neutral, gui = 'bold' } ,
		c = { fg = OrmaazdColors.white, bg = insertColor.dark },

	},

	visual = {
		a = { fg = OrmaazdColors.black, bg = visualColor.light, gui = 'bold' },
		b = { fg = OrmaazdColors.white, bg = visualColor.neutral, gui = 'bold' },
		c = { fg = OrmaazdColors.white, bg = visualColor.dark, gui = 'bold' },
	},

	replace = {
		a = { fg = OrmaazdColors.white, bg = replaceColor.light, gui = 'bold' },
		b = { fg = OrmaazdColors.white, bg = replaceColor.neutral, gui = 'bold' },
		c = { fg = OrmaazdColors.white, bg = replaceColor.dark, gui = 'bold' },
	},

	command = {
		a = { fg = OrmaazdColors.black, bg = OrmaazdColors.green, gui = 'bold' },
	},

	inactive = {
		a = { fg = OrmaazdColors.white, bg = OrmaazdColors.black },
		b = { fg = OrmaazdColors.white, bg = OrmaazdColors.black },
		c = { fg = OrmaazdColors.white, bg = OrmaazdColors.black },
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
