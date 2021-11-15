---@class Microsoft.Win32.Registry : System.Object
---@field public ClassesRoot Microsoft.Win32.RegistryKey
---@field public CurrentConfig Microsoft.Win32.RegistryKey
---@field public CurrentUser Microsoft.Win32.RegistryKey
---@field public DynData Microsoft.Win32.RegistryKey
---@field public LocalMachine Microsoft.Win32.RegistryKey
---@field public PerformanceData Microsoft.Win32.RegistryKey
---@field public Users Microsoft.Win32.RegistryKey
Microsoft.Win32.Registry = {}
---@type Microsoft.Win32.Registry
CS.Microsoft.Win32.Registry = Microsoft.Win32.Registry

---@overload fun(keyName:System.String, valueName:System.String, value:System.Object, valueKind:Microsoft.Win32.RegistryValueKind):System.Void
---@param keyName System.String
---@param valueName System.String
---@param value System.Object
---@return System.Void
function Microsoft.Win32.Registry.SetValue(keyName, valueName, value)end
---@param keyName System.String
---@param valueName System.String
---@param defaultValue System.Object
---@return System.Object
function Microsoft.Win32.Registry.GetValue(keyName, valueName, defaultValue)end
---@class Microsoft.Win32.RegistryHive : System.Enum
Microsoft.Win32.RegistryHive = {}
---@type Microsoft.Win32.RegistryHive
CS.Microsoft.Win32.RegistryHive = Microsoft.Win32.RegistryHive


---@class Microsoft.Win32.RegistryKey : System.MarshalByRefObject
---@field public Name System.String @  getter
---@field public SubKeyCount System.Int32 @  getter
---@field public ValueCount System.Int32 @  getter
---@field public Handle Microsoft.Win32.SafeHandles.SafeRegistryHandle @  getter
---@field public View Microsoft.Win32.RegistryView @  getter
Microsoft.Win32.RegistryKey = {}
---@type Microsoft.Win32.RegistryKey
CS.Microsoft.Win32.RegistryKey = Microsoft.Win32.RegistryKey

