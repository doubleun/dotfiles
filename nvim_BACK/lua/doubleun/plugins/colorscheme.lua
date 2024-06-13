return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function ()
    require("catppuccin").setup({
      flavour = "macchiato",
      transparent_background = true, -- disables setting the background color.
      custom_highlights = function(colors)
        return {
          LineNr = { fg = "#888faf" },
          -- LineNr = { fg = colors.subtext2, bg = "#262840" }, -- idea for using bg
       }
      end
    })

    vim.cmd("colorscheme catppuccin")
  end
}
