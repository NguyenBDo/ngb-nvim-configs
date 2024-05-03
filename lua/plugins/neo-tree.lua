-- PATH: nvim/lua/plugins/neo-tree.lua

return {
	{ -- https://github.com/nvim-neo-tree/neo-tree.nvim
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim", -- https://github.com/nvim-lua/plenary.nvim
			"nvim-tree/nvim-web-devicons", -- https://github.com/nvim-tree/nvim-web-devicons
			"MunifTanjim/nui.nvim", -- https://github.com/MunifTanjim/nui.nvim
		},
		config = function()
			vim.keymap.set("n", "<leader>nl", ":Neotree filesystem reveal left<CR>", {})
			vim.keymap.set("n", "<leader>nr", ":Neotree filesystem reveal right<CR>", {})
			vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
		end,
	},
}
