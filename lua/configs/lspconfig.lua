--[[
--LSP config
--extends the NvChad defaults with custom LSP configs
--add new servers to the `local servers` var
--]]
local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local servers = {
	"clangd",
	"cssls",
	"html",
	"lua-language-server",
	"php-cs-fixer",
	"python-lsp-server",
	"rust-analyzer",
	"stylua",
	"typescript-language-server",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_init = on_init,
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
