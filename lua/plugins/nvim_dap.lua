return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap" },
  opts = {},
  config = function(_, opts)
    require('dapui').setup(opts)
  end,
}
