local cmp = require "cmp"

local options = {
    completion = {
        completeopt = "menu,menuone,noinsert,noselect",
    },
}

cmp.setup(options)
