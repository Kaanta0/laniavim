return {
  "neovim/nvim-lspconfig",
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  
  {
    'L3MON4D3/LuaSnip',
    config = function()
      --| KEYMAPS |--
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, false)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      cmp.setup({

        -- ... Your other configuration ...

        mapping = {

          -- OVERRIDES ARROW KEY USAGE
          ['<Down>'] = cmp.mapping(function(fallback)
          	cmp.close()
          	fallback()
          	end, { "i" }),
          ['<Up>'] = cmp.mapping(function(fallback)
          	cmp.close()
          	fallback()
          	end, { "i" }),

          -- ... Your other mappings ...

          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),

          -- ... Your other mappings ...
        },

        -- ... Your other configuration ...
      })
      require("luasnip.loaders.from_vscode").lazy_load()
    end
  },





  'saadparwaiz1/cmp_luasnip',
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require'cmp'
      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
        })
      })
      -- Set configuration for specific filetype.
      cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
          { name = 'buffer' },
        })
      })
      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })
      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      })


      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      local lspconfig = require('lspconfig')


      lspconfig['lua_ls'].setup {
        capabilities = capabilities
      }
      lspconfig['rust_analyzer'].setup {
        capabilities = capabilities
      }

      lspconfig['arduino_language_server'].setup {
        capabilities = capabilities
      }
      lspconfig['bashls'].setup {
        capabilities = capabilities
      }

      lspconfig['clangd'].setup {
        capabilities = capabilities
      }

      lspconfig['cmake'].setup {
        capabilities = capabilities
      }

      lspconfig['cssls'].setup {
        capabilities = capabilities
      }

      lspconfig['pyright'].setup {
        capabilities = capabilities
      }

      lspconfig['html'].setup {
        capabilities = capabilities
      }

      lspconfig['jdtls'].setup {
        capabilities = capabilities
      }

      lspconfig['jsonls'].setup {
        capabilities = capabilities
      }

      lspconfig['tsserver'].setup {
        capabilities = capabilities
      }

      lspconfig['marksman'].setup {
        capabilities = capabilities
      }

      lspconfig['powershell_es'].setup {
        capabilities = capabilities
      }

      lspconfig['taplo'].setup {
        capabilities = capabilities
      }

      lspconfig['vimls'].setup {
        capabilities = capabilities
      }

      lspconfig['yamlls'].setup {
        capabilities =capabilities
      }
    end
  }
}
