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

  ------
  --LSP CONFIGS
  ------

  --nvim-lspconfig (loads the LSP servers)
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
 
  --mason.nvim (installs the LSPs)
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "clangd",
        "css-lsp",
        "html-lsp",
        "lua-language-server",
        "php-cs-fixer",
        "prettier",
        "python-lsp-server",
        "rust-analyzer",
        "stylua",
        "typescript-language-server"
      },
    },
  },

	------
  --syntax highlighting
  ------

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
