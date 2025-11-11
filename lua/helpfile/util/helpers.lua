local M = {}
--- hash map to check if a value exists in an array
---@return table
function M.array_map(array)
	local map = {}
	for _, item in ipairs(array) do
		map[item] = true
	end
	return map
end

--- check if a value exists in an array using a hashmap
---@param path string
---@param map table
---@return boolean
function M.get_exception(map, path)
	local check_map = M.array_map(map)
	if check_map[path] then
		return true
	else
		return false
	end
end

---get content of the buffer
---@param bufnr integer
---@return string path
function M.get_buf_path(bufnr)
	return vim.api.nvim_buf_get_name(bufnr)
end

return M
