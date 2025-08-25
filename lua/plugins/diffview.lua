return {
  'sindrets/diffview.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  opts = {},
  config = function(_, opts)
    require('diffview').setup(opts)
  end,
}
