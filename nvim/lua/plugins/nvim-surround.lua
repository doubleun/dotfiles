-- ys -> insert surround
-- ds -> delete surround
-- cs -> change surround (input current, then replacement)
return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stabilits; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
        keymaps = {
          insert = "<C-g>s",
          insert_line = "<C-g>S",
          normal = "<M-s>y",
          normal_cur = "<M-S>ys",
          normal_line = "<M-S>yS",
          normal_cur_line = "<M-S>ySS",
          visual = "<M-s>v",
          visual_line = "gS",
          delete = "<M-s>d",
          change = "<M-s>c",
          change_line = "<M-S>c",
        },
      })
    end,
  },
}
