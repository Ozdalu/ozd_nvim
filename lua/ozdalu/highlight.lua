vim.api.nvim_set_hl(0, "Pmenu", { bg = OzdaluColors.purples.neutral })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = OzdaluColors.purples.dark })

vim.api.nvim_set_hl(0, "Identifier", { fg = OzdaluColors.blues.light})
vim.api.nvim_set_hl(0, "Statement", { fg = OzdaluColors.oranges.light, bold = true })
vim.api.nvim_set_hl(0, "Special", { fg = OzdaluColors.oranges.neutral })
vim.api.nvim_set_hl(0, "Type", { fg = OzdaluColors.green, bold = true})
vim.api.nvim_set_hl(0, "Number", { fg = OzdaluColors.purples.light })
vim.api.nvim_set_hl(0, "Comment", { fg = OzdaluColors.purples.neutral})

vim.api.nvim_set_hl(0, "@variable.builtin", { fg = OzdaluColors.purples.light, italic = true })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = OzdaluColors.green, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@property", { fg = OzdaluColors.white })
vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
vim.api.nvim_set_hl(0, "@variable", { fg = OzdaluColors.white })
vim.api.nvim_set_hl(0, "@lsp.type.variable", { link = "@variable" })
vim.api.nvim_set_hl(0, "@parameter", { link = "@variable" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@parameter" })

-- Go TreeSitter highlights
vim.api.nvim_set_hl(0, "@include.go", { fg = OzdaluColors.purples.light })
vim.api.nvim_set_hl(0, "@field.go", { fg = OzdaluColors.white })
vim.api.nvim_set_hl(0, "@type.builtin.go", { fg = OzdaluColors.green, italic = true})

function LualineHighlights()
	vim.api.nvim_set_hl(0, "lualine_b_diff_modified_insert", { fg = OzdaluColors.blues.dark, bg = OzdaluColors.oranges.neutral})
	vim.api.nvim_set_hl(0, "lualine_b_diff_added_insert", { fg = '#007821', bg = OzdaluColors.oranges.neutral })

	vim.api.nvim_set_hl(0, "lualine_b_diff_modified_normal", { fg = OzdaluColors.purples.light, bg = OzdaluColors.purples.neutral})
	vim.api.nvim_set_hl(0, "lualine_b_diff_removed_normal", { fg = OzdaluColors.blues.light, bg = OzdaluColors.purples.neutral })

	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_warn_insert", { fg = OzdaluColors.reds.dark, bg = OzdaluColors.oranges.neutral })
	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_info_insert", { fg = OzdaluColors.blues.dark, bg = OzdaluColors.oranges.neutral })
	vim.api.nvim_set_hl(0, "lualine_b_diagnostic_hint_insert", { fg = OzdaluColors.purples.dark, bg = OzdaluColors.oranges.neutral })
end

-- GitSigns highlights
vim.api.nvim_set_hl(0, "DiffAdd", { fg = OzdaluColors.green, bg = "none" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = OzdaluColors.reds.light, bg = "none" })
vim.api.nvim_set_hl(0, "DiffChange", { fg = OzdaluColors.purples.neutral, bg = "none" })

