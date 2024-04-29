return {
    ------
    --copilot
    ------
    {
        "github/copilot.vim",
        lazy = false,
        config = function()
            require "configs.copilot"
        end,
    },

    ------
    --dir drawer [should remove eventually because I don't really use it or like it]
    ------
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            git = { enable = true },
            -- enables the root dir of nvim-tree to update if a file is opened that is NOT in the CWD
            update_focused_file = {
                enable = true,
                update_root = {
                    enable = true,
                    ignore_list = {},
                },
            },
            filters = {
                dotfiles = false,
            },
            view = {
                centralize_selection = true,
                width = 60,
            },
        },
    },

    ------
    --completions
    ------
    { "gitaarik/nvim-cmp-toggle", lazy = false },

    {
        "hrsh7th/nvim-cmp",
        opts = {
            completion = {
                completeopt = "menu,menuone,noinsert,noselect",
            },
        },
    },

    ------
    --formatting
    ------
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    --commenting this out because it's causing the results list to sort in reverse order
    --was attempting to get telescope to exit on a single <ESC> press
    -- {
    --     "nvim-telescope/telescope.nvim",
    --     config = function()
    --         require "configs.nvim-telescope"
    --     end,
    -- },

    ------
    --lsp configs
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
                "intelephense",
                "lua-language-server",
                "php-cs-fixer",
                "prettier",
                "prettierd",
                "python-lsp-server",
                "rust-analyzer",
                "stylua",
                "terraform-ls",
                "typescript-language-server",
            },
        },
    },

    -- lsp_lines.nvim: virtual text for diagnostics instead of real text
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        lazy = true,
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
                "dockerfile",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "json5",
                "jq",
                "lua",
                "php",
                "python",
                "rust",
                "tsx",
                "terraform",
                "typescript",
                "vim",
                "vimdoc",

                -- low level
                "c",
                "rust",
                "zig",
            },
            autotag = {
                enable = true,
            },
        },
    },

    ------
    --context (pinning fn context, var context, etc)
    --commenting out for now until I decide whether I like it or not
    ------
    -- {
    --     "nvim-treesitter/nvim-treesitter-context",
    --     lazy = true,
    --     event = require "configs.context_ft",
    --     config = function()
    --         require "configs.context"
    --     end,
    -- },

    ------
    --auto close tag
    ------
    {
        "windwp/nvim-ts-autotag",
        lazy = true,
        event = require "configs.nvim_autotag_ft",
    },

    ------
    --active block highlighting
    ------
    {
        "shellraining/hlchunk.nvim",
        event = { "UIEnter" },
        config = function()
            require "configs.hlchunk"
        end,
    },
}
