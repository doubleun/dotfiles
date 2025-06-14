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

        -- source issue: https://github.com/LazyVim/LazyVim/issues/5861
        -- source  code: https://github.com/iainlane/dotfiles/commit/1abe290bfe071b92a806eea62abadbab18ee63c3
        -- a copy of LazyVim's setup function with one change (marked inline) to fix
        -- auto-fixing on neovim 0.11.
        eslint = function()
          local function get_client(buf)
            return LazyVim.lsp.get_clients({ name = "eslint", bufnr = buf })[1]
          end

          local formatter = LazyVim.lsp.formatter({
            name = "eslint: lsp",
            primary = false,
            priority = 200,
            filter = "eslint",
          })

          -- Use EslintFixAll on Neovim < 0.10.0
          -- Changed from upstream: check the version explicitly instead of
          -- looking for `vim.lsp._require`. Seems like that check stopped working
          -- with Neovim 0.11.
          if vim.fn.has("nvim-0.10") == 0 then
            formatter.name = "eslint: EslintFixAll"
            formatter.sources = function(buf)
              local client = get_client(buf)
              return client and { "eslint" } or {}
            end
            formatter.format = function(buf)
              local client = get_client(buf)
              if client then
                local pull_diagnostics =
                  vim.diagnostic.get(buf, { namespace = vim.lsp.diagnostic.get_namespace(client.id, false) })
                -- Older versions of the ESLint language server send push
                -- diagnostics rather than using pull. We support both for
                -- backwards compatibility.
                local push_diagnostics =
                  vim.diagnostic.get(buf, { namespace = vim.lsp.diagnostic.get_namespace(client.id, true) })
                if (#pull_diagnostics + #push_diagnostics) > 0 then
                  vim.cmd("EslintFixAll")
                end
              end
            end
          end

          -- register the formatter with LazyVim
          LazyVim.format.register(formatter)
        end,
      },
    },
  },
}
