---@class Database
Database = class("Database")
local M = Database
local type = type

local _RootPath =  U.GHelper.GetPersistentDataPath() 
local _Device32BitCryptKey = nil
local _LockedFileMap = {}

function M.init_crypt_key()
    _Device32BitCryptKey = U.GHelper.Device32BitCryptKey
end

-- use for store lua byte code
function M.new_code_db(fn)
    local db = M.new(fn)
    db.encrypt_name_ = true
    db.jstr_encrypt_key_ = nil
    db.content_type_ = "code"

    if _PUBLISH then
        db.folder_ = db.folder_ and U.GHelper.Md5Sum(db.folder_)
        db.file_name_ = db.file_name_ and U.GHelper.Md5Sum(db.file_name_) 
    end
    return db
end

-- use for store encrypted data
function M.new_archive_db(fn)
    local db = M.new(fn)
    db.encrypt_name_ = true
    
    if _PUBLISH then -- encrypt only on _PUBLISH version
        db.jstr_encrypt_key_ = _Device32BitCryptKey
        db.folder_ = db.folder_ and U.GHelper.Md5Sum(db.folder_)
        db.file_name_ = db.file_name_ and U.GHelper.Md5Sum(db.file_name_)
    end
    db.content_type_ = "jstr"
    return db
end

-- use for store readable data
function M.new_setting_db(fn)
    local db = M.new(fn)
    db.encrypt_name_ = true
    db.jstr_encrypt_key_ = nil
    db.content_type_ = "jstr"
    return db
end

-- use for store readable log data
function M.new_log_db(fn)
    local db = M.new(fn)
    db.encrypt_name_ = true
    db.jstr_encrypt_key_ = nil
    db.content_type_ = "jstr"
    return db
end

-- use for store account cache for login
function M.new_login_db(fn)
    local db = M.new(fn)
    db.encrypt_name_ = true
    
    if _PUBLISH then -- encrypt only on _PUBLISH version
        db.jstr_encrypt_key_ = _Device32BitCryptKey
        db.folder_ = db.folder_ and U.GHelper.Md5Sum(db.folder_)
        db.file_name_ = db.file_name_ and U.GHelper.Md5Sum(db.file_name_)
    end
    db.content_type_ = "jstr"
    return db
end

function M:ctor(fn)
    local count = str_util.count(fn,"/")
    if count > 1 then
        ELOG("error fn name: %s", fn)
        return
    end
    self.file_name_ = fn
    self.folder_ = nil
    if count == 1 then
        local arr = str_util.split(fn,"/")
        self.folder_ = arr[1]
        self.file_name_ = arr[2]
    end

    self.jstr_encrypt_key_ = nil
end

-- load and decrypt from file
function M:load()
    return self:decrypt(self:load_origin())
end

-- load data ,and cover copy to t
function M:load_to(t,merge_fun)
    assert(self.content_type_ == "jstr")

    local data = self:load()
    if data == nil then
        return
    end
    merge_fun = merge_fun or self.merge_fully
    merge_fun(t,data) 
    return t
end

-- load origin data
function M:load_origin()
    local file,data

    if self.content_type_ == "jstr" then
        file = io.open(self:get_realpath(),"r")
    elseif(self.content_type_ == "code") then
        file = io.open(self:get_realpath(),"rb")
    end
    if file then
        data = file:read("a")
        file:close()
    end
    return data
end

function M.decrypt_archive(udid)
    local crypt_key = U.GHelper.Get32BitCryptKey(udid)
    local path = string.format("%s%s",_RootPath, U.GHelper.Md5Sum("archive"))

    local file = io.open(path, "r")
    local data = file:read("a")

    local save_file = io.open(string.format("%s%s",_RootPath, "decrypt_archive"), "w")
    save_file:write(U.GHelper.DecryptTextSafely(data, crypt_key))
    save_file:flush()
    save_file:close()

    file:close()

    INFO("decrpyt archive for %s", udid)
end

-- decrypt data by type
function M:decrypt(data)
    if data == nil then
        return nil
    end

    if self.content_type_ == "jstr" then
        if data == "" then
            return nil
        end
        if self.jstr_encrypt_key_ then
            data = U.GHelper.DecryptTextSafely(data,self.jstr_encrypt_key_)
        end
        if not (data == nil or data == "") then
            return table_util.decode(data)
        end

    elseif self.content_type_ == "code" then   -- decrypt saved code to function
        local f,msg = load(data)
        if (not f) then
            ELOG("can't load code with msg:" .. msg)
            return nil
        end
        return f
    end
    return nil
end

-- save database
function M:save(data)
    self:save_origin(self:encrypt(data))
end

-- save originly
function M:save_origin(data)
    if data == nil then
        return
    end

    if self.folder_ then
        U.GHelper.CreateDirectory(_RootPath .. self.folder_)
    end

    local file
    if self.content_type_ == "jstr" then
        file = io.open(self:get_realpath(),"w+")
    elseif self.content_type_ == "code" then
        file = io.open(self:get_realpath(),"w+b")
        print("write",self:get_realpath(),file == nil)
    end

    if file then
        file:write(data)
        file:flush()
        file:close()
    end
end

-- encrypt data
function M:encrypt(data)
    if data == nil then
        return nil
    end
    if self.content_type_ == "jstr" then
        data = Json.encode(data)
        if self.jstr_encrypt_key_ then
            data = U.GHelper.EncryptText(data,self.jstr_encrypt_key_)
        end
        return data
    elseif self.content_type_ == "code" then   -- data is a code str
        return string.dump(data,true)
    end
end

-- delete file
function M:delete()
    if self:is_locked() then
        return false
    end
    return os.remove(self:get_realpath())
end

-- global lock file, forbid write or delete
function M:lock()
    _LockedFileMap[self:get_realpath()] = true
end

-- unlock
function M:unlock()
    _LockedFileMap[self:get_realpath()] = false
end

-- is locked
function M:is_locked()
    return _LockedFileMap[self:get_realpath()]
end

-- returen real full path
function M:get_realpath()
    if not self.real_path_ then
        self.real_path_ = string.format("%s%s%s",_RootPath, self.folder_ and (self.folder_ .."/") or "", self.file_name_)
    end
    return self.real_path_
end

----------------------------------------------------------------------------------------------------------

-- 'Static' method
-- use for merge local data to memery data
function M.merge_fully(t,u)
    for k,v in pairs(u) do
        local tu = type(v)
        if tu == "table" then
            if( t[k] == nil) then
                t[k] = {}
                M.merge_fully(t[k],v)
            elseif type(t[k]) == "table" then
                M.merge_fully(t[k],v)
            end
        elseif t[k] == nil or type(t[k]) == tu then
            t[k] = v
        end
    end
end

-- use for merge local data to memery data
function M.merge_exisit(t,u)
    for k,v in pairs(u) do
        if t[k] ~= nil then
            local tu = type(v)
            if type(t[k]) == tu then
                if tu == "table" then
                    M.merge_exisit(t[k],v)
                else
                    t[k] = v
                end
            end
        end
    end
end

return M