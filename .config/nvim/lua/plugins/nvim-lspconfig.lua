return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        -- Hijack tailwindcss server setup to inject our settings
        tailwindcss = function(_, opts)
          opts.settings = vim.tbl_deep_extend("force", opts.settings or {}, {
            tailwindCSS = {
              classFunctions = { "cva", "cx", "cn" },
              -- or experimental = { classRegex = { … } }
            },
          })
          require("lspconfig").tailwindcss.setup(opts)
          return true
        end,
      },
    },
  },
}
