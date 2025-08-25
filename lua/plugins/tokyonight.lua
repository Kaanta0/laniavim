return {
  'folke/tokyonight.nvim',
  opts = {},
  config = function(_, opts)
    require('tokyonight').setup(opts)
  end,
}
