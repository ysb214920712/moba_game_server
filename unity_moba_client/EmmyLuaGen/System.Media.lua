---@class System.Media.SoundPlayer : System.ComponentModel.Component
---@field public IsLoadCompleted System.Boolean @  getter
---@field public LoadTimeout System.Int32 @ setter getter
---@field public SoundLocation System.String @ setter getter
---@field public Stream System.IO.Stream @ setter getter
---@field public Tag System.Object @ setter getter
System.Media.SoundPlayer = {}
---@type System.Media.SoundPlayer
CS.System.Media.SoundPlayer = System.Media.SoundPlayer

---@return System.Void
function System.Media.SoundPlayer:Load()end
---@return System.Void
function System.Media.SoundPlayer:LoadAsync()end
---@return System.Void
function System.Media.SoundPlayer:Play()end
---@return System.Void
function System.Media.SoundPlayer:PlayLooping()end
---@return System.Void
function System.Media.SoundPlayer:PlaySync()end
---@return System.Void
function System.Media.SoundPlayer:Stop()end
---@param value System.ComponentModel.AsyncCompletedEventHandler
---@return System.Void
function System.Media.SoundPlayer:add_LoadCompleted(value)end
---@param value System.ComponentModel.AsyncCompletedEventHandler
---@return System.Void
function System.Media.SoundPlayer:remove_LoadCompleted(value)end
---@param value System.EventHandler
---@return System.Void
function System.Media.SoundPlayer:add_SoundLocationChanged(value)end
---@param value System.EventHandler
---@return System.Void
function System.Media.SoundPlayer:remove_SoundLocationChanged(value)end
---@param value System.EventHandler
---@return System.Void
function System.Media.SoundPlayer:add_StreamChanged(value)end
---@param value System.EventHandler
---@return System.Void
function System.Media.SoundPlayer:remove_StreamChanged(value)end
---@class System.Media.SystemSound : System.Object
System.Media.SystemSound = {}
---@type System.Media.SystemSound
CS.System.Media.SystemSound = System.Media.SystemSound

---@return System.Void
function System.Media.SystemSound:Play()end
---@class System.Media.SystemSounds : System.Object
---@field public Asterisk System.Media.SystemSound @static  getter
---@field public Beep System.Media.SystemSound @static  getter
---@field public Exclamation System.Media.SystemSound @static  getter
---@field public Hand System.Media.SystemSound @static  getter
---@field public Question System.Media.SystemSound @static  getter
System.Media.SystemSounds = {}
---@type System.Media.SystemSounds
CS.System.Media.SystemSounds = System.Media.SystemSounds

