-- PATH: nvim/lua/plugins/catppuccin.lua

return {
	{
		"catppuccin/nvim", -- https://github.com/catppuccin/nvim
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme "catppuccin-latte"
			vim.cmd.colorscheme("catppuccin-frappe")
			-- vim.cmd.colorscheme "catppuccin-macchiato"
			-- vim.cmd.colorscheme "catppuccin-mocha"
		end,
	},
}
