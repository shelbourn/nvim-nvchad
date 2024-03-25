require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- uncomment to enable <C-s> save file
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

map("n", "<leader>fF", "<cmd>Telescope grep_string<cr>", { desc = "grep_string: search term under cursor" })

-- setting a keymap to toggle lsp_lines diagnostics
map("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
