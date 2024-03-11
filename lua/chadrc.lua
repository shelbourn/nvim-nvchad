local M = {}

M.ui = {

	-- themeing
	theme = "onedark",

	-- lsp configs
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	-- syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				-- web dev
				"css",
				"html",
				"javascript",
				"json",
				"php",
				"python",
				"tsx",
				"typescript",

				-- low level
				"c",
				"rust",
				"zig",
			},
		},
	},
}

return M
