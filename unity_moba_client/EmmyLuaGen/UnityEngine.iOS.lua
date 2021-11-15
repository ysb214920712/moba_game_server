---@class UnityEngine.iOS.SystemGestureDeferMode : System.Enum
UnityEngine.iOS.SystemGestureDeferMode = {}
---@type UnityEngine.iOS.SystemGestureDeferMode
CS.UnityEngine.iOS.SystemGestureDeferMode = UnityEngine.iOS.SystemGestureDeferMode

---@return System.Int32 value:0
UnityEngine.iOS.SystemGestureDeferMode.None = 0
---@return System.Int32 value:1
UnityEngine.iOS.SystemGestureDeferMode.TopEdge = 1
---@return System.Int32 value:2
UnityEngine.iOS.SystemGestureDeferMode.LeftEdge = 2
---@return System.Int32 value:4
UnityEngine.iOS.SystemGestureDeferMode.BottomEdge = 4

---@class UnityEngine.iOS.ADBannerView : System.Object
---@field public loaded System.Boolean @  getter
---@field public visible System.Boolean @ setter getter
---@field public layout UnityEngine.iOS.ADBannerView.Layout @ setter getter
---@field public position UnityEngine.Vector2 @ setter getter
---@field public size UnityEngine.Vector2 @  getter
UnityEngine.iOS.ADBannerView = {}
---@type UnityEngine.iOS.ADBannerView
CS.UnityEngine.iOS.ADBannerView = UnityEngine.iOS.ADBannerView

---@param type UnityEngine.iOS.ADBannerView.Type
---@return System.Boolean
function UnityEngine.iOS.ADBannerView.IsAvailable(type)end
---@param value UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate
---@return System.Void
function UnityEngine.iOS.ADBannerView.add_onBannerWasClicked(value)end
---@param value UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate
---@return System.Void
function UnityEngine.iOS.ADBannerView.remove_onBannerWasClicked(value)end
---@param value UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate
---@return System.Void
function UnityEngine.iOS.ADBannerView.add_onBannerWasLoaded(value)end
---@param value UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate
---@return System.Void
function UnityEngine.iOS.ADBannerView.remove_onBannerWasLoaded(value)end
---@param value UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate
---@return System.Void
function UnityEngine.iOS.ADBannerView.add_onBannerFailedToLoad(value)end
---@param value UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate
---@return System.Void
function UnityEngine.iOS.ADBannerView.remove_onBannerFailedToLoad(value)end
---@class UnityEngine.iOS.ADBannerView.Layout : System.Enum
UnityEngine.iOS.ADBannerView.Layout = {}
---@type UnityEngine.iOS.ADBannerView.Layout
CS.UnityEngine.iOS.ADBannerView.Layout = UnityEngine.iOS.ADBannerView.Layout

---@return System.Int32 value:0
UnityEngine.iOS.ADBannerView.Layout.Top = 0
---@return System.Int32 value:1
UnityEngine.iOS.ADBannerView.Layout.Bottom = 1
---@return System.Int32 value:2
UnityEngine.iOS.ADBannerView.Layout.CenterLeft = 2
---@return System.Int32 value:4
UnityEngine.iOS.ADBannerView.Layout.TopRight = 4
---@return System.Int32 value:5
UnityEngine.iOS.ADBannerView.Layout.BottomRight = 5
---@return System.Int32 value:6
UnityEngine.iOS.ADBannerView.Layout.CenterRight = 6
---@return System.Int32 value:8
UnityEngine.iOS.ADBannerView.Layout.TopCenter = 8
---@return System.Int32 value:9
UnityEngine.iOS.ADBannerView.Layout.BottomCenter = 9
---@return System.Int32 value:10
UnityEngine.iOS.ADBannerView.Layout.Center = 10

---@class UnityEngine.iOS.ADBannerView.Type : System.Enum
UnityEngine.iOS.ADBannerView.Type = {}
---@type UnityEngine.iOS.ADBannerView.Type
CS.UnityEngine.iOS.ADBannerView.Type = UnityEngine.iOS.ADBannerView.Type

