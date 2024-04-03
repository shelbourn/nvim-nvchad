--lazy.nvim filetypes to trigger context load
local ft_config = {}

------
--INSERT FILETYPES FOR CONTEXT PLUGIN BELOW
------
local ft = { "js", "ts", "jsx", "tsx", "py", "rs", "php" }

for i, file_type in ipairs(ft) do
	ft_config[i] = "BufEnter *." .. file_type
end

return ft_config
