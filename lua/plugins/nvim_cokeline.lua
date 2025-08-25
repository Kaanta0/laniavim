return {
  'willothy/nvim-cokeline',
  dependencies = 'kyazdani42/nvim-web-devicons',
  opts = {
    show_if_buffers_are_at_least = 2,
  },
  config = function(_, opts)
    require('cokeline').setup(opts)
  end,
}
