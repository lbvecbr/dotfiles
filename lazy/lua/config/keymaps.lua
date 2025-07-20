-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<C-L>")

vim.keymap.set("i", "jk", "<esc>", { desc = "jk => esc" })
vim.keymap.set("v", "jk", "<esc>", { desc = "jk => esc" })
vim.keymap.set("i", ";;", "<Right>", { desc = ";; => Right" })
--vim.keymap.set("n", "L", "<C-w>l", { desc = "Go to the Right window" })
--vim.keymap.set("n", "H", "<C-w>h", { desc = "Go to the Left window" })
vim.keymap.set("t", ",,", "<C-\\><C-n><C-w>k", { desc = "Go from terminal" })
vim.keymap.set("n", ",,", "<C-w>w", { desc = "Go to the terminal" })
