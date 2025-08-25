return {
  "phaazon/hop.nvim",
  opts = {},
  config = function(_, opts)
    require('hop').setup(opts)
  end,
}