---@return System.Void
function Microsoft.Win32.RegistryKey:Dispose()end
---@return System.Void
function Microsoft.Win32.RegistryKey:Flush()end
---@return System.Void
function Microsoft.Win32.RegistryKey:Close()end
---@overload fun(name:System.String, value:System.Object, valueKind:Microsoft.Win32.RegistryValueKind):System.Void
---@param name System.String
---@param value System.Object
---@return System.Void
function Microsoft.Win32.RegistryKey:SetValue(name, value)end
---@overload fun(name:System.String, writable:System.Boolean):Microsoft.Win32.RegistryKey
---@overload fun(name:System.String, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck):Microsoft.Win32.RegistryKey
---@overload fun(name:System.String, rights:System.Security.AccessControl.RegistryRights):Microsoft.Win32.RegistryKey
---@overload fun(name:System.String, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, rights:System.Security.AccessControl.RegistryRights):Microsoft.Win32.RegistryKey
---@param name System.String
---@return Microsoft.Win32.RegistryKey
function Microsoft.Win32.RegistryKey:OpenSubKey(name)end
---@overload fun(name:System.String, defaultValue:System.Object):System.Object
---@overload fun(name:System.String, defaultValue:System.Object, options:Microsoft.Win32.RegistryValueOptions):System.Object
---@param name System.String
---@return System.Object
function Microsoft.Win32.RegistryKey:GetValue(name)end
---@param name System.String
---@return Microsoft.Win32.RegistryValueKind
function Microsoft.Win32.RegistryKey:GetValueKind(name)end
---@overload fun(subkey:System.String, writable:System.Boolean):Microsoft.Win32.RegistryKey
---@overload fun(subkey:System.String, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck):Microsoft.Win32.RegistryKey
---@overload fun(subkey:System.String, writable:System.Boolean, options:Microsoft.Win32.RegistryOptions):Microsoft.Win32.RegistryKey
---@overload fun(subkey:System.String, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, registrySecurity:System.Security.AccessControl.RegistrySecurity):Microsoft.Win32.RegistryKey
---@overload fun(subkey:System.String, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, options:Microsoft.Win32.RegistryOptions):Microsoft.Win32.RegistryKey
---@overload fun(subkey:System.String, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, registryOptions:Microsoft.Win32.RegistryOptions, registrySecurity:System.Security.AccessControl.RegistrySecurity):Microsoft.Win32.RegistryKey
---@param subkey System.String
---@return Microsoft.Win32.RegistryKey
function Microsoft.Win32.RegistryKey:CreateSubKey(subkey)end
---@overload fun(subkey:System.String, throwOnMissingSubKey:System.Boolean):System.Void
---@param subkey System.String
---@return System.Void
function Microsoft.Win32.RegistryKey:DeleteSubKey(subkey)end
---@overload fun(subkey:System.String, throwOnMissingSubKey:System.Boolean):System.Void
---@param subkey System.String
---@return System.Void
function Microsoft.Win32.RegistryKey:DeleteSubKeyTree(subkey)end
---@overload fun(name:System.String, throwOnMissingValue:System.Boolean):System.Void
---@param name System.String
---@return System.Void
function Microsoft.Win32.RegistryKey:DeleteValue(name)end
---@overload fun(includeSections:System.Security.AccessControl.AccessControlSections):System.Security.AccessControl.RegistrySecurity
---@return System.Security.AccessControl.RegistrySecurity
function Microsoft.Win32.RegistryKey:GetAccessControl()end
---@return System.String[]
function Microsoft.Win32.RegistryKey:GetSubKeyNames()end
---@return System.String[]
function Microsoft.Win32.RegistryKey:GetValueNames()end
---@overload fun(handle:Microsoft.Win32.SafeHandles.SafeRegistryHandle, view:Microsoft.Win32.RegistryView):Microsoft.Win32.RegistryKey
---@param handle Microsoft.Win32.SafeHandles.SafeRegistryHandle
---@return Microsoft.Win32.RegistryKey
function Microsoft.Win32.RegistryKey.FromHandle(handle)end
---@overload fun(hKey:Microsoft.Win32.RegistryHive, machineName:System.String, view:Microsoft.Win32.RegistryView):Microsoft.Win32.RegistryKey
---@param hKey Microsoft.Win32.RegistryHive
---@param machineName System.String
---@return Microsoft.Win32.RegistryKey
function Microsoft.Win32.RegistryKey.OpenRemoteBaseKey(hKey, machineName)end
---@param hKey Microsoft.Win32.RegistryHive
---@param view Microsoft.Win32.RegistryView
---@return Microsoft.Win32.RegistryKey
function Microsoft.Win32.RegistryKey.OpenBaseKey(hKey, view)end
---@param registrySecurity System.Security.AccessControl.RegistrySecurity
---@return System.Void
function Microsoft.Win32.RegistryKey:SetAccessControl(registrySecurity)end
---@return System.String
function Microsoft.Win32.RegistryKey:ToString()end
---@class Microsoft.Win32.RegistryKeyPermissionCheck : System.Enum
Microsoft.Win32.RegistryKeyPermissionCheck = {}
---@type Microsoft.Win32.RegistryKeyPermissionCheck
CS.Microsoft.Win32.RegistryKeyPermissionCheck = Microsoft.Win32.RegistryKeyPermissionCheck

---@return System.Int32 value:0
Microsoft.Win32.RegistryKeyPermissionCheck.Default = 0
---@return System.Int32 value:1
Microsoft.Win32.RegistryKeyPermissionCheck.ReadSubTree = 1
---@return System.Int32 value:2
Microsoft.Win32.RegistryKeyPermissionCheck.ReadWriteSubTree = 2

---@class Microsoft.Win32.RegistryOptions : System.Enum
Microsoft.Win32.RegistryOptions = {}
---@type Microsoft.Win32.RegistryOptions
CS.Microsoft.Win32.RegistryOptions = Microsoft.Win32.RegistryOptions

