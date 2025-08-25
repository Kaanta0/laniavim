return {
  'chipsenkbeil/distant.nvim',
  branch = 'v0.2',
  opts = {},
  config = function(_, opts)
    opts['*'] = require('distant.settings').chip_default()
    require('distant').setup(opts)
  end,
}
