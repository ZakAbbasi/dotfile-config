return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "echasnovski/mini.nvim", version = '*',
  },
  config = function()
    require("nvim-tree").setup {
      view = {
        float = {
          enable = false
        },
        cursorline = false
      },
    }
  end,
}
