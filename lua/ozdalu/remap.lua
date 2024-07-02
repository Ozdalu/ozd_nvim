vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ff", vim.cmd.TelescopeFindFiles)
vim.keymap.set("n", "<leader>ps", vim.cmd.TelescopeGrep)
vim.keymap.set("n", "<leader>pu", vim.cmd.TelescopeGrepUnder)
vim.keymap.set("n", "<leader>fr", vim.cmd.TelescopeReferences)
vim.keymap.set("n", "<leader>pr", vim.cmd.LspRename)
vim.keymap.set("n", "<leader>fo", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>hc", vim.cmd.CccHighlighterToggle)
vim.keymap.set("n", "<C-b>", vim.cmd.NvimTreeToggle)
vim.keymap.set({"n", "v"}, "<C-k>", "<C-u>zz")
vim.keymap.set({"n", "v"}, "<C-j>", "<C-d>zz")
vim.keymap.set({"n", "v", "o"}, "<C-l>", "$", {remap = true})
vim.keymap.set({"n", "v", "o"}, "<C-h>", "^", {remap = true})
vim.keymap.set({"n", "v", "o"}, "&", "%", {remap = true})
vim.keymap.set("n", "²", "`", {remap = true})
vim.keymap.set("n", "<leader>l", "<Cmd>nohlsearch<CR><C-L>")

vim.keymap.set({"n", "t"}, "<A-ù>", vim.cmd.FTermToggle)

vim.keymap.set("n", "<leader>ha", vim.cmd.HarpoonMark)
vim.keymap.set("n", "<leader>hh", vim.cmd.HarpoonToggle)
vim.keymap.set("n", "<leader>hy", vim.cmd.HarpoonNavigate1)
vim.keymap.set("n", "<leader>hu", vim.cmd.HarpoonNavigate2)
vim.keymap.set("n", "<leader>hi", vim.cmd.HarpoonNavigate3)
vim.keymap.set("n", "<leader>ho", vim.cmd.HarpoonNavigate4)
vim.keymap.set("n", "<leader>hj", vim.cmd.HarpoonNavigate5)
vim.keymap.set("n", "<leader>hk", vim.cmd.HarpoonNavigate6)
vim.keymap.set("n", "<leader>hl", vim.cmd.HarpoonNavigate7)

vim.keymap.set("n", "<leader>pb", vim.cmd.GitsignsBlame)
vim.keymap.set("n", "<leader>pB", vim.cmd.GitsignsLineBlame)
vim.keymap.set("n", "<leader>pd", vim.cmd.GitsignsWordDiff)
vim.keymap.set("n", "<leader>pD", vim.cmd.GitsignsDiffThis)
vim.keymap.set("n", "<leader>pS", vim.cmd.TSCaptureUnderCursor)

vim.keymap.set("n", "<leader>pe", vim.cmd.LspLinesToggle)
vim.keymap.set("n", "<leader>ge", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>gE", vim.diagnostic.goto_prev)

vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")

vim.keymap.set({"v", "o"}, "<leader>a\"", "c\"\"<Esc>P")
vim.keymap.set({"v", "o"}, "<leader>a\'", "c\'\'<Esc>P")

-- () {} []
vim.keymap.set("i", "(", "()<Left>", {remap = false})
vim.keymap.set("i", "[", "[]<Left>", {remap = false})
vim.keymap.set("i", "{", "{}<Left>", {remap = false})

-- Snippets
--- Console.log
---- No content
vim.keymap.set("n", "<leader>,cll", ":-1read ~/.config/nvim/snippets/console.log.snippet\Ei", {remap = false})
---- Parenthesis around selection
vim.keymap.set({"v", "o"}, "<leader>,cl(", "mgomb`ga)`gbiconsole.log(%", {remap = false})
vim.keymap.set({"v", "o"}, "<leader>,cl)", "mgomb`ga)`gbiconsole.log(%", {remap = false})
---- ' or " around selection
vim.keymap.set({"v", "o"}, "<leader>,cl\'", "mgomb`ga\')`gbiconsole.log(\'%", {remap = false})
vim.keymap.set({"v", "o"}, "<leader>,cl\"", "mgomb`ga\")`gbiconsole.log(\"%", {remap = false})