---@return System.Int32 value:0
UnityEngine.iOS.ADBannerView.Type.Banner = 0
---@return System.Int32 value:1
UnityEngine.iOS.ADBannerView.Type.MediumRect = 1

---@class UnityEngine.iOS.ADInterstitialAd : System.Object
---@field public isAvailable System.Boolean @static  getter
---@field public loaded System.Boolean @  getter
UnityEngine.iOS.ADInterstitialAd = {}
---@type UnityEngine.iOS.ADInterstitialAd
CS.UnityEngine.iOS.ADInterstitialAd = UnityEngine.iOS.ADInterstitialAd

---@return System.Void
function UnityEngine.iOS.ADInterstitialAd:Show()end
---@return System.Void
function UnityEngine.iOS.ADInterstitialAd:ReloadAd()end
---@param value UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate
---@return System.Void
function UnityEngine.iOS.ADInterstitialAd.add_onInterstitialWasLoaded(value)end
---@param value UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate
---@return System.Void
function UnityEngine.iOS.ADInterstitialAd.remove_onInterstitialWasLoaded(value)end
---@param value UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate
---@return System.Void
function UnityEngine.iOS.ADInterstitialAd.add_onInterstitialWasViewed(value)end
---@param value UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate
---@return System.Void
function UnityEngine.iOS.ADInterstitialAd.remove_onInterstitialWasViewed(value)end
---@class UnityEngine.iOS.DeviceGeneration : System.Enum
UnityEngine.iOS.DeviceGeneration = {}
---@type UnityEngine.iOS.DeviceGeneration
CS.UnityEngine.iOS.DeviceGeneration = UnityEngine.iOS.DeviceGeneration

