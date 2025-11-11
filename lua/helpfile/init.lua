local config = require("config")
local M = {
	setup = function(opts)
		config.config(opts)
	end,
}

return M
