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
				always_show_bufferline = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo-tree",
						highlight = "Directory",
						text_align = "left",
					},
				},
        custom_filter = function(buf_number, buf_numbers)
          -- Filter out "No Name" buffers
          local buf_name = vim.fn.bufname(buf_number)
          return not (buf_name == "" or buf_name == "[No Name]")
        end,
      }
    })
  end;

}
