local M = {}

M.ui = {
	-- themeing
	theme = "oceanic-next",
	-- highlight overrides
    -- See: https://nvchad.com/docs/config/theming/
    -- TO-DO: Override the styling of inline diagnostics
	hl_override = require("highlights"),
}

return M
