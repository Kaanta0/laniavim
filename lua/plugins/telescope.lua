return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    pickers = {
      colorscheme = {
        enable_preview = true,
      },
    },
  },
  config = function(_, opts)
    require('telescope').setup(opts)
  end,
}
