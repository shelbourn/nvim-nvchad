---@type ChadrcConfig
local M = {}

M.ui = {
  -- themeing
  theme = "onenord",
  -- highlight overrides
  -- See: https://nvchad.com/docs/config/theming/
  hl_override = require "highlights",
}

return M
