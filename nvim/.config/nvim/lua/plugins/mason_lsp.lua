return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "vimls",
        "hyprls",
        "html",
        "cssls",
        "ts_ls",
        "eslint",
        "pylsp",
        "clangd"
      },
      automatic_enable = true
    },

    dependencies = {
      {"mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}
