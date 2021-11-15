---@class System.Timers.Timer : System.ComponentModel.Component
---@field public AutoReset System.Boolean @ setter getter
---@field public Enabled System.Boolean @ setter getter
---@field public Interval System.Double @ setter getter
---@field public Site System.ComponentModel.ISite @ setter getter
---@field public SynchronizingObject System.ComponentModel.ISynchronizeInvoke @ setter getter
System.Timers.Timer = {}
---@type System.Timers.Timer
CS.System.Timers.Timer = System.Timers.Timer

---@param value System.Timers.ElapsedEventHandler
---@return System.Void
function System.Timers.Timer:add_Elapsed(value)end
---@param value System.Timers.ElapsedEventHandler
---@return System.Void
function System.Timers.Timer:remove_Elapsed(value)end
---@return System.Void
function System.Timers.Timer:BeginInit()end
---@return System.Void
function System.Timers.Timer:Close()end
---@return System.Void
function System.Timers.Timer:EndInit()end
---@return System.Void
function System.Timers.Timer:Start()end
---@return System.Void
function System.Timers.Timer:Stop()end
---@class System.Timers.TimersDescriptionAttribute : System.ComponentModel.DescriptionAttribute
---@field public Description System.String @  getter
System.Timers.TimersDescriptionAttribute = {}
---@type System.Timers.TimersDescriptionAttribute
CS.System.Timers.TimersDescriptionAttribute = System.Timers.TimersDescriptionAttribute

---@class System.Timers.ElapsedEventArgs : System.EventArgs
---@field public SignalTime System.DateTime @  getter
System.Timers.ElapsedEventArgs = {}
---@type System.Timers.ElapsedEventArgs
CS.System.Timers.ElapsedEventArgs = System.Timers.ElapsedEventArgs

