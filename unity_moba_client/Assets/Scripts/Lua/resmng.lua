---@class resmng
resmng = resmng or {}
local resmng = resmng

add_require("Config/define")

add_require("Config/prop_define")


function resmng.get_conf(prop_name, index, check)
    if check == nil then check = true end
    local conf = resmng[prop_name] and resmng[prop_name][index]
    if not conf and check then
        ELOG("get_conf: failed. prop_name = %s, index = %s", prop_name, index)
    end
    return conf
end

function resmng.format_ex(fmt, ...)
	local arg = {...}
	local args = {}

	local change = false
	for w in fmt:gmatch("$%d%%") do
		local idx = w:byte(2)-48
		if idx <= arg.n then
			table.insert(args, arg[idx])
			change = true
		end
	end

	if change then
		fmt = fmt:gsub("$%d", "")
	else
		args = arg
	end

	return string.format(fmt, table.unpack(args))
end

function resmng.process_item_config()
    local propItem = resmng.propItem
    -- table_util.merge(resmng.propItemCurrency, propItem)
end

function resmng.postprocess_config()
    resmng.process_item_config()
end

return resmng