# nvim setup

## Plugins
### Look & Feel and Misc
- [catppuccin](https://github.com/catppuccin/nvim) - color scheme
- [lualine](https://github.com/nvim-lualine/lualine.nvim) - status bar line 
- [bufferline](https://github.com/akinsho/bufferline.nvim) - Adds a line at the top showing oped buffers (_files_)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) - file explorer
- [which-key](https://github.com/folke/which-key.nvim) - shows available keys maps
- [snaks](https://github.com/folke/snacks.nvim) - A collection of small QoL plugins for Neovim

### Search
- [telescope](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder _suggesting_ to install ripgrep to be able to limit the number of files indexed

### GIT
- [lazy-git](https://github.com/kdheepak/lazygit.nvim) - GIT UI *requires* lazygit to be installed on the machine
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim) - adds git status indicators alongside the linenumbers

### LSP
- [treesitter](https://github.com/lewis6991/gitsigns.nvim) - adds highlightinh, indenting and folding capabilities 

### AI
TODO

## Options

## Autocommands
- Autocommand to refresh the Neotree git status when closing the Lazyvim windowtes

## Keymaps
### Buffers
- `<leader>bn` - Switch to next buffer
- `<leader>bp` - Switch to previous buffer
- `<leader>bl` - Switch to last used buffer
- `<leader>bd` - Delete the current buffer. Used a folky magic to prevent neo-tree from crapping it's pants
- `<leader>bo` - Delete all other buffers

### Lazy
- `<leader>L` - Show Lazy

### Quit
- `<leader>qq` - Quit nvim