---@return System.Int32 value:0
Microsoft.Win32.RegistryOptions.None = 0
---@return System.Int32 value:1
Microsoft.Win32.RegistryOptions.Volatile = 1

---@class Microsoft.Win32.RegistryValueKind : System.Enum
Microsoft.Win32.RegistryValueKind = {}
---@type Microsoft.Win32.RegistryValueKind
CS.Microsoft.Win32.RegistryValueKind = Microsoft.Win32.RegistryValueKind

---@return System.Int32 value:0
Microsoft.Win32.RegistryValueKind.Unknown = 0
---@return System.Int32 value:1
Microsoft.Win32.RegistryValueKind.String = 1
---@return System.Int32 value:2
Microsoft.Win32.RegistryValueKind.ExpandString = 2
---@return System.Int32 value:3
Microsoft.Win32.RegistryValueKind.Binary = 3
---@return System.Int32 value:4
Microsoft.Win32.RegistryValueKind.DWord = 4
---@return System.Int32 value:7
Microsoft.Win32.RegistryValueKind.MultiString = 7

---@class Microsoft.Win32.RegistryValueOptions : System.Enum
Microsoft.Win32.RegistryValueOptions = {}
---@type Microsoft.Win32.RegistryValueOptions
CS.Microsoft.Win32.RegistryValueOptions = Microsoft.Win32.RegistryValueOptions

---@return System.Int32 value:0
Microsoft.Win32.RegistryValueOptions.None = 0
---@return System.Int32 value:1
Microsoft.Win32.RegistryValueOptions.DoNotExpandEnvironmentNames = 1

---@class Microsoft.Win32.RegistryView : System.Enum
Microsoft.Win32.RegistryView = {}
---@type Microsoft.Win32.RegistryView
CS.Microsoft.Win32.RegistryView = Microsoft.Win32.RegistryView

---@return System.Int32 value:0
Microsoft.Win32.RegistryView.Default = 0

---@class Microsoft.Win32.IntranetZoneCredentialPolicy : System.Object
Microsoft.Win32.IntranetZoneCredentialPolicy = {}
---@type Microsoft.Win32.IntranetZoneCredentialPolicy
CS.Microsoft.Win32.IntranetZoneCredentialPolicy = Microsoft.Win32.IntranetZoneCredentialPolicy

---@param challengeUri System.Uri
---@param request System.Net.WebRequest
---@param credential System.Net.NetworkCredential
---@param authModule System.Net.IAuthenticationModule
---@return System.Boolean
function Microsoft.Win32.IntranetZoneCredentialPolicy:ShouldSendCredential(challengeUri, request, credential, authModule)end
---@class Microsoft.Win32.PowerModeChangedEventArgs : System.EventArgs
---@field public Mode Microsoft.Win32.PowerModes @  getter
Microsoft.Win32.PowerModeChangedEventArgs = {}
---@type Microsoft.Win32.PowerModeChangedEventArgs
CS.Microsoft.Win32.PowerModeChangedEventArgs = Microsoft.Win32.PowerModeChangedEventArgs

---@class Microsoft.Win32.PowerModes : System.Enum
Microsoft.Win32.PowerModes = {}
---@type Microsoft.Win32.PowerModes
CS.Microsoft.Win32.PowerModes = Microsoft.Win32.PowerModes

---@return System.Int32 value:1
Microsoft.Win32.PowerModes.Resume = 1
---@return System.Int32 value:2
Microsoft.Win32.PowerModes.StatusChange = 2

---@class Microsoft.Win32.SessionEndReasons : System.Enum
Microsoft.Win32.SessionEndReasons = {}
---@type Microsoft.Win32.SessionEndReasons
CS.Microsoft.Win32.SessionEndReasons = Microsoft.Win32.SessionEndReasons

---@return System.Int32 value:1
Microsoft.Win32.SessionEndReasons.Logoff = 1

