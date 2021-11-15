---@class BehaviourBridge
BehaviourBridge = class("BehaviourBridge")
local M = BehaviourBridge

function M:ctor(go)
    self:bind(go)
end

function M:bridge_type()
    return U.LuaBridgeType.Base
end

---@param go UnityEngine.GameObject
function M:bind(go)
    if go then
        self.gameObject = go
        self.transform = go.transform
        local comp = U.LuaBridgeBase.Bind(self:bridge_type(), go, self, self:bind_behaviour_funcs())
        if comp then
            self.lua_bridge__ = comp
            if self.awake then
                self:awake()
            end
            self.alive__ = true
        end
    end
end

function M:lua_bridge()
    return self.lua_bridge__
end

local function free_userdate_ref(tb,depth)
    if depth > 2 then return end

    for k, v in pairs(tb) do
        if type(v) == "table" and not getmetatable(v) then
            free_userdate_ref(v, depth+1)
        elseif type(v) == "userdata" then
            tb[k] = nil
        end
    end
end

function M:on_destroy()
    self.alive__ = false
    free_userdate_ref(self, 0)
end

function M:alive()
    return self.alive__
end

function M:wrap_func(func_name)
    return function(t, ...)
        local func = t[func_name]
        if func then
            return func(t, ...)
        end
    end
end

function M:bind_behaviour_funcs()
    local Func = U.UnityBehaviourFunc

    return {
        [Func.Start] = self:wrap_func("start"),
        [Func.OnDestroy] =  self:wrap_func("on_destroy"),
    }
end


function M:get_trans()
    return self.transform
end

function M:set_parent(parent, stay_world_pos)
    if stay_world_pos == nil then
        stay_world_pos = true
    end
    self.transform:SetParent(parent, stay_world_pos)
end

function M:get_pos()
    return self.transform.position
end

function M:set_pos(pos)
    self.transform.position = pos
end

function M:set_rotation(angles)
    self.transform.localRotation = U.Quaternion.Euler(angles)
end

---@return UnityEngine.Transform
function M:get_child(name)
    return self.transform:Find(name)
end

---@return UnityEngine.GameObject
function M:get_child_object(name)
    local trans = self.transform:Find(name)
    if trans then
        return trans.gameObject
    end
end

---@generic T
---@param name string
---@param cclass T
---@return T
function M:get_child_comp(name, cclass)
    return util.get_child_comp(self, name, cclass)
end

---@generic T
---@param cclass T
---@return T
function M:get_comp(cclass)
    return util.get_comp(self, cclass)
end

---@generic T
---@param cclass T
---@return T
function M:add_comp(cclass)
    return util.add_comp(self, cclass)
end

---@generic T
---@param cclass T
---@return T
function M:get_or_add_comp(cclass)
    return util.get_or_add_comp(self, cclass)
end

function M:get_name()
    return self.gameObject.name
end

function M:export(tb, child)
    tb = tb or {}
    local comp
    if child then
        comp = util.get_child_comp(self, child, U.ReferGameObjects)
    else
        comp = util.get_comp(self,U.ReferGameObjects)
    end
    if comp then
        comp:ExportToLuaTable(tb)
    else
        ELOG("export failed:",self:get_name())
    end
    return tb
end

return M