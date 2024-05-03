-- PATH: nvim/lua/plugins/none-ls.lua

return {
	{ -- https://github.com/neovim/nvim-lspconfig
		"nvimtools/none-ls.nvim",
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

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- Formats the code to be pretty
		end,
	},
}
