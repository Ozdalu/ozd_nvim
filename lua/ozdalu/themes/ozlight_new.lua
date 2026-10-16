local M = {}
local hl = vim.api.nvim_set_hl
local OC = OzdaluColors

function M.load()
	---- UI
	hl(0, "Normal", { bg = OC.specials.white_blue_grey, fg = OzdaluColors.greys.dark })
	hl(0, "Added", { fg = OC.green } )
	hl(0, "Changed", {  fg = OC.purples.neutral, bg = "none" })
	hl(0, "ColorColumn", { bg = OC.white }) --/ New
	hl(0, "Conceal", { fg = OC.greys.neutral }) --/ New
	hl(0, "CurSearch", { bg = OC.oranges.neutral, fg = OC.greys.dark })
	hl(0, "CursorColumn", { bg = OC.purples.dark })
	hl(0, "CursorLine", { bg = OC.purples.light })
	hl(0, "DiffAdd", { bg = OC.green, fg = OC.black }) --/ New
	hl(0, "DiffChange", { bg = OC.purples.dark, fg = OC.white }) --/ New
	hl(0, "DiffDelete", { bg = OC.reds.neutral, fg = OC.white }) --/ New
	hl(0, "DiffText", { bg = OC.purples.light, fg = OC.black }) --/ New
	hl(0, "Directory", { fg = OC.blues.neutral })
	hl(0, "ErrorMsg", { fg = OC.reds.light})
	hl(0, "FloatShadow", { bg = OC.purples.neutral }) --/ New
	hl(0, "FloatShadowThrough", { link = "FloatShadow" }) -- Not linked by default --/ New
	hl(0, "Folded", { bg = OC.greys.light , fg = OC.blues.neutral })
	hl(0, "LineNr", { bg = "none", fg = OC.oranges.neutral })
	hl(0, "MatchParen", { bg = OC.blues.neutral, fg = OC.white })
	hl(0, "ModeMsg", { fg = OC.purples.light }) --/ New
	hl(0, "MoreMsg", { fg = OC.purples.light }) --/ New
	hl(0, "NonText", { bg = "none", fg = OC.blues.neutral }) --/ New
	hl(0, "NormalFloat", { bg = OC.white, fg = OC.black })
	hl(0, "OkMsg", { fg = OC.green }) --/ New
	hl(0, "Pmenu", { bg = OzdaluColors.purples.neutral, fg = OzdaluColors.white })
	hl(0, "PmenuSel", { bg = OzdaluColors.purples.light, fg = OzdaluColors.white })
	hl(0, "PmenuThumb", { bg = OC.purples.light }) --/ New
	hl(0, "Question", { fg = OC.green })
	hl(0, "QuickFixLine", { fg = OC.oranges.neutral }) --/ New
	hl(0, "RedrawDebugClear", { bg = OC.oranges.neutral }) --/ New
	hl(0, "RedrawDebugComposed", { bg = OC.greys.dark }) --/ New
	hl(0, "RedrawDebugRecomposed", { bg = OC.reds.neutral }) --/ New
	hl(0, "Removed", { fg = OC.reds.light, bg = "none" })
	hl(0, "Search", { bg = OC.oranges.light, fg = OC.greys.dark })
	hl(0, "SignColumn", { bg = "none" })
	hl(0, "SpecialKey", { fg = OC.purples.light }) --/ New
	hl(0, "SpellBad", { sp = OC.specials.salmon, undercurl = true }) --/ New
	hl(0, "SpellCap", { sp = OC.purples.neutral, undercurl = true }) --/ New
	hl(0, "SpellLocal", { sp = OC.oranges.light, undercurl = true }) --/ New
	hl(0, "SpellRare", { sp = OC.oranges.neutral, undercurl = true }) --/ New
	hl(0, "StatusLine", { fg = OC.white, bg = OC.purples.dark }) --/ New
	hl(0, "StatusLineNC", { fg = OC.black, bg = "none" })
	hl(0, "Title", { fg = OC.purples.dark, bold = true })
	hl(0, "Visual", { bg = OC.purples.light, fg = OC.white })
	hl(0, "WarningMsg", { fg = OC.oranges.dark }) --/ New
	hl(0, "WinBar", { bg = OC.purples.dark, fg = OC.white }) --/ New
	hl(0, "WinBarNC", { bg = OC.purples.dark, fg = OC.purples.neutral }) --/ New

	---- Syntax
	hl(0, "Constant", { fg = OC.oranges.neutral })
	hl(0, "Delimiter", { fg = OC.greys.neutral })
	hl(0, "Operator", { fg = OC.greys.neutral })
	hl(0, "PreProc", { fg = OC.greys.neutral })
	hl(0, "Type", { fg = OC.purples.light, bold = true })

	hl(0, "Comment", { fg = OC.greys.light })
	hl(0, "Error", { fg = OC.black, bg = OC.reds.neutral }) --/ New
	hl(0, "Function", { link = "Identifier" }) -- Not linked by default
	hl(0, "Identifier", { fg = OC.blues.neutral })
	hl(0, "Special", { fg = OC.oranges.neutral })
	hl(0, "Statement", { fg = OC.oranges.neutral, bold = true })
	hl(0, "String", { fg = OC.specials.blue_grey })
	hl(0, "Todo", { fg = OC.blues.dark })
	hl(0, "@variable", { fg = OC.greys.neutral })

	---- Diagnostic
	hl(0, "DiagnosticDeprecated", { sp = OC.reds.dark, strikethrough = true }) --/ New
	hl(0, "DiagnosticError", { fg = OC.reds.light })
	hl(0, "DiagnosticHint", { fg = OC.greys.neutral })
	hl(0, "DiagnosticInfo", { fg = OC.oranges.light }) --/ New
	hl(0, "DiagnosticOk", { fg = OC.green }) --/ New
	hl(0, "DiagnosticUnderlineError", { sp = OC.reds.light, underline = true }) --/ New
	hl(0, "DiagnosticUnderlineHint", { sp = OC.greys.neutral, underline = true }) --/ New
	hl(0, "DiagnosticUnderlineOk", { sp = OC.green, underline = true }) --/ New
	hl(0, "DiagnosticUnderlineWarn", { sp = OC.reds.neutral, underline = true }) --/ New
	hl(0, "DiagnosticWarn", { fg = OC.oranges.dark })

	---- Linked by default
	hl(0, "@property", { fg = OC.purples.light }) -- Default link Identifier
	hl(0, "@type.builtin", { fg = OC.purples.light, italic = true }) -- Default link Special
	hl(0, "@variable.builtin", { fg = OC.purples.normal, italic = true }) -- Default link Special
	hl(0, "Number", { fg = OC.purples.light }) -- Default link Constant
	hl(0, "WinSeparator", { fg = OC.purples.neutral, bg = "none" }) -- Default link Normal

	-- NvimTree
 	hl(0, "NvimTreeNormal", { bg = OC.specials.pink_grey, fg = OC.greys.dark })
end

return M
