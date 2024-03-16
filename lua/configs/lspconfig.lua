------
--LSP config
--extends the NvChad defaults with custom LSP configs
--add new servers to the `local servers` var
------
local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local servers = {
	--TO-DO: setup LSPs for rust, prettier, php-cs-fixer, stylua
	"clangd",
	"cssls",
	"eslint",
	"html",
	"lua_ls",
	"phpactor",
	"pylsp",
	"rust_analyzer",
	"tsserver",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_init = on_init,
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
