-- PATH: nvim/lua/plugins/none-ls.lua

return {
	"nvimtools/none-ls.nvim", -- https://github.com/neovim/nvim-lspconfig
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {

				--[!] Add formatters and linters here after installing them via :Mason
				null_ls.builtins.formatting.stylua, -- [F] Lua
				--null_ls.builtins.formatting.prettier,   -- [F] Javascript
				--null_ls.builtins.diagnostics.erb_lint,  -- [L] Javascript
				--null_ls.builtins.formatting.rubocop,    -- [F] Ruby
				--null_ls.builtins.diagnostics.rubocop,   -- [L] Ruby
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
