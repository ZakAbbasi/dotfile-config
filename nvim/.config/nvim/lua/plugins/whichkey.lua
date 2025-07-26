return {
    {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- Will configure as needed
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }
}
