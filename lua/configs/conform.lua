local options = {
    formatters_by_ft = {
        css = { { "prettierd", "prettier" } },
        html = { { "prettierd", "prettier" } },
        javascript = { { "prettierd", "prettier" } },
        javascriptreact = { { "prettierd", "prettier" } },
        json = { { "prettierd", "prettier" } },
        less = { { "prettierd", "prettier" } },
        lua = { "stylua" },
        -- get this formatter working, it needs a config and I'm not sure how to do it
        php = { "php" },
        scss = { { "prettierd", "prettier" } },
        terraform = { "terraform-ls" },
        typescript = { { "prettierd", "prettier" } },
        typescriptreact = { { "prettierd", "prettier" } },
    },
    notify_on_error = true,
    formatters = {
        php = {
            command = "php-cs-fixer",
            args = {
                "fix",
                "$FILENAME",
                "--config=.php-cs-fixer.dist.php",
                "--allow-risky=yes", -- if you have risky stuff in config, if not you dont need it.
            },
            stdin = false,
        },
    },
    -- format_on_save = {
    --   -- These options will be passed to conform.format()
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    -- },
}

require("conform").setup(options)
