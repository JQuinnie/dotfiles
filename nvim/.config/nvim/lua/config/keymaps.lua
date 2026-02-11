-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap jk to Esc
vim.keymap.set({ "i", "v", "t", "s" }, "jk", "<Esc>", { desc = "Escape to Normal Mode" })

-- Line navigation: gh for ^ (first non-blank), gl for $ (end of line)
vim.keymap.set({ "n", "v", "o" }, "gh", "^", { desc = "Go to first non-blank character" })
vim.keymap.set({ "n", "v", "o" }, "gl", "$", { desc = "Go to end of line" })

vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })
