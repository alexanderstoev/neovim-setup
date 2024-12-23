-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard between OS and Neovim.
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

-- TABS & Indent
vim.opt.expandtab = true  -- Convert tabs to spaces
vim.opt.tabstop = 2       -- A tab is represented as 2 spaces
vim.opt.shiftwidth = 2    -- Indent using 2 spaces
vim.opt.softtabstop = 2   -- Insert/delete 2 spaces when pressing Tab/Backspace

-- Ignore case - allow calling :lazy instead of reuiring :Lazy (note the uppercase L)
vim.opt.ignorecase = true

-- Enable more colors
vim.opt.termguicolors = true

-- allow selecting empty spaces in visual block mode
vim.opt.virtualedit = "block"

-- disable line wrapping
vim.opt.wrap = false

-- when replacing show an extra preview window
vim.opt.inccommand = "split"













