return {
  {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      -- basic config from https://github.com/ThePrimeagen/harpoon/tree/harpoon2
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup({})
      -- REQUIRED

      -- setup harpoon with telescope
      -- basic telescope configuration
      -- local conf = require("telescope.config").values
      --
      -- local function toggle_telescope_with_harpoon(harpoon_files)
      --   local finder = function()
      --     local paths = {}
      --     for _, item in ipairs(harpoon_files.items) do
      --       table.insert(paths, item.value)
      --     end
      --
      --     return require("telescope.finders").new_table({
      --       results = paths,
      --     })
      --   end
      --
      --   local function swap_mark(index1, index2)
      --     local tmp = harpoon_files.items[index1]
      --     harpoon_files.items[index1] = harpoon_files.items[index2]
      --     harpoon_files.items[index2] = tmp
      --     return tmp
      --   end
      --
      --   require("telescope.pickers")
      --     .new({}, {
      --       prompt_title = "Harpoon",
      --       finder = finder(),
      --       previewer = conf.file_previewer({}),
      --       sorter = conf.generic_sorter({}),
      --       -- layout_config = {
      --       --   height = 0.4,
      --       --   width = 0.5,
      --       --   prompt_position = "top",
      --       --   preview_cutoff = 120,
      --       -- },
      --       attach_mappings = function(prompt_bufnr, map)
      --         -- map delete mark
      --         map("i", "<C-d>", function()
      --           local state = require("telescope.actions.state")
      --           local selected_entry = state.get_selected_entry()
      --           local current_picker = state.get_current_picker(prompt_bufnr)
      --
      --           table.remove(harpoon_files.items, selected_entry.index)
      --           current_picker:refresh(finder())
      --         end)
      --
      --         -- map move mark up
      --         map("i", "<C-Up>", function()
      --           local state = require("telescope.actions.state")
      --           local selected_entry = state.get_selected_entry()
      --           local current_picker = state.get_current_picker(prompt_bufnr)
      --
      --           swap_mark(selected_entry.index, selected_entry.index + 1)
      --           current_picker:refresh(finder())
      --         end)
      --
      --         return true
      --       end,
      --     })
      --     :find()
      -- end
      --
      -- -- telescope keybind
      -- vim.keymap.set("n", "<leader>a", function()
      --   -- local harpoon = require("harpoon")
      --   toggle_telescope_with_harpoon(harpoon:list())
      -- end, { desc = "Open harpoon window" })
    end,
    keys = {
      {
        "<leader>A",
        function()
          require("harpoon"):list():add()
        end,
        desc = "harpoon file",
      },
      {
        "<leader>a",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "harpoon quick menu",
      },
      {
        "<leader>1",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "harpoon to file 1",
      },
      {
        "<leader>2",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "harpoon to file 2",
      },
      {
        "<leader>3",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "harpoon to file 3",
      },
      {
        "<leader>4",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "harpoon to file 4",
      },
      {
        "<leader>5",
        function()
          require("harpoon"):list():select(5)
        end,
        desc = "harpoon to file 5",
      },
    },
  },
}
