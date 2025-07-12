-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl+Backspace in insert mode to delete previous word
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })
