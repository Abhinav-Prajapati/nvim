-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereb
-- Keybinding to toggle the outline view
vim.api.nvim_set_keymap("n", "<leader>o", ":FlutterOutlineToggle<CR>", { noremap = true, silent = true })
