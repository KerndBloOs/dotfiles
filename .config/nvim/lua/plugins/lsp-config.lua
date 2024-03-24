return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ansiblels","tsserver" }
     })
    end
    },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig["ansiblels"].setup({
        filetypes = {
          "yaml",
        },
        settings = {
          ansible = {
            ansible = {
              path = "ansible",
              useFullyQualifiedCollectionNames = true
            },
            ansibleLint = {
              enabled = true,
              path = "ansible-lint"
            },
            executionEnvironment = {
              enabled = false
            },
            python = {
              interpreterPath = "python"
            },
            completion = {
              provideRedirectModules = true,
              provideModuleOptionAliases = true
            }
          },
        },
        on_attach = on_attach,
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
      capabilities = capabilities
      })

    end,
  },
}
