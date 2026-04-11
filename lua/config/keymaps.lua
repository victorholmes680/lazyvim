-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Emacs style keybindings
vim.keymap.set("i", "<C-a>", "<C-o>^")
vim.keymap.set("n", "<C-a>", "^")
vim.keymap.set("i", "<C-e>", "<C-o>$")
vim.keymap.set("n", "<C-e>", "$")
vim.keymap.set("i", "<C-f>", "<Right>")
vim.keymap.set("i", "<C-b>", "<Left>")
vim.keymap.set("n", "<C-x><C-s>", ":w<CR>")
vim.keymap.set("i", "<C-x><C-s>", "<Esc>:w<CR>")
