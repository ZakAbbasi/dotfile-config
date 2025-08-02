
return {
  'nvim-lualine/lualine.nvim',

  config = function ()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'dracula-nvim',
      }
    }
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
}
