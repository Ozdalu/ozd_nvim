vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ff", vim.cmd.TelescopeFindFiles, { desc = "Find file"})
vim.keymap.set("n", "<leader>ps", vim.cmd.TelescopeGrep, { desc = "Grep prompt"})
vim.keymap.set("n", "<leader>pu", vim.cmd.TelescopeGrepUnder, { desc = "Grep word under cursor"})
vim.keymap.set("n", "<leader>fr", vim.cmd.TelescopeReferences, { desc = "Find references of content under cursor"})
vim.keymap.set("n", "<leader>fd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Find definition of content under cursor"})
vim.keymap.set("n", "<leader>fD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Find declaration of content under cursor"})
vim.keymap.set("n", "<leader>pr", vim.lsp.buf.rename, { desc = "Rename variable/func under cursor"})
vim.keymap.set("n", "<leader>fo", vim.cmd.NvimTreeFindFile, { desc = "Select file in NvimTree"})
vim.keymap.set("n", "<leader>hc", vim.cmd.CccHighlighterToggle, { desc = "Toggle color highlighting"})
vim.keymap.set("n", "<C-b>", vim.cmd.NvimTreeToggle, { desc = "Toggle NvimTree"})
vim.keymap.set({"n", "v"}, "<C-k>", "<C-u>zz", { desc = "Page up and center"})
vim.keymap.set({"n", "v"}, "<C-j>", "<C-d>zz", { desc = "Page down and center"})
vim.keymap.set({"n", "v", "o"}, "<C-l>", "$", {remap = true, desc = "Go to line beginning"})
vim.keymap.set({"n", "v", "o"}, "<C-h>", "^", {remap = true, desc = "Go to line end"})
vim.keymap.set({"n", "v", "o"}, "&", "%", {remap = true})
vim.keymap.set("n", "²", "`", {remap = true, desc = "Jump to the mark"})
vim.keymap.set("n", "<leader>l", "<Cmd>nohlsearch<CR><C-L>", { desc = "Clear search highlight"})

vim.keymap.set({"n", "t"}, "<A-ù>", vim.cmd.FTermToggle, { desc = "Toggle floating terminal"})

vim.keymap.set("n", "<leader>ha", vim.cmd.HarpoonMark, { desc = "Add to Harpoon"})
vim.keymap.set("n", "<leader>hh", vim.cmd.HarpoonToggle, { desc = "Toggle Harpoon"})
vim.keymap.set("n", "<leader>hy", vim.cmd.HarpoonNavigate1, { desc = "Go to Harpoon file 1"})
vim.keymap.set("n", "<leader>hu", vim.cmd.HarpoonNavigate2, { desc = "Go to Harpoon file 2"})
vim.keymap.set("n", "<leader>hi", vim.cmd.HarpoonNavigate3, { desc = "Go to Harpoon file 3"})
vim.keymap.set("n", "<leader>ho", vim.cmd.HarpoonNavigate4, { desc = "Go to Harpoon file 4"})
vim.keymap.set("n", "<leader>hj", vim.cmd.HarpoonNavigate5, { desc = "Go to Harpoon file 5"})
vim.keymap.set("n", "<leader>hk", vim.cmd.HarpoonNavigate6, { desc = "Go to Harpoon file 6"})
vim.keymap.set("n", "<leader>hl", vim.cmd.HarpoonNavigate7, { desc = "Go to Harpoon file 7"})

vim.keymap.set("n", "<leader>pb", vim.cmd.GitsignsBlame, { desc = "Git blame in window"})
vim.keymap.set("n", "<leader>pB", vim.cmd.GitsignsLineBlame, { desc = "Git blame inline"})
vim.keymap.set("n", "<leader>pd", vim.cmd.GitsignsWordDiff, { desc = "See diffs in file"})
vim.keymap.set("n", "<leader>pD", vim.cmd.GitsignsDiffThis, { desc = "See diffs in new pane"})
vim.keymap.set("n", "<leader>pS", vim.cmd.TSCaptureUnderCursor, { desc = "See highlight group under cursor"})

vim.keymap.set("n", "<leader>pe", vim.cmd.LspLinesToggle, { desc = "Toggle errors in virtual lines"})
vim.keymap.set("n", "<leader>ge", function() vim.diagnostic.jump({count=1, float=true}) end, { desc = "Go to next error"})
vim.keymap.set("n", "<leader>gE", function() vim.diagnostic.jump({count=-1, float=true}) end, { desc = "Go to previous error"})


vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move visual block 1 line above"})
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move visual block 1 line below"})

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without registering in register"})

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y", { desc = "Copy to computer clipboard"})

-- " ' `{
vim.keymap.set({"v", "o"}, "<leader>a\"", "c\"\"<Esc>P", { desc = "Add \"\" around selection"})
vim.keymap.set({"v", "o"}, "<leader>a\'", "c\'\'<Esc>P", { desc = "Add \'\' around selection"})
vim.keymap.set({"v", "o"}, "<leader>a`", "c``<Esc>P", { desc = "Add `` around selection"})
vim.keymap.set({"v", "o"}, "<leader>a{", "c{}<Esc>P", { desc = "Add {} around selection"})
vim.keymap.set({"v", "o"}, "<leader>a}", "c{}<Esc>P", { desc = "Add {} around selection"})


-- Snippets
--- Console.log
---- No content
vim.keymap.set("n", "<leader>,cll", ":-1read ~/.config/nvim/snippets/console.log.snippet\Ei", {remap = false})
---- 'Step 1'
vim.keymap.set("n", "<leader>,clL", ":-1read ~/.config/nvim/snippets/console.log.snippet\Ei\'Step 1\'h", {remap = false})
---- Parenthesis around selection
vim.keymap.set({"v", "o"}, "<leader>,cl(", "mgomb`ga)`gbiconsole.log(%", {remap = false})
vim.keymap.set({"v", "o"}, "<leader>,cl)", "mgomb`ga)`gbiconsole.log(%", {remap = false})
---- ' or " or ` around selection
vim.keymap.set({"v", "o"}, "<leader>,cl\'", "mgomb`ga\')`gbiconsole.log(\'%", {remap = false})
vim.keymap.set({"v", "o"}, "<leader>,cl\"", "mgomb`ga\")`gbiconsole.log(\"%", {remap = false})
vim.keymap.set({"v", "o"}, "<leader>,cl`", "mgomb`ga`)`gbiconsole.log(`%", {remap = false})
