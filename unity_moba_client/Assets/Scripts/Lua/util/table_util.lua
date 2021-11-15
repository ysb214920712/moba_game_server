---@class table_util
table_util = table_util or {}
local M = table_util

---@generic T
---@param t T
---@return T
--- return deep copy of 't'
function M.deep_copy(t)
	if not t then
		return nil
	end
	local res = {}
	for k,v in pairs(t) do
		if(type(v)=='table') then
			res[k] = M.deep_copy(v)
		else
			res[k] = v
		end
	end

	return res
end

-- shuffle t, t is a 'list'
function M.shuffle(t)
	if not t then return end

	local cnt = #t
	for i=1,cnt do
		local j = math.random(i,cnt)
		t[i],t[j] = t[j],t[i]
	end
	return t
end

-- return 't' is a list
function M.is_list(t)
	return t and #t == M.size(t)
end

-- return 't' element count
function M.size(t)
    local n = 0
    for _ in pairs (t) do
        n = n + 1
    end
    return n
end

-- json encode, 't' is table
function M.encode(t)
    local encode_func = U.LuaJson.encode or Json.encode
    return encode_func(t)
end

-- json decode, 's' is json string
function M.decode(s)
    local decode_func = U.LuaJson.decode or Json.decode
    local ret, tb = pcall(decode_func, s)
    if(ret and type(tb) == "table") then
        -- here we can adjust it's a encrypted data
        return tb
    end
    return nil
end

-- return 't' is empty
function M.empty(t)
    return not next (t)
end

-- find in arrary, if found return index, or return nil
function M.find(t, e)
	for k, v in ipairs(t) do
		if v == e then
			return k
		end
	end
	return nil
end

function M.merge(t, d)
    for k, v in pairs(t) do
        assert(d[k]==nil, string.format("table merge failed, key(%s) duplicated!", k))
        d[k] = v
    end
end

function M.random_select(t)
    local len = #t
    if len > 0 then
        local rand = math.random(1, len)
        return t[rand], rand
    end
end

function M.arrary_merge(t, d)
	for k, v in ipairs(t) do
		table.insert(d, v)
	end
	return d
end

function M.arrary_merge_no_repeat(t, d)
	for k, v in ipairs(t) do
		if not M.find(d, v) then
			table.insert(d, v)
		end
	end
	return d
end

function M.keys(t)
	local r = {}
	for k, _ in pairs(t) do
		table.insert(r, k)
	end
	return r
end

function M.values(t)
	local r = {}
	for _, v in pairs(t) do
		table.insert(r, v)
	end
	return r
end

---根据对应的排序方法进行遍历
function M.pairs_by_sort(tbl, sort_func)
    local key_lst = M.keys(tbl)

    sort_func = sort_func or function(a, b) return a < b end

    table.sort(key_lst, function(a, b)
        return sort_func(a, b)
    end)

    local i = 0
    return function()
        i = i + 1
        if key_lst[i] then
            return key_lst[i], tbl[key_lst[i]]
        end
    end
end

--升序排列迭代
function M.pairs_ascend(tbl)
    return M.pairs_by_sort(tbl)
end

--降序排列迭代
function M.pairs_descend(tbl)
    return M.pairs_by_sort(tbl, function(a, b) return b < a end)
end

---@generic T1, T2
---@param table T1 param1:要随机的表
---@param table T2 param2:权重列表
---@return System.number
function M.getRanomByWeight(t, weights)
    local sum = 0
    for i = 1, #weights do
        sum = sum + weights[i]
    end
    local compareWeight = math.random(1, sum)
    local weightIndex = 1
    while sum > 0 do
        sum = sum - weights[weightIndex]
        if sum < compareWeight then
            return t[weightIndex]
        end
        weightIndex = weightIndex + 1
    end

    return nil
end

function M.compare_value_equal(a, b)
    local a_type = type(a)
    local b_type = type(b)
    if a_type ~= b_type then
        return false
    end

    if a_type ~= "table" then
        return a == b
    end

    for k, v in pairs(a) do
        if not M.compare_value_equal(v, b[k]) then
            return false
        end
    end

    return true
end

return M