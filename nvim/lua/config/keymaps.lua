-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "J", "5j", { noremap = true })
vim.api.nvim_set_keymap("n", "K", "5k", { noremap = true })

--  Use '<' and '>' for indenting in normal mode
vim.api.nvim_set_keymap("n", "<", "<<_", { noremap = true })
vim.api.nvim_set_keymap("n", ">", ">>_", { noremap = true })

-- ESC from insert mode
vim.api.nvim_set_keymap("i", "jk", "<Esc>", {})
vim.api.nvim_set_keymap("i", "kj", "<Esc>", {})

-- Join lines and restore cursor location
vim.api.nvim_set_keymap("n", "<Leader>j", "mjJ`j", { noremap = true })

-- Easy jump closings without leaving home row or insert mode
vim.api.nvim_set_keymap("i", "ii", "<Esc>la", {})

-- Use Option + up/down arrows since Latin American
-- spanish keyboard dont support <A-j> or <A-k>
vim.api.nvim_set_keymap("n", "<A-down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.api.nvim_set_keymap("n", "<A-up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.api.nvim_set_keymap("i", "<A-down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.api.nvim_set_keymap("i", "<A-up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.api.nvim_set_keymap("v", "<A-down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.api.nvim_set_keymap("v", "<A-up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
