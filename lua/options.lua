require "nvchad.options"

local o = vim.o
local opt = vim.opt
local lsp = vim.lsp
local cmd = vim.cmd
local api = vim.api
local nvim_create_autocmd = api.nvim_create_autocmd
local nvim_set_hl = api.nvim_set_hl

--tab stops
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

--cursor line
o.cursorlineopt = "both"

--disabling standard diagnostic virtual text since we are using the lsp_lines plugin
--can't get this working because something is overriding it
--possibly an LSP or treesitter or something??
--see here: https://github.com/neovim/nvim-lspconfig/wiki/UI-Customization#customizing-how-diagnostics-are-displayed
-- vim.diagnostic.config { virtual_text = false }

--this works but it doesn't use the current API for disabling virtual_text (vim.diagnostic.config())
lsp.handlers["textDocument/publishDiagnostics"] = lsp.with(lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
})

--disabling swap files because they suck and are annoying
opt.swapfile = false

-- disabling the persistent commmand line when not in use
opt.cmdheight = 0

-------
--whitespace highlights
-------
opt.list = true

local space = "·"
opt.listchars:append {
	tab = "│─",
	multispace = space,
	lead = space,
	trail = space,
	nbsp = space
}

cmd([[match TrailingWhitespace /\s\+$/]])

nvim_set_hl(0, "TrailingWhitespace", { link = "Error" })

nvim_create_autocmd("InsertEnter", {
	callback = function()
		opt.listchars.trail = nil
		nvim_set_hl(0, "TrailingWhitespace", { link = "Whitespace" })
	end
})

nvim_create_autocmd("InsertLeave", {
	callback = function()
		opt.listchars.trail = space
		nvim_set_hl(0, "TrailingWhitespace", { link = "Error" })
	end
})
