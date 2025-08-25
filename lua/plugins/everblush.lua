return {
  'Everblush/nvim',
  name = 'everblush',
  opts = function()
    require("everblush").setup({
      transparent_background = true,
    })
  end
}
