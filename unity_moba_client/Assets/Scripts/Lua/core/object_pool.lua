---@class ObjectPool
ObjectPool = class("ObjectPool")
local M = ObjectPool

M.GlobalContainer = U.GameObject("Pool Node Container").transform
M.GlobalContainer.gameObject:SetActive(false)
U.GameObject.DontDestroyOnLoad(M.GlobalContainer)

function M:ctor(size,model,is_obj,container)
    self.list_= {}
    self.model_ = model
    self.name_ = model.name
    self.container_ = container
    self.on_get_fun_ = nil
    self.on_put_fun_ = nil

    if(is_obj) then
        size = size - 1
        model.transform:SetParent(self.container_)
        model:SetActive(false)
        table.insert(self.list_,model)
    end

    for i = 1,size do
        local obj = U.GameObject.Instantiate(self.model_,self.container_,false)
        obj:SetActive(false)
        table.insert(self.list_,obj)
    end
end

function M:set_on_get(func)
    self.on_get_fun_ = func
end

function M:set_on_put(func)
    self.on_put_fun_ = func
end

function M.create_from_object(size,model,container)
    return M.new(size,model,true,container)
end

function M.create_from_prefeb(size,model,container)
    return M.new(size,model,false,container)
end

function M:get()
    local node
    if #self.list_ > 0 then
        node = self.list_[#self.list_]
        table.remove(self.list_)
    else
        node = U.GameObject.Instantiate(self.model_,self.container_,false)
    end
    node:SetActive(true)
    if(self.on_get_fun_) then
        self.on_get_fun_(node)
    end
    return node
end

function M:get_first()
    local node
    if #self.list_ > 0 then
        node = self.list_[1]
        table.remove(self.list_, 1)
    else
        node = U.GameObject.Instantiate(self.model_,self.container_,false)
    end
    node:SetActive(true)
    if(self.on_get_fun_) then
        self.on_get_fun_(node)
    end
    return node
end

function M:put(node)
    if(node.transform.parent ~= self.container_) then
        node.transform:SetParent(self.container_,false)
    end
    node:SetActive(false)
    table.insert(self.list_, node)
    if(self.on_put_fun_) then
        self.on_put_fun_(node)
    end
end

function M:size(self)
    return #self.list_
end

function M:clear()
    for _, obj in ipairs(self.list_) do
        U.GameObject.Destroy(obj)
    end
    self.list_ = {}
    self.model_ = nil
    self.on_get_fun_ = nil
    self.on_put_fun_ = nil
end

function M:refresh_locale_font()
    local tmp_array = util.get_comps_in_children(self.GlobalContainer.gameObject, U.TMP_Text, true)
    local font_obj, rtl = UIConfig:get_global_font()
    util.foreach_cs_array(tmp_array, function(obj)
        if obj then
            obj.font = font_obj
            obj.isRightToLeftText = rtl
        end
    end)
end

return M