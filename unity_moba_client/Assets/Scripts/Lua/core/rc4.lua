---@class Rc4
Rc4 = {}
local M = Rc4
local floor = math.floor

--RC4 是一种对称加密算法，采用相同的密钥进行加解密

function M.encrypt(text,key)
    local function KSA(key)
        local keyLen = string.len(key)
        local schedule = {}
        local keyByte = {}
        for i = 0, 255 do
            schedule[i] = i
        end

        for i = 1, keyLen do
            keyByte[i - 1] = string.byte(key, i, i)
        end

        local j = 0
        for i = 0, 255 do
            j = (j + schedule[i] + keyByte[ i % keyLen]) % 256
            schedule[i], schedule[j] = schedule[j], schedule[i]
        end
        return schedule
    end

    local function PRGA(schedule, textLen)
        local i = 0
        local j = 0
        local k = {}
        for n = 1, textLen do
            i = (i + 1) % 256
            j = (j + schedule[i]) % 256
            schedule[i], schedule[j] = schedule[j], schedule[i]
            k[n] = schedule[(schedule[i] + schedule[j]) % 256]
        end
        return k
    end

    local function output(schedule, text)
        local len = string.len(text)
        local c = nil
        local res = {}
        for i = 1, len do
            c = string.byte(text, i,i)
            res[i] = string.char(M.bxor(schedule[i], c))
        end

        return table.concat(res)
    end

    local textLen = string.len(text)
    local schedule = KSA(key)
    local k = PRGA(schedule, textLen)
    return output(k, text)
end


function M.bxor(a,b)
  local r = 0
  for i = 0, 31 do
    local x = a / 2 + b / 2
    if x ~= floor (x) then
      r = r + 2^i
    end
    a = floor (a / 2)
    b = floor (b / 2)
  end
  return r
end

M.decrypt = M.encrypt

function M.test()
    local encrypt = M.encrypt("abcde1235","key")
    print(string.len(encrypt))
    print(encrypt)

    local decrypt = M.encrypt(encrypt, "key")
    print(decrypt)
end


-- lbase64加密和解密算法
function M.encodeBase64(source_str)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local s64 = ''
    local str = source_str

    while #str > 0 do
        local bytes_num = 0
        local buf = 0

        for byte_cnt=1,3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end

        for group_cnt=1,(bytes_num+1) do
            local b64char = math.fmod(math.floor(buf/262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end

        for fill_cnt=1,(3-bytes_num) do
            s64 = s64 .. '='
        end
    end

    return s64
end

function M.decodeBase64(str64)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local temp={}
    for i=1,64 do
        temp[string.sub(b64chars,i,i)] = i
    end
    temp['=']=0
    local str=""
    for i=1,#str64,4 do
        if i>#str64 then
            break
        end
        local data = 0
        local str_count=0
        for j=0,3 do
            local str1=string.sub(str64,i+j,i+j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1]-1
                str_count = str_count + 1
            end
        end
        for j=16,0,-8 do
            if str_count > 0 then
                str=str..string.char(math.floor(data/(2^j)))
                data=math.fmod(data,(2^j))
                str_count = str_count - 1
            end
        end
    end

    local last = tonumber(string.byte(str, string.len(str), string.len(str)))
    if last == 0 then
        str = string.sub(str, 1, string.len(str) - 1)
    end
    return str
end

return M