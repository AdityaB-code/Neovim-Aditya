-- Map Ctrl+Backspace in insert mode to delete previous word
vim.api.nvim_set_keymap('i', '<C-H>', '<C-o>db', { noremap = true })
