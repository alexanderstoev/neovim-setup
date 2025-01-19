-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Save undo history
vim.opt.undofile = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

