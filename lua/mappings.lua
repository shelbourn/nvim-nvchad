require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "Buffer CMD enter command mode" })

-- uncomment to enable <C-s> save file
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>fm", function()
    require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Nvim Escape insert mode" })

-- telescope grep_string: global fuzzy search term under cursor
map("n", "<leader>fs", "<cmd>Telescope grep_string<cr>", { desc = "Telescope Grep_string: search term under cursor" })

-- setting a keymap to toggle lsp_lines diagnostics
map("n", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle Lsp_lines" })

-- toggle current line blame in git signs (equivalent to toggle file blame in VSC)
map("n", "<leader>gl", function()
    require("gitsigns").toggle_current_line_blame()
end, { desc = "Toggle Current line blame (file)" })

-- toggle nvim-cmp autocompletions
map("n", "<leader>a", ":NvimCmpToggle<CR>", { desc = "Toggle Autocompletions (normal)", noremap = true, silent = true })
