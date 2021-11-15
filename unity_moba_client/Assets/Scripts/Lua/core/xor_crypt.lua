---@class XorCrypt
XorCrypt = {}
local M = XorCrypt

--异或加密算法
function M.encode(s, key)
    local b_s = M.string_to_byte(s)
    local b_key = M.string_to_byte(key)
    for i = 1, #b_s do
        b_s[i] = M.xor(b_s[i], b_key[((i-1 )% #b_key)+1])
    end

    return Rc4.encodeBase64(M.byte_to_string(b_s))
end

--异或解密
function M.decrypt(s, key)
    local source_s = Rc4.decodeBase64(s)
    local b_s = M.string_to_byte(source_s)
    local b_key = M.string_to_byte(key)
    for i = 1, #b_s do
        b_s[i] = M.xor(b_s[i], b_key[((i-1 )% #b_key)+1])
    end

    return M.byte_to_string(b_s)
end

--异或算法
function M.xor(a,b)--Bitwise xor
    local p,c=1,0
    while a>0 and b>0 do
        local ra,rb=a%2,b%2
        if ra~=rb then c=c+p end
        a,b,p=(a-ra)/2,(b-rb)/2,p*2
    end
    if a<b then a=b end
    while a>0 do
        local ra=a%2
        if ra>0 then c=c+p end
        a,p=(a-ra)/2,p*2
    end
    return c
end

function M.string_to_byte(text)
    local len = string.len(text)
    local c = nil
    local res = {}
    for i = 1, len do
        c = string.byte(text, i,i)
        res[i] = c
    end
    return res
end

function M.byte_to_string(b)
    local res = {}
    for i = 1, #b do
        res[i] = string.char(b[i])
    end

    return table.concat(res)
end

return M