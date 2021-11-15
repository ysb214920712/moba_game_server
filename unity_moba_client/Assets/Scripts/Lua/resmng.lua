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

local default_locale = "CN"
local locale = U.PrefsHelper.GetString("Locale", default_locale)
-- add_require("prop_lang_" .. string.lower(locale))

function resmng.get_locale_font()
    local locale = U.PrefsHelper.GetString("Locale", default_locale)
    return "font/cns_bold_SDF.asset", false
end

function resmng.get_locale()
    return locale
end

function resmng.set_locale(val)
    local last_font, last_rtl = resmng.get_locale_font()
    locale = val
    U.PrefsHelper.SetString("Locale", val)
    U.PrefsHelper.Save()

    do_load("prop_lang_" .. string.lower(val))

    local now_font, now_rtl = resmng.get_locale_font()
    if now_font ~= last_font then
        coroutine.wrap(function()
            if now_font then
                -- Yield(load_locale_font(now_font, now_rtl))
                ObjectPool:refresh_locale_font()
                UIMgr:refresh_ui_pool_locale_font()
            else
                UIConfig:set_rtl(now_rtl)
            end

            Messager.send(MID.SWITCH_LANGUAGE)
        end)()
    else
        UIConfig:set_rtl(now_rtl)
        Messager.send(MID.SWITCH_LANGUAGE)
    end
end

function resmng.language(id, ...)
    -- local arg = {...}
    -- if type(id) == "string" then
    --     id = resmng[id]
    -- end

    -- local str = resmng.propLanguage[id]
    -- if str then
	-- 	if #arg == 0 then
    --         return str or "undefine"
    --     else
    --         return resmng.format_ex(str, table.unpack(arg))
    --     end
    -- end
    return "undefine"
end

function resmng.sprite_localize(name, image)
if locale == default_locale then return end

if not name or name == "" then
    ELOG("[resmng.sprite_localize] sprite name can not be nil or empty!!")
    return
end

--临时处理只有中英文的情况
local temp_locale
if locale == "CN" then
    temp_locale = "CN"
else
    temp_locale = "EN"
end

local end_len = string.len(temp_locale) + 1
name = string.sub(name, 1, string.len(name) - end_len)

return U.XLoader.LoadAsync(string.format("image/ui/localization/%s_%s.png", name, temp_locale), typeof(U.Sprite),
    function(obj)
        if obj and not image:IsNull() then
            image.sprite = obj
        end
    end
)
end

U.UILocalize.textLocalizeFunc_ = resmng.language
U.UILocalize.spriteLocalizeFunc_ = resmng.sprite_localize

function resmng.is_language_id_arg(_content)
	return string.sub(_content, 1, 3) == "|||"
end

function resmng.parse_language_id_arg(_code)
    if not resmng.is_language_id_arg(_code) then
        return _code
    else
		local id = tonumber(string.sub(_code, 4))
		if not id then
			return _code
		else
			return language(id)
		end
	end
end

function resmng.process_item_config()
    local propItem = resmng.propItem
    -- table_util.merge(resmng.propItemCurrency, propItem)
end

function resmng.postprocess_config()
    resmng.process_item_config()
end

return resmng