---@class Microsoft.Win32.SessionEndedEventArgs : System.EventArgs
---@field public Reason Microsoft.Win32.SessionEndReasons @  getter
Microsoft.Win32.SessionEndedEventArgs = {}
---@type Microsoft.Win32.SessionEndedEventArgs
CS.Microsoft.Win32.SessionEndedEventArgs = Microsoft.Win32.SessionEndedEventArgs

---@class Microsoft.Win32.SessionEndingEventArgs : System.EventArgs
---@field public Reason Microsoft.Win32.SessionEndReasons @  getter
---@field public Cancel System.Boolean @ setter getter
Microsoft.Win32.SessionEndingEventArgs = {}
---@type Microsoft.Win32.SessionEndingEventArgs
CS.Microsoft.Win32.SessionEndingEventArgs = Microsoft.Win32.SessionEndingEventArgs

---@class Microsoft.Win32.SessionSwitchEventArgs : System.EventArgs
---@field public Reason Microsoft.Win32.SessionSwitchReason @  getter
Microsoft.Win32.SessionSwitchEventArgs = {}
---@type Microsoft.Win32.SessionSwitchEventArgs
CS.Microsoft.Win32.SessionSwitchEventArgs = Microsoft.Win32.SessionSwitchEventArgs

---@class Microsoft.Win32.SessionSwitchReason : System.Enum
Microsoft.Win32.SessionSwitchReason = {}
---@type Microsoft.Win32.SessionSwitchReason
CS.Microsoft.Win32.SessionSwitchReason = Microsoft.Win32.SessionSwitchReason

---@return System.Int32 value:1
Microsoft.Win32.SessionSwitchReason.ConsoleConnect = 1
---@return System.Int32 value:2
Microsoft.Win32.SessionSwitchReason.ConsoleDisconnect = 2
---@return System.Int32 value:3
Microsoft.Win32.SessionSwitchReason.RemoteConnect = 3
---@return System.Int32 value:4
Microsoft.Win32.SessionSwitchReason.RemoteDisconnect = 4
---@return System.Int32 value:5
Microsoft.Win32.SessionSwitchReason.SessionLogon = 5
---@return System.Int32 value:6
Microsoft.Win32.SessionSwitchReason.SessionLogoff = 6
---@return System.Int32 value:7
Microsoft.Win32.SessionSwitchReason.SessionLock = 7
---@return System.Int32 value:8
Microsoft.Win32.SessionSwitchReason.SessionUnlock = 8

---@class Microsoft.Win32.SystemEvents : System.Object
Microsoft.Win32.SystemEvents = {}
---@type Microsoft.Win32.SystemEvents
CS.Microsoft.Win32.SystemEvents = Microsoft.Win32.SystemEvents

