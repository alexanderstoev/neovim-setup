return {
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function() 
		require("bufferline").setup({
			options = {
				numbers = "buffer_id",
				separator_style =  "slope", 
				offsets = {
					{
						filetype = "neo-tree",
						text = "",
						separator = true,
						text_align = "left"
					}
				},

			}
		})
	end;

}
