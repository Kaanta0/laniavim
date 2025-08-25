return {
  'echasnovski/mini.nvim',
  version = '*',
  opts = {},
  config = function(_, _)
    require('mini.animate').setup()
    require('mini.clue').setup()
    require('mini.notify').setup()
  end,
}
