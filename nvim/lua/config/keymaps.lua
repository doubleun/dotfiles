-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- tabs (buffer)
vim.keymap.set("n", "<C-Tab>", "<cmd>bnext<cr>", { desc = "next buffer" })
-- vim.keymap.set("n", "<C-S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

-- vim.keymap.set("n", "<M-Esc>", require("cmp").mapping.complete(), { desc = "next buffer" })

-- oil.nvim
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
