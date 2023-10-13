vim.api.nvim_set_hl(0, "Pmenu", { bg = OrmaazdColors.purples.neutral })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = OrmaazdColors.purples.dark })

vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = OrmaazdColors.white })

function LualineHighlights()
	vim.api.nvim_set_hl(0, "lualine_b_diff_modified_insert", { fg = OrmaazdColors.blues.dark, bg = OrmaazdColors.oranges.neutral})
	vim.api.nvim_set_hl(0, "lualine_b_diff_added_insert", { fg = '#007821', bg = OrmaazdColors.oranges.neutral })

	vim.api.nvim_set_hl(0, "lualine_b_diff_removed_normal", { fg = OrmaazdColors.blues.light, bg = OrmaazdColors.purples.neutral })

	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_warn_insert", { fg = OrmaazdColors.reds.dark, bg = OrmaazdColors.oranges.neutral })
	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_info_insert", { fg = OrmaazdColors.blues.dark, bg = OrmaazdColors.oranges.neutral })
	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_hint_insert", { fg = OrmaazdColors.purples.dark, bg = OrmaazdColors.oranges.neutral })
end