---@return System.Int32 value:0
UnityEngine.iOS.DeviceGeneration.Unknown = 0
---@return System.Int32 value:1
UnityEngine.iOS.DeviceGeneration.iPhone = 1
---@return System.Int32 value:2
UnityEngine.iOS.DeviceGeneration.iPhone3G = 2
---@return System.Int32 value:3
UnityEngine.iOS.DeviceGeneration.iPhone3GS = 3
---@return System.Int32 value:4
UnityEngine.iOS.DeviceGeneration.iPodTouch1Gen = 4
---@return System.Int32 value:5
UnityEngine.iOS.DeviceGeneration.iPodTouch2Gen = 5
---@return System.Int32 value:6
UnityEngine.iOS.DeviceGeneration.iPodTouch3Gen = 6
---@return System.Int32 value:7
UnityEngine.iOS.DeviceGeneration.iPad1Gen = 7
---@return System.Int32 value:8
UnityEngine.iOS.DeviceGeneration.iPhone4 = 8
---@return System.Int32 value:9
UnityEngine.iOS.DeviceGeneration.iPodTouch4Gen = 9
---@return System.Int32 value:10
UnityEngine.iOS.DeviceGeneration.iPad2Gen = 10
---@return System.Int32 value:11
UnityEngine.iOS.DeviceGeneration.iPhone4S = 11
---@return System.Int32 value:12
UnityEngine.iOS.DeviceGeneration.iPad3Gen = 12
---@return System.Int32 value:13
UnityEngine.iOS.DeviceGeneration.iPhone5 = 13
---@return System.Int32 value:14
UnityEngine.iOS.DeviceGeneration.iPodTouch5Gen = 14
---@return System.Int32 value:15
UnityEngine.iOS.DeviceGeneration.iPadMini1Gen = 15
---@return System.Int32 value:16
UnityEngine.iOS.DeviceGeneration.iPad4Gen = 16
---@return System.Int32 value:17
UnityEngine.iOS.DeviceGeneration.iPhone5C = 17
---@return System.Int32 value:18
UnityEngine.iOS.DeviceGeneration.iPhone5S = 18
---@return System.Int32 value:19
UnityEngine.iOS.DeviceGeneration.iPadAir1 = 19
---@return System.Int32 value:20
UnityEngine.iOS.DeviceGeneration.iPadMini2Gen = 20
---@return System.Int32 value:21
UnityEngine.iOS.DeviceGeneration.iPhone6 = 21
---@return System.Int32 value:22
UnityEngine.iOS.DeviceGeneration.iPhone6Plus = 22
---@return System.Int32 value:23
UnityEngine.iOS.DeviceGeneration.iPadMini3Gen = 23
---@return System.Int32 value:24
UnityEngine.iOS.DeviceGeneration.iPadAir2 = 24
---@return System.Int32 value:25
UnityEngine.iOS.DeviceGeneration.iPhone6S = 25
---@return System.Int32 value:26
UnityEngine.iOS.DeviceGeneration.iPhone6SPlus = 26
---@return System.Int32 value:27
UnityEngine.iOS.DeviceGeneration.iPadPro1Gen = 27
---@return System.Int32 value:28
UnityEngine.iOS.DeviceGeneration.iPadMini4Gen = 28
---@return System.Int32 value:29
UnityEngine.iOS.DeviceGeneration.iPhoneSE1Gen = 29
---@return System.Int32 value:30
UnityEngine.iOS.DeviceGeneration.iPadPro10Inch1Gen = 30
---@return System.Int32 value:31
UnityEngine.iOS.DeviceGeneration.iPhone7 = 31
---@return System.Int32 value:32
UnityEngine.iOS.DeviceGeneration.iPhone7Plus = 32
---@return System.Int32 value:33
UnityEngine.iOS.DeviceGeneration.iPodTouch6Gen = 33
---@return System.Int32 value:34
UnityEngine.iOS.DeviceGeneration.iPad5Gen = 34
---@return System.Int32 value:35
UnityEngine.iOS.DeviceGeneration.iPadPro2Gen = 35
---@return System.Int32 value:36
UnityEngine.iOS.DeviceGeneration.iPadPro10Inch2Gen = 36
---@return System.Int32 value:37
UnityEngine.iOS.DeviceGeneration.iPhone8 = 37
---@return System.Int32 value:38
UnityEngine.iOS.DeviceGeneration.iPhone8Plus = 38
---@return System.Int32 value:39
UnityEngine.iOS.DeviceGeneration.iPhoneX = 39
---@return System.Int32 value:40
UnityEngine.iOS.DeviceGeneration.iPhoneXS = 40
---@return System.Int32 value:41
UnityEngine.iOS.DeviceGeneration.iPhoneXSMax = 41
---@return System.Int32 value:42
UnityEngine.iOS.DeviceGeneration.iPhoneXR = 42
---@return System.Int32 value:43
UnityEngine.iOS.DeviceGeneration.iPadPro11Inch = 43
---@return System.Int32 value:44
UnityEngine.iOS.DeviceGeneration.iPadPro3Gen = 44

---@class UnityEngine.iOS.ActivityIndicatorStyle : System.Enum
UnityEngine.iOS.ActivityIndicatorStyle = {}
---@type UnityEngine.iOS.ActivityIndicatorStyle
CS.UnityEngine.iOS.ActivityIndicatorStyle = UnityEngine.iOS.ActivityIndicatorStyle

---@return System.Int32 value:0
UnityEngine.iOS.ActivityIndicatorStyle.WhiteLarge = 0
---@return System.Int32 value:1
UnityEngine.iOS.ActivityIndicatorStyle.White = 1
---@return System.Int32 value:2
UnityEngine.iOS.ActivityIndicatorStyle.Gray = 2

---@class UnityEngine.iOS.Device : System.Object
---@field public systemVersion System.String @static  getter
---@field public generation UnityEngine.iOS.DeviceGeneration @static  getter
---@field public vendorIdentifier System.String @static  getter
---@field public advertisingIdentifier System.String @static  getter
---@field public advertisingTrackingEnabled System.Boolean @static  getter
---@field public hideHomeButton System.Boolean @static setter getter
---@field public deferSystemGesturesMode UnityEngine.iOS.SystemGestureDeferMode @static setter getter
UnityEngine.iOS.Device = {}
---@type UnityEngine.iOS.Device
CS.UnityEngine.iOS.Device = UnityEngine.iOS.Device

