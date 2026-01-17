local M = {}
local hl = vim.api.nvim_set_hl
local OC = OzdaluColors

function M.load()
	---- UI
	hl(0, "Normal", { bg = "none" })
	hl(0, "Added", { fg = OC.green })
	hl(0, "Changed", { fg = OC.purples.neutral, bg = "none" })
	hl(0, "ColorColumn", { bg = OC.reds.neutral })
	hl(0, "Conceal", { fg = OC.greys.light })
	hl(0, "CurSearch", { bg = OC.oranges.light, fg = OC.black })
	hl(0, "CursorColumn", { bg = OC.purples.dark })
	hl(0, "CursorLine", { bg = OC.purples.dark })
	hl(0, "DiffAdd", { bg = OC.green, fg = OC.black })
	hl(0, "DiffChange", { bg = OC.purples.dark, fg = OC.white })
	hl(0, "DiffDelete", { bg = OC.reds.neutral, fg = OC.white })
	hl(0, "DiffText", { bg = OC.purples.light, fg = OC.black })
	hl(0, "Directory", { fg = OC.blues.light })
	hl(0, "ErrorMsg", { fg = OC.reds.light})
	hl(0, "FloatShadow", { bg = OC.purples.neutral })
	hl(0, "FloatShadowThrough", { link = "FloatShadow" }) -- Not linked by default
	hl(0, "Folded", { bg = OC.purples.dark , fg = OC.greys.neutral })
	hl(0, "LineNr", { bg = "none", fg = OC.oranges.light })
	hl(0, "MatchParen", { bg = OC.blues.neutral, fg = OC.white })
	hl(0, "ModeMsg", { fg = OC.purples.light })
	hl(0, "MoreMsg", { fg = OC.purples.light })
	hl(0, "NonText", { bg = "none", fg = OC.blues.neutral })
	hl(0, "NormalFloat", { bg = OC.purples.dark })
	hl(0, "OkMsg", { fg = OC.green })
	hl(0, "Pmenu", { bg = OC.purples.neutral, fg = OC.white })
	hl(0, "PmenuSel", { bg = OC.purples.light, fg = OC.black })
	hl(0, "PmenuThumb", { bg = OC.purples.light })
	hl(0, "Question", { fg = OC.greys.light })
	hl(0, "QuickFixLine", { fg = OC.oranges.neutral })
	hl(0, "RedrawDebugClear", { bg = OC.oranges.neutral })
	hl(0, "RedrawDebugComposed", { bg = OC.greys.dark })
	hl(0, "RedrawDebugRecomposed", { bg = OC.reds.neutral })
	hl(0, "Removed", { fg = OC.reds.light, bg = "none" })
	hl(0, "Search", { bg = OC.oranges.neutral, fg = OC.black })
	hl(0, "SignColumn", { bg = "none" })
	hl(0, "SpecialKey", { fg = OC.purples.light })
	hl(0, "SpellBad", { sp = OC.specials.salmon, undercurl = true })
	hl(0, "SpellCap", { sp = OC.purples.neutral, undercurl = true })
	hl(0, "SpellLocal", { sp = OC.oranges.light, undercurl = true })
	hl(0, "SpellRare", { sp = OC.oranges.neutral, undercurl = true })
	hl(0, "StatusLine", { fg = OC.white, bg = OC.purples.dark })
	hl(0, "StatusLineNC", { fg = OC.white, bg = "none" })
	hl(0, "Title", { fg = OC.purples.light })
	hl(0, "Visual", { bg = OC.purples.neutral, fg = OC.white })
	hl(0, "WarningMsg", { fg = OC.oranges.dark })
	hl(0, "WinBar", { bg = OC.purples.dark, fg = OC.white })
	hl(0, "WinBarNC", { bg = OC.purples.dark, fg = OC.purples.neutral })

	---- Syntax
	hl(0, "Constant", { fg = OC.oranges.neutral })
	hl(0, "Operator", { fg = OC.greys.light })
	hl(0, "PreProc", { fg = OC.greys.neutral })
	hl(0, "Type", { fg = OC.green, bold = true })
	hl(0, "Delimiter", { fg = OC.greys.light })

	hl(0, "Comment", { fg = OC.purples.neutral })
	hl(0, "String", { fg = OC.specials.salmon })
	hl(0, "Identifier", { fg = OC.blues.light })
	hl(0, "Function", { link = "Identifier" }) -- Not linked by default
	hl(0, "Statement", { fg = OC.oranges.light, bold = true })
	hl(0, "Special", { fg = OC.oranges.neutral })
	hl(0, "Error", { fg = OC.black, bg = OC.reds.neutral })
	hl(0, "Todo", { fg = OC.blues.normal })
	hl(0, "@variable", { fg = OC.white })

	---- Diagnostic
	hl(0, "DiagnosticError", { fg = OC.reds.light })
	hl(0, "DiagnosticWarn", { fg = OC.reds.neutral })
	hl(0, "DiagnosticInfo", { fg = OC.oranges.light })
	hl(0, "DiagnosticHint", { fg = OC.greys.neutral })
	hl(0, "DiagnosticOk", { fg = OC.green })
	hl(0, "DiagnosticUnderlineError", { sp = OC.reds.light, underline = true })
	hl(0, "DiagnosticUnderlineWarn", { sp = OC.reds.neutral, underline = true })
	hl(0, "DiagnosticUnderlineHint", { sp = OC.greys.neutral, underline = true })
	hl(0, "DiagnosticUnderlineOk", { sp = OC.green, underline = true })
	hl(0, "DiagnosticDeprecated", { sp = OC.reds.dark, strikethrough = true })

	---- Linked by default
	hl(0, "WinSeparator", { fg = OC.white, bg = "none" }) -- Default link Normal
	hl(0, "Number", { fg = OC.purples.light }) -- Default link Constant
	hl(0, "@variable.builtin", { fg = OC.purples.light, italic = true }) -- Default link Special
	hl(0, "@type.builtin", { fg = OC.green, bold = true, italic = true }) -- Default link Special
	hl(0, "@property", { fg = OC.purples.light }) -- Default link Identifier

	-- NvimTree
	hl(0, "NvimTreeNormal", { link = "Normal" })
end

return M
