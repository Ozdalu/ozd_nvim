vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ff", vim.cmd.TelescopeFindFiles)
vim.keymap.set("n", "<leader>ps", vim.cmd.TelescopeGrep)
vim.keymap.set("n", "<leader>fo", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>hc", vim.cmd.CccHighlighterToggle)
vim.keymap.set("n", "<C-b>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-k>", "<PageUp>")
vim.keymap.set("n", "<C-j>", "<PageDown>")

vim.keymap.set("n", "<A-ù>", vim.cmd.FTermToggle)
vim.keymap.set("t", "<A-ù>", vim.cmd.FTermClose)

vim.keymap.set("n", "<leader>ha", vim.cmd.HarpoonMark)
vim.keymap.set("n", "<leader>hh", vim.cmd.HarpoonToggle)
vim.keymap.set("n", "<leader>hy", vim.cmd.HarpoonNavigate1)
vim.keymap.set("n", "<leader>hu", vim.cmd.HarpoonNavigate2)
vim.keymap.set("n", "<leader>hi", vim.cmd.HarpoonNavigate3)
vim.keymap.set("n", "<leader>ho", vim.cmd.HarpoonNavigate4)

vim.keymap.set("n", "<leader>pb", vim.cmd.GitsignsBlame)

vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
