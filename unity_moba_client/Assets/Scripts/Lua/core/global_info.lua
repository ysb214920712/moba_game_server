---@class GlobalInfo
GlobalInfo = {}
local M = GlobalInfo

M.control_object = U.GameObject.Find("game")

M.ui_canvas_resolution_x = U.PhoneHelper.UIResolution.x
M.ui_canvas_resolution_y = U.PhoneHelper.UIResolution.y
M.ui_canvas = U.GameObject.Find("UI/Canvas")

M.is_ios = (U.Application.platform == U.RuntimePlatform.IPhonePlayer)
M.is_android = (U.Application.platform == U.RuntimePlatform.Android)

M.system_memory = U.SystemInfo.systemMemorySize
M.identifier = U.Application.identifier

M.locale = U.PhoneHelper.Country()
M.language = U.PhoneHelper.Language()
M.client_ver = 1--U.GHelper.GameVersion()
M.client_ver_code = 1--U.GHelper.GameVersionCode()
M.env = ""--U.GHelper.GameEnv()
M.channel = ""--U.GHelper.GameChannel()
M.app_name = U.Application.productName

function M.ui_canvas_scale_x()
    return U.PhoneHelper.UICanvasSize.x / M.ui_canvas_resolution_x
end

function M.ui_canvas_scale_y()
    return U.PhoneHelper.UICanvasSize.y / M.ui_canvas_resolution_y
end

return M