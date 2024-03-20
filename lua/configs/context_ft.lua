--lazy.nvim filetypes to trigger context load
local ft_config = {}

------
--INSERT FILETYPES FOR CONTEXT PLUGIN BELOW
------
local ft = { "js", "ts", "jsx", "tsx", "py", "rs", "php" }

for i, name in ipairs(ft) do
	ft_config[i] = "BufEnter *." .. name
end

return ft_config
