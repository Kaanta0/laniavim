return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.animate').setup()
    require('mini.clue').setup()
    require('mini.notify').setup()
  end
}