---@param path System.String
---@return System.Void
function UnityEngine.iOS.Device.SetNoBackupFlag(path)end
---@param path System.String
---@return System.Void
function UnityEngine.iOS.Device.ResetNoBackupFlag(path)end
---@return System.Boolean
function UnityEngine.iOS.Device.RequestStoreReview()end
---@class UnityEngine.iOS.CalendarIdentifier : System.Enum
UnityEngine.iOS.CalendarIdentifier = {}
---@type UnityEngine.iOS.CalendarIdentifier
CS.UnityEngine.iOS.CalendarIdentifier = UnityEngine.iOS.CalendarIdentifier

---@return System.Int32 value:0
UnityEngine.iOS.CalendarIdentifier.GregorianCalendar = 0
---@return System.Int32 value:1
UnityEngine.iOS.CalendarIdentifier.BuddhistCalendar = 1
---@return System.Int32 value:2
UnityEngine.iOS.CalendarIdentifier.ChineseCalendar = 2
---@return System.Int32 value:3
UnityEngine.iOS.CalendarIdentifier.HebrewCalendar = 3
---@return System.Int32 value:4
UnityEngine.iOS.CalendarIdentifier.IslamicCalendar = 4
---@return System.Int32 value:5
UnityEngine.iOS.CalendarIdentifier.IslamicCivilCalendar = 5
---@return System.Int32 value:6
UnityEngine.iOS.CalendarIdentifier.JapaneseCalendar = 6
---@return System.Int32 value:7
UnityEngine.iOS.CalendarIdentifier.RepublicOfChinaCalendar = 7
---@return System.Int32 value:8
UnityEngine.iOS.CalendarIdentifier.PersianCalendar = 8
---@return System.Int32 value:9
UnityEngine.iOS.CalendarIdentifier.IndianCalendar = 9
---@return System.Int32 value:10
UnityEngine.iOS.CalendarIdentifier.ISO8601Calendar = 10

---@class UnityEngine.iOS.CalendarUnit : System.Enum
UnityEngine.iOS.CalendarUnit = {}
---@type UnityEngine.iOS.CalendarUnit
CS.UnityEngine.iOS.CalendarUnit = UnityEngine.iOS.CalendarUnit

---@return System.Int32 value:2
UnityEngine.iOS.CalendarUnit.Era = 2
---@return System.Int32 value:4
UnityEngine.iOS.CalendarUnit.Year = 4
---@return System.Int32 value:8
UnityEngine.iOS.CalendarUnit.Month = 8

---@class UnityEngine.iOS.NotificationType : System.Enum
UnityEngine.iOS.NotificationType = {}
---@type UnityEngine.iOS.NotificationType
CS.UnityEngine.iOS.NotificationType = UnityEngine.iOS.NotificationType

---@return System.Int32 value:0
UnityEngine.iOS.NotificationType.None = 0
---@return System.Int32 value:1
UnityEngine.iOS.NotificationType.Badge = 1
---@return System.Int32 value:2
UnityEngine.iOS.NotificationType.Sound = 2

---@class UnityEngine.iOS.LocalNotification : System.Object
---@field public timeZone System.String @ setter getter
---@field public repeatCalendar UnityEngine.iOS.CalendarIdentifier @ setter getter
---@field public repeatInterval UnityEngine.iOS.CalendarUnit @ setter getter
---@field public fireDate System.DateTime @ setter getter
---@field public alertBody System.String @ setter getter
---@field public alertTitle System.String @ setter getter
---@field public alertAction System.String @ setter getter
---@field public alertLaunchImage System.String @ setter getter
---@field public soundName System.String @ setter getter
---@field public applicationIconBadgeNumber System.Int32 @ setter getter
---@field public defaultSoundName System.String @static  getter
---@field public userInfo System.Collections.IDictionary @ setter getter
---@field public hasAction System.Boolean @ setter getter
UnityEngine.iOS.LocalNotification = {}
---@type UnityEngine.iOS.LocalNotification
CS.UnityEngine.iOS.LocalNotification = UnityEngine.iOS.LocalNotification

