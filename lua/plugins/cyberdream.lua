return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    italic_comments = true,
    hide_fillchars = true,
    terminal_colors = true,
    borderless_telescope = true,
  },
  config = function(_, opts)
    require('cyberdream').setup(opts)
  end,
}
