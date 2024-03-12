local options = {
  lsp_fallback = true,

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
}

require("conform").setup(options)
