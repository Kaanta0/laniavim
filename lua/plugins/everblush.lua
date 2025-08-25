return {
  'Everblush/nvim',
  name = 'everblush',
  opts = {
    transparent_background = true,
  },
  config = function(_, opts)
    require('everblush').setup(opts)
  end,
}
