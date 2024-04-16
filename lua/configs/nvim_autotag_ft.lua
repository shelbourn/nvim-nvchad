local ft_config = {}

------
--INSERT FILETYPES FOR AUTOTAG PLUGIN BELOW
------
local ft = { "js", "html", "jsx", "md", "php", "ts", "tsx", "xml", "vue", "svelte" }

for i, file_type in ipairs(ft) do
    ft_config[i] = "BufEnter *." .. file_type
end

return ft_config
