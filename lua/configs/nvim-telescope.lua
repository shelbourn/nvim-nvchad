-----
--custom configs for nvim-telescope
-----

--this is commented out because it's causing the results list to be inverted
local actions = require "telescope.actions"

local opts = {
    defaults = {
        mappings = {
            --enables single <esc> telescope exit
            i = {
                ["<esc>"] = actions.close,
            },
        },
    },
}

require("telescope").setup(opts)
