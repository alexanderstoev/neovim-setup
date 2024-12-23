return {
  "nvim-treesitter/nvim-treesitter",
  config = function() 
    require("nvim-treesitter/configs").setup({
      ensure_installed = {"c", "lua","vim","vimdoc","query"},
      auto_install = true,
      highlight = {
        enabled = true
      },
      indent = {
        enable = true
      }
    });
  end,

}
