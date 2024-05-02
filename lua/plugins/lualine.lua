-- PATH: nvim/lua/plugins/lualine.lua

return {
	"nvim-lualine/lualine.nvim", -- https://github.com/nvim-lualine/lualine.nvim
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			theme = "ayu",
		})
	end,
}
