local helpers = require("helpfile.util.helpers")
local config = require("helpfile.config")
local M = {}

--- Decide which level of recursion to search local metafile for
---@return string
function M.get_root()
	local current_path = helpers.get_buf_path(0)
	local usr_exceptions = config.opts.root_opts.usr_exceptions
	local home_access = config.opts.root_opts.home_access
	local root
	if usr_exceptions ~= nil then
		helpers.get_exception(usr_exceptions, current_path)
	end
	if home_access == true then
		root = os.getenv("$HOME")
	end
	if root then
		return root
	else
		return error("Cannot determine root path")
	end
end

return M
