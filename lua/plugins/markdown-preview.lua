-- PATH: nvim/lua/plugins/markdown-preview.lua

return {
	{ -- https://github.com/iamcco/markdown-preview.nvim
		"iamcco/markdown-preview.nvim",
		cmd = { 
            "MarkdownPreviewToggle", 
            "MarkdownPreview", 
            "MarkdownPreviewStop" 
        },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
        config = function()
		    -- vim.keymap.set("n", "<leader>mds", ":MarkdownPreview<CR>", {})
		    -- vim.keymap.set("n", "<leader>mde", ":MarkdownPreviewStop<CR>", {})
		    vim.keymap.set("n", "<leader>md", ":MarkdownPreviewToggle<CR>", {})
        end,
        
	},
}
