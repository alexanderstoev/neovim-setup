return {
	'akinsho/bufferline.nvim', 
	event = "VeryLazy",
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function() 
		require("bufferline").setup({
			options = {
				-- stylua: ignore
				close_command = function(n) Snacks.bufdelete(n) end,
				-- stylua: ignore
				right_mouse_command = function(n) Snacks.bufdelete(n) end,
				diagnostics = "nvim_lsp",
				always_show_bufferline = false,
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo-tree",
						highlight = "Directory",
						text_align = "left",
					},
				},
			}
		})
	end;

}
