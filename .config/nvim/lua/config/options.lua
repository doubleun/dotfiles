-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.guifont = "Inconsolata Nerd Font Mono:h10:#e-subpixelantialias"
vim.opt.winbar = "%=%m %f"

-- vim.g.lazyvim_eslint_auto_format = true
vim.g.autoformat = true

-- vim.diagnostic.config({ virtual_lines = { current_line = true } })

-- CUSTOM_MACROS --
local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  callback = function()
    vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa:" .. esc .. "la, " .. esc .. "pl")
  end,
})
