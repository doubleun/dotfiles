-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

vim.keymap.set("n", "<M-Up>", ":m -2<CR>", { desc = "Alt+Up move line above" }) -- move line up
vim.keymap.set("n", "<M-Down>", ":m +1<CR>", { desc = "Alt-Down move line below" }) -- move line up

-- tabs (buffer)
vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

-- oil.nvim
-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
