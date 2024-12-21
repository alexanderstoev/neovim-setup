-- AUTOCOMMANDS
local api = vim.api

-- Function to refresh Neo-tree
local function refresh_neotree_git_status()
require("neo-tree.sources.git_status").refresh()
end

-- Autocommand for LazyGit
api.nvim_create_autocmd("TermClose", {
  pattern = "*lazygit",
  callback = refresh_neotree_git_status,
  desc = "Refresh Neo-tree Git status after closing LazyGit",
})
