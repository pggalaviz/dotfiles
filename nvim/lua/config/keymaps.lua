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

-- Insert blank line up/down cursor position in normal mode
vim.api.nvim_set_keymap("n", "<leader><cr>", "o<esc>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><bs>", "O<esc>", { noremap = true })

-- Don't add single character removal to the default registry
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true })
vim.api.nvim_set_keymap("v", "x", '"_d', {})

-- Remove line/selection without adding it to the default registry
vim.api.nvim_set_keymap("n", "X", '"_dd', {})
vim.api.nvim_set_keymap("v", "X", '"_d', {})

-- When changing text, don't add it to default registry
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true })
vim.api.nvim_set_keymap("v", "c", '"_c', { noremap = true })
vim.api.nvim_set_keymap("n", "C", '"_C', { noremap = true })
vim.api.nvim_set_keymap("v", "C", '"_C', { noremap = true })

-- " Make Y consistent with C and D
vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })
