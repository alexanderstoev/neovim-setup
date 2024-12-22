-- BUFFERS
-- Switch to next buffer
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', {desc = "[B]uffer Next", noremap = true, silent = true })

-- Switch to previous buffer
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprev<CR>', { desc = "[B]uffer [P]revious", noremap = true, silent = true })

-- Switch to last buffer
vim.api.nvim_set_keymap('n', '<leader>bl', ':b#<CR>', { desc = "[B]uffer [L]ast used", noremap = true, silent = true })

-- Close current buffer
local ui = require("utils.ui")
vim.api.nvim_set_keymap('n', '<leader>bd', ':lua require("utils.ui").bufremove()<CR>', { desc = "[B]uffer [D]elete", noremap = true, silent = true })

-- Close all buffers except the current one
vim.api.nvim_set_keymap('n', '<leader>bo', ':bufdo bd<CR>', { desc = "[B]uffer Delete [O]ther buffers", noremap = true, silent = true })

-- MISC

-- Source file
vim.api.nvim_set_keymap('n', '<leader>so', ':so %<CR>', { desc = "[S][O]urce current file", noremap = true, silent = true })


