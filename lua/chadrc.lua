-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- check out lua/nvconfig.lua for more information about the NvChad UI plugin
-- also, check it out here: https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua
M.ui = {
    -- themeing
    theme = "chadracula",

    -- highlight overrides
    -- See: https://nvchad.com/docs/config/theming/
    hl_override = {
        require "highlights",
        -- cursorline color settings
        CursorLine = {
            bg = "one_bg1",
        },
        -- telescope customizations
        TelescopeSelection = {
            bg = "one_bg2",
            fg = "nord_blue",
        },
    },

    -- statusline
    statusline = {
        theme = "default",
        separator_style = "arrow",
    },
}

return M
