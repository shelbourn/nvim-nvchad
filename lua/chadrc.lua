local M = {}

M.ui = {

  -- themeing
  theme = "onedark",

  -- lsp configs

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
