local function smart_toggle_neotree() 

	local api = vim.api
	local neotree_buffer_types = { "filesystem", "buffers", "git_status" }
	local is_neotree_visible = false
	local neotree_win_id = nil


	-- Check if Neo-tree is visible
	for _, win_id in ipairs(api.nvim_list_wins()) do
		local bufname = api.nvim_buf_get_name(api.nvim_win_get_buf(win_id))
		for _, type in ipairs(neotree_buffer_types) do
			if bufname:match(type) then
				is_neotree_visible = true
				neotree_win_id = win_id
				break
			end
		end
		if is_neotree_visible then
			break
		end
	end

	local current_win = api.nvim_get_current_win()

	if is_neotree_visible then
		-- If cursor is in Neo-tree, move to the visible buffer
		if current_win == neotree_win_id then
			for _, win_id in ipairs(api.nvim_list_wins()) do
				if win_id ~= neotree_win_id then
					api.nvim_set_current_win(win_id)
					return
				end
			end
		else
			-- Focus Neo-tree if in a file buffer
			api.nvim_set_current_win(neotree_win_id)
		end
	else
		-- Show Neo-tree if not visible and focus it
		vim.cmd("Neotree show")
	end

end;


return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()

		require("neo-tree").setup({
			close_if_last_window = false,
			filesystem = {
				follow_current_file = {enabled = true}
			},
			winbar = {
				enabled = true,  -- Enable the Neo-tree winbar
				show_root = true,  -- Show the root directory in the winbar
				content = "buffers",  -- Configure the content of the winbar (can be set to file name, filetype, etc.)
			},
			window={
				mappings = {
					["<space>"]=""
				},
				position = "left",
				width = 40
			}
		})

		-- keymaps for Neo-tree
		vim.keymap.set("n", "<leader>e", smart_toggle_neotree, { desc = "Toggle Neo-tree" })
	end

}







