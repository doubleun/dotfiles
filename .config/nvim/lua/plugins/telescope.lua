return {}
-- deprecated to fzf_lua
-- return {
--   "nvim-telescope/telescope.nvim",
--   keys = {
--     { "<leader>/", ":Telescope live_grep_args<CR>", desc = "Live Grep" },
--     {
--       "<leader><space>",
--       function()
--         require("telescope.builtin").find_files({
--           find_command = {
--             "rg",
--             "--files",
--             "--hidden",
--             "--no-ignore",
--             "--glob",
--             "!**/.git/*",
--             "--glob",
--             "!**/node_modules/*",
--           },
--           prompt_title = "Find All Files (Excluding node_modules)",
--         })
--       end,
--       desc = "Find All Files (Excluding node_modules)",
--     },
--     {
--       "<leader>fC",
--       function()
--         require("telescope.builtin").find_files({
--           prompt_title = "Find .env Files",
--           cwd = vim.fn.getcwd(),
--           hidden = true,
--           find_command = { "rg", "--files", "--hidden", "-g", "**/.env*" },
--         })
--       end,
--       desc = "Find .env Files",
--     },
--   },
--   opts = function()
--     local actions = require("telescope.actions")
--
--     return {
--       defaults = {
--         mappings = {
--           i = {
--             ["<S-Down>"] = actions.preview_scrolling_down,
--             ["<S-Up>"] = actions.preview_scrolling_up,
--             ["<S-Right>"] = actions.preview_scrolling_right, -- scroll right
--             ["<S-Left>"] = actions.preview_scrolling_left, -- scroll left
--             ["<C-k>"] = actions.move_selection_previous, -- move to prev result
--             ["<C-j>"] = actions.move_selection_next, -- move to next result
--             ["<C-p>"] = actions.cycle_history_next,
--             ["<C-n>"] = actions.cycle_history_prev,
--             ["<C-Down>"] = actions.cycle_history_next,
--             ["<C-Up>"] = actions.cycle_history_prev,
--             ["<C-f>"] = actions.preview_scrolling_down,
--             ["<C-b>"] = actions.preview_scrolling_up,
--           },
--           n = {
--             ["q"] = actions.close,
--           },
--         },
--       },
--     }
--   end,
-- }
