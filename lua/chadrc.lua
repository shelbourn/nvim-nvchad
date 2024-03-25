-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- check out lua/nvconfig.lua for more information about the NvChad UI plugin
-- also, check it out here: https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua
M.ui = {
    -- themeing
    theme = "onenord",

    -- highlight overrides
    -- See: https://nvchad.com/docs/config/theming/
    hl_override = require "highlights",

    -- statusline
    statusline = {
        theme = "vscode_colored",
    },
}

return M
