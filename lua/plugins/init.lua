return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
	},

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
