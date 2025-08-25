local nvim_cokeline = {
  'willothy/nvim-cokeline',
  requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
  config = function()
    require('cokeline').setup({
      show_if_buffers_are_at_least = 2,
    })
  end
}

return { nvim_cokeline }
