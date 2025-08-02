-- Adds line numbers
vim.opt.number = true
vim.opt.relativenumber = false

-- Configures split direction
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Formatting
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 10

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

-- Terminal Options
vim.opt.termguicolors = true

-- Diagnostics setup

vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = true,
})

-- Disabling netrw to use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.deprecate = function () end
