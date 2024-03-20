local options = {
  formatters_by_ft = {
    css = {{ "prettierd", "prettier" }},
    html = {{ "prettierd", "prettier" }},
    javascript = {{ "prettierd", "prettier" }},
    javascriptreact = {{ "prettierd", "prettier" }},
    json = {{ "prettierd", "prettier" }},
    lua = { "stylua" },
    typescript = {{ "prettierd", "prettier" }},
    typescriptreact = {{"prettierd", "prettier"}}
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
