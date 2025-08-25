return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
          ensure_installed = {
            "lua_ls",
            "rust_analyzer",
            "arduino_language_server",
            "bashls",
            "clangd",
            "cmake",
            "cssls",
            "html",
            "jdtls",
            "jsonls",
            "tsserver",
            "marksman",
            "powershell_es",
            "pyright",
            "taplo",
            "vimls",
            "yamlls",
          },
      })
    end
  },

}
