vim.api.nvim_set_hl(0, "Pmenu", { bg = OrmaazdColors.purples.neutral })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = OrmaazdColors.purples.dark })

vim.api.nvim_set_hl(0, "Identifier", { fg = OrmaazdColors.blues.light})
vim.api.nvim_set_hl(0, "Statement", { fg = OrmaazdColors.oranges.light, bold = true })
vim.api.nvim_set_hl(0, "Special", { fg = OrmaazdColors.oranges.neutral })
vim.api.nvim_set_hl(0, "Type", { fg = OrmaazdColors.green, bold = true})
vim.api.nvim_set_hl(0, "Number", { fg = OrmaazdColors.purples.light })
vim.api.nvim_set_hl(0, "Comment", { fg = OrmaazdColors.purples.neutral})

vim.api.nvim_set_hl(0, "@variable.builtin", { fg = OrmaazdColors.purples.light, italic = true })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = OrmaazdColors.green, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@property", { fg = OrmaazdColors.white })
vim.api.nvim_set_hl(0, "@variable", { fg = OrmaazdColors.white })
vim.api.nvim_set_hl(0, "@parameter", { link = "@variable" })

-- Go TreeSitter highlights
vim.api.nvim_set_hl(0, "@include.go", { fg = OrmaazdColors.purples.light })
vim.api.nvim_set_hl(0, "@field.go", { fg = OrmaazdColors.white })
vim.api.nvim_set_hl(0, "@type.go", { fg = OrmaazdColors.white })
vim.api.nvim_set_hl(0, "@type.builtin.go", { fg = OrmaazdColors.green, italic = true})

function LualineHighlights()
	vim.api.nvim_set_hl(0, "lualine_b_diff_modified_insert", { fg = OrmaazdColors.blues.dark, bg = OrmaazdColors.oranges.neutral})
	vim.api.nvim_set_hl(0, "lualine_b_diff_added_insert", { fg = '#007821', bg = OrmaazdColors.oranges.neutral })

	vim.api.nvim_set_hl(0, "lualine_b_diff_removed_normal", { fg = OrmaazdColors.blues.light, bg = OrmaazdColors.purples.neutral })

	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_warn_insert", { fg = OrmaazdColors.reds.dark, bg = OrmaazdColors.oranges.neutral })
	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_info_insert", { fg = OrmaazdColors.blues.dark, bg = OrmaazdColors.oranges.neutral })
	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_hint_insert", { fg = OrmaazdColors.purples.dark, bg = OrmaazdColors.oranges.neutral })
end
