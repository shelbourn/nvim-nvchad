return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
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
      require "configs.lspconfig"
    end,
  },

  --mason.nvim (installs the LSPs)
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "css-lsp",
        "eslint-lsp",
        "html-lsp",
        "lua-language-server",
        "phpactor",
        "php-cs-fixer",
        "prettier",
        "prettierd",
        "python-lsp-server",
        "rust-analyzer",
        "stylua",
        "typescript-language-server",
      },
    },
  },

  -- lsp_lines.nvim: virtual text for diagnostics instead of real text
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    lazy = false,
    config = function()
      require("lsp_lines").setup()
    end,
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
        "lua",
        "php",
        "python",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",

        -- low level
        "c",
        "rust",
        "zig",
      },
    },
  },

  ------
  --context (pinning fn context, var context, etc)
  ------

  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = true,
    event = require "configs.context_ft",
    config = function()
      require "configs.context"
    end,
  },
}