---@class UnityEngine.iOS.RemoteNotification : System.Object
---@field public alertBody System.String @  getter
---@field public alertTitle System.String @  getter
---@field public soundName System.String @  getter
---@field public applicationIconBadgeNumber System.Int32 @  getter
---@field public userInfo System.Collections.IDictionary @  getter
---@field public hasAction System.Boolean @  getter
UnityEngine.iOS.RemoteNotification = {}
---@type UnityEngine.iOS.RemoteNotification
CS.UnityEngine.iOS.RemoteNotification = UnityEngine.iOS.RemoteNotification

---@class UnityEngine.iOS.NotificationServices : System.Object
---@field public localNotificationCount System.Int32 @static  getter
---@field public remoteNotificationCount System.Int32 @static  getter
---@field public enabledNotificationTypes UnityEngine.iOS.NotificationType @static  getter
---@field public registrationError System.String @static  getter
---@field public deviceToken System.Byte[] @static  getter
---@field public localNotifications UnityEngine.iOS.LocalNotification[] @static  getter
---@field public remoteNotifications UnityEngine.iOS.RemoteNotification[] @static  getter
---@field public scheduledLocalNotifications UnityEngine.iOS.LocalNotification[] @static  getter
UnityEngine.iOS.NotificationServices = {}
---@type UnityEngine.iOS.NotificationServices
CS.UnityEngine.iOS.NotificationServices = UnityEngine.iOS.NotificationServices

---@return System.Void
function UnityEngine.iOS.NotificationServices.ClearLocalNotifications()end
---@return System.Void
function UnityEngine.iOS.NotificationServices.ClearRemoteNotifications()end
---@overload fun(notificationTypes:UnityEngine.iOS.NotificationType, registerForRemote:System.Boolean):System.Void
---@param notificationTypes UnityEngine.iOS.NotificationType
---@return System.Void
function UnityEngine.iOS.NotificationServices.RegisterForNotifications(notificationTypes)end
---@param notification UnityEngine.iOS.LocalNotification
---@return System.Void
function UnityEngine.iOS.NotificationServices.ScheduleLocalNotification(notification)end
---@param notification UnityEngine.iOS.LocalNotification
---@return System.Void
function UnityEngine.iOS.NotificationServices.PresentLocalNotificationNow(notification)end
---@param notification UnityEngine.iOS.LocalNotification
---@return System.Void
function UnityEngine.iOS.NotificationServices.CancelLocalNotification(notification)end
---@return System.Void
function UnityEngine.iOS.NotificationServices.CancelAllLocalNotifications()end
---@return System.Void
function UnityEngine.iOS.NotificationServices.UnregisterForRemoteNotifications()end
---@param index System.Int32
---@return UnityEngine.iOS.LocalNotification
function UnityEngine.iOS.NotificationServices.GetLocalNotification(index)end
---@param index System.Int32
---@return UnityEngine.iOS.RemoteNotification
function UnityEngine.iOS.NotificationServices.GetRemoteNotification(index)end
---@class UnityEngine.iOS.OnDemandResourcesRequest : UnityEngine.AsyncOperation
---@field public error System.String @  getter
---@field public loadingPriority System.Single @ setter getter
UnityEngine.iOS.OnDemandResourcesRequest = {}
---@type UnityEngine.iOS.OnDemandResourcesRequest
CS.UnityEngine.iOS.OnDemandResourcesRequest = UnityEngine.iOS.OnDemandResourcesRequest

---@param resourceName System.String
---@return System.String
function UnityEngine.iOS.OnDemandResourcesRequest:GetResourcePath(resourceName)end
---@return System.Void
function UnityEngine.iOS.OnDemandResourcesRequest:Dispose()end
---@class UnityEngine.iOS.OnDemandResources : System.Object
---@field public enabled System.Boolean @static  getter
UnityEngine.iOS.OnDemandResources = {}
---@type UnityEngine.iOS.OnDemandResources
CS.UnityEngine.iOS.OnDemandResources = UnityEngine.iOS.OnDemandResources

---@param tags System.String[]
---@return UnityEngine.iOS.OnDemandResourcesRequest
function UnityEngine.iOS.OnDemandResources.PreloadAsync(tags)end
