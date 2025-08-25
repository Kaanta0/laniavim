local nvim_highlight_colors = {
  'brenoprata10/nvim-highlight-colors',
  config = function()
    require('nvim-highlight-colors').setup({
      render = 'foreground',
    })
  end
}
return { nvim_highlight_colors }
