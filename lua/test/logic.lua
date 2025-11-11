-- Source - https://stackoverflow.com/a
-- Posted by Adir Ratzon
-- Retrieved 2025-11-11, License - CC BY-SA 4.0

local function array_map(array)
	local map = {}
	for _, item in ipairs(array) do
		map[item] = true
	end
	return map
end

local array = { "a value", "another value" }
local arr_map = array_map(array)

if arr_map["a value"] then
	print("The array has item 1")
end

if not arr_map["a value"] then
	print("Item 10 is not part of the array")
end
