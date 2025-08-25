return {
  "uZer/pywal16.nvim",
  as = 'pywal16',
  opts = {},
  config = function(_, opts)
    require('pywal16').setup(opts)
  end,
}
