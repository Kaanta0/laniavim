return {
  'saecki/crates.nvim',
  tag = 'v0.3.0',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  config = function(_, opts)
    require('crates').setup(opts)
  end,
}
