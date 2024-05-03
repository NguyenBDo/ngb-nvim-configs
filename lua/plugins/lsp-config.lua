-- PATH: nvim/lua/plugins/lsp-config.lua

local commonPath = "~/AppData/Local/nvim-data/mason/bin/"
local lspPaths = {
	lua_ls = "lua-language-server.cmd",
}

--[[
-- Central LSP configurations
--]]
function configureLsp(lspconfig, capabilities, path)
	lspconfig.setup({
		cmd = { vim.fn.expand(commonPath .. path) },
		capabilities = capabilities,
	})
end

return {
	{
		"williamboman/mason.nvim", -- https://github.com/williamboman/mason.nvim
		lazy = false,
		config = function()
			require("mason").setup({
				PATH = "append",
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim", -- https://github.com/williamboman/mason-lspconfig.nvim
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig", -- https://github.com/neovim/nvim-lspconfig
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			--[[
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.solargraph.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})

 --]]

            configureLsp(lspconfig.lua_ls, capabilities, lspPaths.lua_ls)

			vim.keymap.set("n", "<leader>ho", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
