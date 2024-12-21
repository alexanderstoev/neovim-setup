-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
 
-- Enable break indent. When wrapping lines preserve the indentation of the paren line
vim.opt.breakindent = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Save undo history
vim.opt.undofile = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10




















