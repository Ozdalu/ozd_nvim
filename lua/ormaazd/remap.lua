vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)
vim.keymap.set("n", "<C-b>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-j>", "<PageDown>")
vim.keymap.set("n", "<C-k>", "<PageUp>")

vim.keymap.set("n", "<A-ù>", vim.cmd.FTermOpen)
vim.keymap.set("t", "<A-ù>", vim.cmd.FTermClose)
