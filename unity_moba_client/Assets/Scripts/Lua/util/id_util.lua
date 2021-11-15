---@class id_util
id_util = id_util or {}
local M = id_util

local readble_char_map = { -- exclude '0' 'O' 'I' '1' 'L'
    {"2","K","9","U","N","3","G","X","V","5","F","4","B","R","6","H","7","C","8","P","Z","E","S","J","T","W","D","Y","Q","M","A"},
    {"Z","6","B","N","2","W","D","P","K","Q","3","A","M","S","7","R","X","9","U","5","C","4","E","Y","G","T","J","H","V","8","F"},
    {"C","B","6","V","A","M","Z","Y","H","G","D","R","J","4","S","F","K","U","T","P","N","X","7","9","5","W","3","2","8","E","Q"},
    {"D","Z","X","K","M","9","T","C","E","J","H","5","U","N","F","Q","3","P","Y","8","V","7","A","B","2","W","G","6","R","4","S"},
    {"7","B","A","3","C","F","G","M","8","Z","Y","N","S","4","J","V","9","X","5","P","W","K","U","Q","H","R","T","E","6","2","D"},
    {"E","B","D","P","F","5","Y","7","U","Q","J","M","G","S","T","W","A","K","8","V","6","2","3","N","X","4","R","Z","C","9","H"},
    {"Y","F","8","P","7","A","X","N","6","J","V","W","4","D","2","S","E","5","R","U","G","H","C","T","Q","Z","M","B","9","K","3"},
    {"U","P","2","K","A","9","D","4","Z","R","8","T","W","H","X","Q","6","7","5","M","B","Y","E","S","F","J","3","G","C","V","N"},
    {"5","T","6","9","S","B","Y","A","3","W","E","C","V","F","Z","Q","X","N","8","J","4","U","D","R","K","H","2","P","G","M","7"},
    {"H","N","Z","6","V","T","8","E","Q","5","X","P","7","G","2","J","S","Y","B","F","W","C","A","R","D","3","U","9","M","4","K"}
}

local MIN_STR_LEN = 5
function M.id2str(num)
    num = math.floor(num)
    local cardinal_num = #readble_char_map[1]
    local s = ""
    local len = 0
    local remain = num

    while(remain > 0 or len < MIN_STR_LEN) do
        s =  readble_char_map[len + 1][remain % cardinal_num + 1] .. s
        remain = math.floor(remain / cardinal_num)
        len = len + 1
    end

    return string.upper(s)
end

function M.str2id(s)
    if(not s or #s > #readble_char_map or #s <= 0) then
        return nil
    end
    s = string.upper(s)
    local next = 1
    local cardinal_num = #readble_char_map[1]
    local num = 0
    local t = 1
    local c = #s
    for i = #s,1,-1 do
        local c = string.sub(s,i,i)
        local find = false
        for k,v in ipairs(readble_char_map[next]) do
            if(v == c) then
                find = true
                num = num  +  (k-1) * t
                next = next + 1
                t = t * cardinal_num
                break
            end
        end
        if(not find) then
            return nil
        end
    end
    return num
end

return M