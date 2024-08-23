return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        -- exclude a filetype from the default_config
        filetypes_exclude = { "markdown" },
        -- add additional filetypes to the default_config
        filetypes_include = {},
        -- to fully override the default_config, change the below
        -- filetypes = {}

        settings = {
          tailwindCSS = {
            classAttributes = {
              "class",
              "className",
              "class:list",
              "classList",
              "ngClass",
              "cva",
              -- add your additional attributes here
            },
            experimental = {
              classRegex = {
                { "clsx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                { "cva\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                "className[a-zA-Z]*='([^']*)'",
                "[a-zA-Z]*Class[:]* '([^']*)'",
                "className[:]* '([^']*)'",
              },
            },
            validate = false, -- disable validate becuase if using cva it'll warn all over the place
          },
        },
      },
    },
    setup = {
      tailwindcss = function(_, opts)
        local tw = require("lspconfig.server_configurations.tailwindcss")
        opts.filetypes = opts.filetypes or {}
        -- tw.default_config.settings.tailwindCSS.classAttributes

        -- Add default filetypes
        vim.list_extend(opts.filetypes, tw.default_config.filetypes)

        -- Remove excluded filetypes
        --- @param ft string
        opts.filetypes = vim.tbl_filter(function(ft)
          return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
        end, opts.filetypes)

        -- Add additional filetypes
        vim.list_extend(opts.filetypes, opts.filetypes_include or {})
      end,
    },
  },
}
