---@class str_util
str_util = str_util or {}
local M = str_util

function M.split_valid(str, sep)
	assert(str and sep and #sep > 0)
    local res = {}
    for i in string.gmatch(str, string.format('[^%s]+', sep)) do
    	table.insert(res,i)
    end
    return res
end

function M.utf8len(input)
    local len  = string.len(input)
    local left = len
    local cnt  = 0
    local arr  = {0, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc}
    while left ~= 0 do
        local tmp = string.byte(input, -left)
        local i   = #arr
        while arr[i] do
            if tmp >= arr[i] then
                left = left - i
                break
            end
            i = i - 1
        end
        cnt = cnt + 1
    end
    return cnt
end

function M.split(str,sep,fun)
    assert(str and sep and #sep > 0)
    if #str == 0 then return {} end
    local reg = string.format('[%s]', sep)

    local r = {}
    local _begin = 1
    while _begin <= #str do
        local _end = string.find(str, reg, _begin) or #str + 1

        if fun then
        	table.insert(r,fun(string.sub(str, _begin, _end - 1)))
        else
        	table.insert(r,string.sub(str, _begin, _end - 1))
        end

        _begin = _end + 1
    end
    if string.match(string.sub(str, #str, #str), reg) then table.insert(r, '') end
    return r
end

function M.startswith(str, prefix)
    return string.find(str, prefix) == 1
end

function M.contain(str,sub)
	return str.find(sub) ~= nil
end


function M.endswith(str, suffix)
    return M.startswith(string.reverse(str), string.reverse(suffix))
end

function M.rfind( str, match )
	local rstr = string.reverse( str )
	local rmatch = string.reverse( match )
	local index = string.find(rstr,rmatch)
	if(index ~= nil) then
		return #str - (index + #match - 2)
	end
	return nil
end

function M.count( str, match )
	local num = 0
	for i in string.gmatch(str, match) do
		num = num + 1
	end
	return num
end

function M.isalpha(str)
	return M._ismatch(str,'[%a]+')
end


function M.isdigit(str)
	return M._ismatch(str,'[%d]+')
end


function M.islower(str)
	return M._ismatch(str,'[%l]+')
end


function M.isupper(str)
	return M._ismatch(str,'[%u]+')
end


function M.erase_range(str, istart, iend)
	local length = #str
	if(istart == nil) then istart = 1 end
	if(iend == nil) then iend = length end
	if(istart < 0) then istart = length+istart+1 end
	if(iend < 0) then iend = length+iend+1 end
	local str_f = ''
	local str_b = ''
	if(istart-1>0) then str_f = string.sub(str,1,istart-1) end
	if(iend<#str) then str_b = string.sub(str,iend+1) end
	return str_f .. str_b
end

function M.trim(s)
    local first = string.find(s, '%S')
    if not first then return '' end
    local last = string.find(string.reverse(s), '%S')
    return string.sub(s, first, #s + 1 - last)
end

function M.trim_all(s)
    return (string.gsub(s, " ", ""))
end

function M.ljust( str, width, fillchar )
	local difflen = width - #str
	if( difflen < 0 ) then
		return string.sub( str, 1, width )
	elseif( difflen > 0 ) then
		return str .. string.rep( fillchar, difflen )
	else
		return str
	end
end


function M.rjust( str, width, fillchar )
	local strlen = #str
	local difflen = width - strlen
	if( difflen < 0 ) then
		return string.sub( str, -difflen+1, strlen )
	elseif( difflen > 0 ) then
		return string.rep( fillchar, difflen ) .. str
	else
		return str
	end
end

function M.center( str, width, fill)
	local strlen = #str
	local difflen = width - strlen
	if( difflen < 0 ) then
		difflen = -difflen
		local offset = math.modf(difflen*0.5)
		local sleft = 1 + math.modf( offset )
		return string.sub( str, sleft, sleft+width-1 )
	elseif( difflen > 0 ) then
		local lc, _t = math.modf(difflen*0.5)
		local rc = lc
		if _t ~= 0 then rc = rc + 1 end
		return string.rep( fill, lc ) .. str .. string.rep(fill, rc)
	else
		return str
	end
end

function M.splitext(path)
    local tokens = M.split_valid(path, '.')
    local ext = tokens[#tokens]
    table.remove(tokens)
    assert(ext)
    return {table.concat(tokens, '.'), ext}
end

function M._ismatch(str, match)
    local r = string.match(str, match)
    return r ~= nil and #r == #str
end

function M.format_number_space(num)
	local str = math.floor(num) .. "";
    local len = #str;
    local newStr = "";
    local pos = 0;
    for i = len, 1, -1 do
        newStr = string.sub(str, i, i) .. newStr;
        pos = pos + 1;
        if(pos % 3 == 0 and pos ~= len)then
            newStr = " " .. newStr;
        end
    end

    return newStr
end

function M.empty_or_null(str)
    return not str or str == ""
end

function M.has_filter_word(str)
    if U.GHelper.StringHasEmoji(str) then
        return true
    end

    local prop = resmng.propWordFilter
    local find = string.find

    for _, v in ipairs(prop) do
        if find(str, v) then
            return true
        end
    end
    return false
end

function M.string_filter(str)
    local prop = resmng.propWordFilter
    local gsub = string.gsub
    local rep  = string.rep

    for _, v in ipairs(prop) do
        str = gsub(str, v, "***")
    end

    return str
end

function M.check_special_symbols(str)
    local c_result = string.match(str, "%c+")
    if c_result then
        return true
    end
    local p_result = string.match(str, "%p+")
    if p_result then
        return true
    end
    local s_result = string.match(str, "%s+")
    if s_result then
        return true
    end
    return false
end

return M