return {
  "nvim-telescope/telescope-live-grep-args.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    local lga_actions = require("telescope-live-grep-args.actions")
    opts.extensions = {
      live_grep_args = {
        auto_quoting = true, -- enable/disable auto-quoting
        -- define mappings, e.g.
        mappings = { -- extend mappings
          i = {
            ["<C-q>"] = lga_actions.quote_prompt(),
            ["<C-a>"] = lga_actions.quote_prompt({ postfix = " --hidden --no-ignore " }),
            ["<C-g>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
            -- freeze the current list and start a fuzzy search in the frozen list
            ["<C-space>"] = lga_actions.to_fuzzy_refine,
          },
        },
        -- ... also accepts theme settings, for example:
        -- theme = "dropdown", -- use dropdown theme
        -- theme = { }, -- use own theme spec
        -- layout_config = { mirror=true }, -- mirror preview pane
      },
    }
  end,
  config = function(_, opts)
    local tele = require("telescope")
    tele.setup(opts)
    tele.load_extension("live_grep_args")
  end,
}