---@param interval System.Int32
---@return System.IntPtr
function Microsoft.Win32.SystemEvents.CreateTimer(interval)end
---@param timerId System.IntPtr
---@return System.Void
function Microsoft.Win32.SystemEvents.KillTimer(timerId)end
---@param method System.Delegate
---@return System.Void
function Microsoft.Win32.SystemEvents.InvokeOnEventsThread(method)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_DisplaySettingsChanged(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_DisplaySettingsChanged(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_DisplaySettingsChanging(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_DisplaySettingsChanging(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_EventsThreadShutdown(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_EventsThreadShutdown(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_InstalledFontsChanged(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_InstalledFontsChanged(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_LowMemory(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_LowMemory(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_PaletteChanged(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_PaletteChanged(value)end
---@param value Microsoft.Win32.PowerModeChangedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_PowerModeChanged(value)end
---@param value Microsoft.Win32.PowerModeChangedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_PowerModeChanged(value)end
---@param value Microsoft.Win32.SessionEndedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_SessionEnded(value)end
---@param value Microsoft.Win32.SessionEndedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_SessionEnded(value)end
---@param value Microsoft.Win32.SessionEndingEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_SessionEnding(value)end
---@param value Microsoft.Win32.SessionEndingEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_SessionEnding(value)end
---@param value Microsoft.Win32.SessionSwitchEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_SessionSwitch(value)end
---@param value Microsoft.Win32.SessionSwitchEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_SessionSwitch(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_TimeChanged(value)end
---@param value System.EventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_TimeChanged(value)end
---@param value Microsoft.Win32.TimerElapsedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_TimerElapsed(value)end
---@param value Microsoft.Win32.TimerElapsedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_TimerElapsed(value)end
---@param value Microsoft.Win32.UserPreferenceChangedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_UserPreferenceChanged(value)end
---@param value Microsoft.Win32.UserPreferenceChangedEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_UserPreferenceChanged(value)end
---@param value Microsoft.Win32.UserPreferenceChangingEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.add_UserPreferenceChanging(value)end
---@param value Microsoft.Win32.UserPreferenceChangingEventHandler
---@return System.Void
function Microsoft.Win32.SystemEvents.remove_UserPreferenceChanging(value)end
---@class Microsoft.Win32.TimerElapsedEventArgs : System.EventArgs
---@field public TimerId System.IntPtr @  getter
Microsoft.Win32.TimerElapsedEventArgs = {}
---@type Microsoft.Win32.TimerElapsedEventArgs
CS.Microsoft.Win32.TimerElapsedEventArgs = Microsoft.Win32.TimerElapsedEventArgs

---@class Microsoft.Win32.UserPreferenceCategory : System.Enum
Microsoft.Win32.UserPreferenceCategory = {}
---@type Microsoft.Win32.UserPreferenceCategory
CS.Microsoft.Win32.UserPreferenceCategory = Microsoft.Win32.UserPreferenceCategory

---@return System.Int32 value:1
Microsoft.Win32.UserPreferenceCategory.Accessibility = 1
---@return System.Int32 value:2
Microsoft.Win32.UserPreferenceCategory.Color = 2
---@return System.Int32 value:3
Microsoft.Win32.UserPreferenceCategory.Desktop = 3
---@return System.Int32 value:4
Microsoft.Win32.UserPreferenceCategory.General = 4
---@return System.Int32 value:5
Microsoft.Win32.UserPreferenceCategory.Icon = 5
---@return System.Int32 value:6
Microsoft.Win32.UserPreferenceCategory.Keyboard = 6
---@return System.Int32 value:7
Microsoft.Win32.UserPreferenceCategory.Menu = 7
---@return System.Int32 value:8
Microsoft.Win32.UserPreferenceCategory.Mouse = 8
---@return System.Int32 value:9
Microsoft.Win32.UserPreferenceCategory.Policy = 9
---@return System.Int32 value:10
Microsoft.Win32.UserPreferenceCategory.Power = 10
---@return System.Int32 value:11
Microsoft.Win32.UserPreferenceCategory.Screensaver = 11
---@return System.Int32 value:12
Microsoft.Win32.UserPreferenceCategory.Window = 12
---@return System.Int32 value:13
Microsoft.Win32.UserPreferenceCategory.Locale = 13

---@class Microsoft.Win32.UserPreferenceChangedEventArgs : System.EventArgs
---@field public Category Microsoft.Win32.UserPreferenceCategory @  getter
Microsoft.Win32.UserPreferenceChangedEventArgs = {}
---@type Microsoft.Win32.UserPreferenceChangedEventArgs
CS.Microsoft.Win32.UserPreferenceChangedEventArgs = Microsoft.Win32.UserPreferenceChangedEventArgs

---@class Microsoft.Win32.UserPreferenceChangingEventArgs : System.EventArgs
---@field public Category Microsoft.Win32.UserPreferenceCategory @  getter
Microsoft.Win32.UserPreferenceChangingEventArgs = {}
---@type Microsoft.Win32.UserPreferenceChangingEventArgs
CS.Microsoft.Win32.UserPreferenceChangingEventArgs = Microsoft.Win32.UserPreferenceChangingEventArgs

