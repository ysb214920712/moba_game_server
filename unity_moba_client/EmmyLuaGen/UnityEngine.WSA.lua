---@class UnityEngine.WSA.WindowActivationState : System.Enum
UnityEngine.WSA.WindowActivationState = {}
---@type UnityEngine.WSA.WindowActivationState
CS.UnityEngine.WSA.WindowActivationState = UnityEngine.WSA.WindowActivationState

---@return System.Int32 value:0
UnityEngine.WSA.WindowActivationState.CodeActivated = 0
---@return System.Int32 value:1
UnityEngine.WSA.WindowActivationState.Deactivated = 1
---@return System.Int32 value:2
UnityEngine.WSA.WindowActivationState.PointerActivated = 2

---@class UnityEngine.WSA.Application : System.Object
---@field public arguments System.String @static  getter
---@field public advertisingIdentifier System.String @static  getter
UnityEngine.WSA.Application = {}
---@type UnityEngine.WSA.Application
CS.UnityEngine.WSA.Application = UnityEngine.WSA.Application

---@param value UnityEngine.WSA.WindowSizeChanged
---@return System.Void
function UnityEngine.WSA.Application.add_windowSizeChanged(value)end
---@param value UnityEngine.WSA.WindowSizeChanged
---@return System.Void
function UnityEngine.WSA.Application.remove_windowSizeChanged(value)end
---@param value UnityEngine.WSA.WindowActivated
---@return System.Void
function UnityEngine.WSA.Application.add_windowActivated(value)end
---@param value UnityEngine.WSA.WindowActivated
---@return System.Void
function UnityEngine.WSA.Application.remove_windowActivated(value)end
---@param item UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone System.Boolean
---@return System.Void
function UnityEngine.WSA.Application.InvokeOnAppThread(item, waitUntilDone)end
---@param item UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone System.Boolean
---@return System.Void
function UnityEngine.WSA.Application.InvokeOnUIThread(item, waitUntilDone)end
---@param item UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone System.Boolean
---@return System.Boolean
function UnityEngine.WSA.Application.TryInvokeOnAppThread(item, waitUntilDone)end
---@param item UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone System.Boolean
---@return System.Boolean
function UnityEngine.WSA.Application.TryInvokeOnUIThread(item, waitUntilDone)end
---@return System.Boolean
function UnityEngine.WSA.Application.RunningOnAppThread()end
---@return System.Boolean
function UnityEngine.WSA.Application.RunningOnUIThread()end
---@class UnityEngine.WSA.Cursor : System.Object
UnityEngine.WSA.Cursor = {}
---@type UnityEngine.WSA.Cursor
CS.UnityEngine.WSA.Cursor = UnityEngine.WSA.Cursor

---@param id System.UInt32
---@return System.Void
function UnityEngine.WSA.Cursor.SetCustomCursor(id)end
---@class UnityEngine.WSA.Folder : System.Enum
UnityEngine.WSA.Folder = {}
---@type UnityEngine.WSA.Folder
CS.UnityEngine.WSA.Folder = UnityEngine.WSA.Folder

---@return System.Int32 value:0
UnityEngine.WSA.Folder.Installation = 0
---@return System.Int32 value:1
UnityEngine.WSA.Folder.Temporary = 1
---@return System.Int32 value:2
UnityEngine.WSA.Folder.Local = 2
---@return System.Int32 value:3
UnityEngine.WSA.Folder.Roaming = 3
---@return System.Int32 value:4
UnityEngine.WSA.Folder.CameraRoll = 4
---@return System.Int32 value:5
UnityEngine.WSA.Folder.DocumentsLibrary = 5
---@return System.Int32 value:6
UnityEngine.WSA.Folder.HomeGroup = 6
---@return System.Int32 value:7
UnityEngine.WSA.Folder.MediaServerDevices = 7
---@return System.Int32 value:8
UnityEngine.WSA.Folder.MusicLibrary = 8
---@return System.Int32 value:9
UnityEngine.WSA.Folder.PicturesLibrary = 9
---@return System.Int32 value:10
UnityEngine.WSA.Folder.Playlists = 10
---@return System.Int32 value:11
UnityEngine.WSA.Folder.RemovableDevices = 11
---@return System.Int32 value:12
UnityEngine.WSA.Folder.SavedPictures = 12
---@return System.Int32 value:13
UnityEngine.WSA.Folder.VideosLibrary = 13

---@class UnityEngine.WSA.Launcher : System.Object
UnityEngine.WSA.Launcher = {}
---@type UnityEngine.WSA.Launcher
CS.UnityEngine.WSA.Launcher = UnityEngine.WSA.Launcher

---@param folder UnityEngine.WSA.Folder
---@param relativeFilePath System.String
---@param showWarning System.Boolean
---@return System.Void
function UnityEngine.WSA.Launcher.LaunchFile(folder, relativeFilePath, showWarning)end
---@param fileExtension System.String
---@return System.Void
function UnityEngine.WSA.Launcher.LaunchFileWithPicker(fileExtension)end
---@param uri System.String
---@param showWarning System.Boolean
---@return System.Void
function UnityEngine.WSA.Launcher.LaunchUri(uri, showWarning)end
---@class UnityEngine.WSA.TileTemplate : System.Enum
UnityEngine.WSA.TileTemplate = {}
---@type UnityEngine.WSA.TileTemplate
CS.UnityEngine.WSA.TileTemplate = UnityEngine.WSA.TileTemplate

---@return System.Int32 value:0
UnityEngine.WSA.TileTemplate.TileSquare150x150Image = 0
---@return System.Int32 value:1
UnityEngine.WSA.TileTemplate.TileSquare150x150Block = 1
---@return System.Int32 value:2
UnityEngine.WSA.TileTemplate.TileSquare150x150Text01 = 2
---@return System.Int32 value:3
UnityEngine.WSA.TileTemplate.TileSquare150x150Text02 = 3
---@return System.Int32 value:4
UnityEngine.WSA.TileTemplate.TileSquare150x150Text03 = 4
---@return System.Int32 value:5
UnityEngine.WSA.TileTemplate.TileSquare150x150Text04 = 5
---@return System.Int32 value:6
UnityEngine.WSA.TileTemplate.TileSquare150x150PeekImageAndText01 = 6
---@return System.Int32 value:7
UnityEngine.WSA.TileTemplate.TileSquare150x150PeekImageAndText02 = 7
---@return System.Int32 value:8
UnityEngine.WSA.TileTemplate.TileSquare150x150PeekImageAndText03 = 8
---@return System.Int32 value:9
UnityEngine.WSA.TileTemplate.TileSquare150x150PeekImageAndText04 = 9
---@return System.Int32 value:10
UnityEngine.WSA.TileTemplate.TileWide310x150Image = 10
---@return System.Int32 value:11
UnityEngine.WSA.TileTemplate.TileWide310x150ImageCollection = 11
---@return System.Int32 value:12
UnityEngine.WSA.TileTemplate.TileWide310x150ImageAndText01 = 12
---@return System.Int32 value:13
UnityEngine.WSA.TileTemplate.TileWide310x150ImageAndText02 = 13
---@return System.Int32 value:14
UnityEngine.WSA.TileTemplate.TileWide310x150BlockAndText01 = 14
---@return System.Int32 value:15
UnityEngine.WSA.TileTemplate.TileWide310x150BlockAndText02 = 15
---@return System.Int32 value:16
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageCollection01 = 16
---@return System.Int32 value:17
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageCollection02 = 17
---@return System.Int32 value:18
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageCollection03 = 18
---@return System.Int32 value:19
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageCollection04 = 19
---@return System.Int32 value:20
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageCollection05 = 20
---@return System.Int32 value:21
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageCollection06 = 21
---@return System.Int32 value:22
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageAndText01 = 22
---@return System.Int32 value:23
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImageAndText02 = 23
---@return System.Int32 value:24
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImage01 = 24
---@return System.Int32 value:25
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImage02 = 25
---@return System.Int32 value:26
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImage03 = 26
---@return System.Int32 value:27
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImage04 = 27
---@return System.Int32 value:28
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImage05 = 28
---@return System.Int32 value:29
UnityEngine.WSA.TileTemplate.TileWide310x150PeekImage06 = 29
---@return System.Int32 value:30
UnityEngine.WSA.TileTemplate.TileWide310x150SmallImageAndText01 = 30
---@return System.Int32 value:31
UnityEngine.WSA.TileTemplate.TileWide310x150SmallImageAndText02 = 31
---@return System.Int32 value:32
UnityEngine.WSA.TileTemplate.TileWide310x150SmallImageAndText03 = 32
---@return System.Int32 value:33
UnityEngine.WSA.TileTemplate.TileWide310x150SmallImageAndText04 = 33
---@return System.Int32 value:34
UnityEngine.WSA.TileTemplate.TileWide310x150SmallImageAndText05 = 34
---@return System.Int32 value:35
UnityEngine.WSA.TileTemplate.TileWide310x150Text01 = 35
---@return System.Int32 value:36
UnityEngine.WSA.TileTemplate.TileWide310x150Text02 = 36
---@return System.Int32 value:37
UnityEngine.WSA.TileTemplate.TileWide310x150Text03 = 37
---@return System.Int32 value:38
UnityEngine.WSA.TileTemplate.TileWide310x150Text04 = 38
---@return System.Int32 value:39
UnityEngine.WSA.TileTemplate.TileWide310x150Text05 = 39
---@return System.Int32 value:40
UnityEngine.WSA.TileTemplate.TileWide310x150Text06 = 40
---@return System.Int32 value:41
UnityEngine.WSA.TileTemplate.TileWide310x150Text07 = 41
---@return System.Int32 value:42
UnityEngine.WSA.TileTemplate.TileWide310x150Text08 = 42
---@return System.Int32 value:43
UnityEngine.WSA.TileTemplate.TileWide310x150Text09 = 43
---@return System.Int32 value:44
UnityEngine.WSA.TileTemplate.TileWide310x150Text10 = 44
---@return System.Int32 value:45
UnityEngine.WSA.TileTemplate.TileWide310x150Text11 = 45
---@return System.Int32 value:46
UnityEngine.WSA.TileTemplate.TileSquare310x310BlockAndText01 = 46
---@return System.Int32 value:47
UnityEngine.WSA.TileTemplate.TileSquare310x310BlockAndText02 = 47
---@return System.Int32 value:48
UnityEngine.WSA.TileTemplate.TileSquare310x310Image = 48
---@return System.Int32 value:49
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageAndText01 = 49
---@return System.Int32 value:50
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageAndText02 = 50
---@return System.Int32 value:51
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageAndTextOverlay01 = 51
---@return System.Int32 value:52
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageAndTextOverlay02 = 52
---@return System.Int32 value:53
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageAndTextOverlay03 = 53
---@return System.Int32 value:54
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageCollectionAndText01 = 54
---@return System.Int32 value:55
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageCollectionAndText02 = 55
---@return System.Int32 value:56
UnityEngine.WSA.TileTemplate.TileSquare310x310ImageCollection = 56
---@return System.Int32 value:57
UnityEngine.WSA.TileTemplate.TileSquare310x310SmallImagesAndTextList01 = 57
---@return System.Int32 value:58
UnityEngine.WSA.TileTemplate.TileSquare310x310SmallImagesAndTextList02 = 58
---@return System.Int32 value:59
UnityEngine.WSA.TileTemplate.TileSquare310x310SmallImagesAndTextList03 = 59
---@return System.Int32 value:60
UnityEngine.WSA.TileTemplate.TileSquare310x310SmallImagesAndTextList04 = 60
---@return System.Int32 value:61
UnityEngine.WSA.TileTemplate.TileSquare310x310Text01 = 61
---@return System.Int32 value:62
UnityEngine.WSA.TileTemplate.TileSquare310x310Text02 = 62
---@return System.Int32 value:63
UnityEngine.WSA.TileTemplate.TileSquare310x310Text03 = 63
---@return System.Int32 value:64
UnityEngine.WSA.TileTemplate.TileSquare310x310Text04 = 64
---@return System.Int32 value:65
UnityEngine.WSA.TileTemplate.TileSquare310x310Text05 = 65
---@return System.Int32 value:66
UnityEngine.WSA.TileTemplate.TileSquare310x310Text06 = 66
---@return System.Int32 value:67
UnityEngine.WSA.TileTemplate.TileSquare310x310Text07 = 67
---@return System.Int32 value:68
UnityEngine.WSA.TileTemplate.TileSquare310x310Text08 = 68
---@return System.Int32 value:69
UnityEngine.WSA.TileTemplate.TileSquare310x310TextList01 = 69
---@return System.Int32 value:70
UnityEngine.WSA.TileTemplate.TileSquare310x310TextList02 = 70
---@return System.Int32 value:71
UnityEngine.WSA.TileTemplate.TileSquare310x310TextList03 = 71
---@return System.Int32 value:72
UnityEngine.WSA.TileTemplate.TileSquare310x310SmallImageAndText01 = 72
---@return System.Int32 value:73
UnityEngine.WSA.TileTemplate.TileSquare310x310SmallImagesAndTextList05 = 73
---@return System.Int32 value:74
UnityEngine.WSA.TileTemplate.TileSquare310x310Text09 = 74
---@return System.Int32 value:75
UnityEngine.WSA.TileTemplate.TileSquare71x71IconWithBadge = 75
---@return System.Int32 value:76
UnityEngine.WSA.TileTemplate.TileSquare150x150IconWithBadge = 76
---@return System.Int32 value:77
UnityEngine.WSA.TileTemplate.TileWide310x150IconWithBadgeAndText = 77
---@return System.Int32 value:78
UnityEngine.WSA.TileTemplate.TileSquare71x71Image = 78
---@return System.Int32 value:79
UnityEngine.WSA.TileTemplate.TileTall150x310Image = 79

---@class UnityEngine.WSA.ToastTemplate : System.Enum
UnityEngine.WSA.ToastTemplate = {}
---@type UnityEngine.WSA.ToastTemplate
CS.UnityEngine.WSA.ToastTemplate = UnityEngine.WSA.ToastTemplate

---@return System.Int32 value:0
UnityEngine.WSA.ToastTemplate.ToastImageAndText01 = 0
---@return System.Int32 value:1
UnityEngine.WSA.ToastTemplate.ToastImageAndText02 = 1
---@return System.Int32 value:2
UnityEngine.WSA.ToastTemplate.ToastImageAndText03 = 2
---@return System.Int32 value:3
UnityEngine.WSA.ToastTemplate.ToastImageAndText04 = 3
---@return System.Int32 value:4
UnityEngine.WSA.ToastTemplate.ToastText01 = 4
---@return System.Int32 value:5
UnityEngine.WSA.ToastTemplate.ToastText02 = 5
---@return System.Int32 value:6
UnityEngine.WSA.ToastTemplate.ToastText03 = 6
---@return System.Int32 value:7
UnityEngine.WSA.ToastTemplate.ToastText04 = 7

---@class UnityEngine.WSA.TileForegroundText : System.Enum
UnityEngine.WSA.TileForegroundText = {}
---@type UnityEngine.WSA.TileForegroundText
CS.UnityEngine.WSA.TileForegroundText = UnityEngine.WSA.TileForegroundText

---@return System.Int32 value:0
UnityEngine.WSA.TileForegroundText.Dark = 0
---@return System.Int32 value:1
UnityEngine.WSA.TileForegroundText.Light = 1

---@class UnityEngine.WSA.SecondaryTileData : System.ValueType
---@field public backgroundColor UnityEngine.Color32 @ setter getter
---@field public arguments System.String
---@field public backgroundColorSet System.Boolean
---@field public displayName System.String
---@field public foregroundText UnityEngine.WSA.TileForegroundText
---@field public lockScreenBadgeLogo System.String
---@field public lockScreenDisplayBadgeAndTileText System.Boolean
---@field public phoneticName System.String
---@field public roamingEnabled System.Boolean
---@field public showNameOnSquare150x150Logo System.Boolean
---@field public showNameOnSquare310x310Logo System.Boolean
---@field public showNameOnWide310x150Logo System.Boolean
---@field public square150x150Logo System.String
---@field public square30x30Logo System.String
---@field public square310x310Logo System.String
---@field public square70x70Logo System.String
---@field public tileId System.String
---@field public wide310x150Logo System.String
UnityEngine.WSA.SecondaryTileData = {}
---@type UnityEngine.WSA.SecondaryTileData
CS.UnityEngine.WSA.SecondaryTileData = UnityEngine.WSA.SecondaryTileData

---@class UnityEngine.WSA.Tile : System.Object
---@field public main UnityEngine.WSA.Tile @static  getter
---@field public id System.String @  getter
---@field public hasUserConsent System.Boolean @  getter
---@field public exists System.Boolean @  getter
UnityEngine.WSA.Tile = {}
---@type UnityEngine.WSA.Tile
CS.UnityEngine.WSA.Tile = UnityEngine.WSA.Tile

---@param templ UnityEngine.WSA.TileTemplate
---@return System.String
function UnityEngine.WSA.Tile.GetTemplate(templ)end
---@overload fun(medium:System.String, wide:System.String, large:System.String, text:System.String):System.Void
---@param xml System.String
---@return System.Void
function UnityEngine.WSA.Tile:Update(xml)end
---@param uri System.String
---@param interval System.Single
---@return System.Void
function UnityEngine.WSA.Tile:PeriodicUpdate(uri, interval)end
---@return System.Void
function UnityEngine.WSA.Tile:StopPeriodicUpdate()end
---@param image System.String
---@return System.Void
function UnityEngine.WSA.Tile:UpdateBadgeImage(image)end
---@param number System.Single
---@return System.Void
function UnityEngine.WSA.Tile:UpdateBadgeNumber(number)end
---@return System.Void
function UnityEngine.WSA.Tile:RemoveBadge()end
---@param uri System.String
---@param interval System.Single
---@return System.Void
function UnityEngine.WSA.Tile:PeriodicBadgeUpdate(uri, interval)end
---@return System.Void
function UnityEngine.WSA.Tile:StopPeriodicBadgeUpdate()end
---@param tileId System.String
---@return System.Boolean
function UnityEngine.WSA.Tile.Exists(tileId)end
---@overload fun(data:UnityEngine.WSA.SecondaryTileData, pos:UnityEngine.Vector2):UnityEngine.WSA.Tile
---@overload fun(data:UnityEngine.WSA.SecondaryTileData, area:UnityEngine.Rect):UnityEngine.WSA.Tile
---@param data UnityEngine.WSA.SecondaryTileData
---@return UnityEngine.WSA.Tile
function UnityEngine.WSA.Tile.CreateOrUpdateSecondary(data)end
---@param tileId System.String
---@return UnityEngine.WSA.Tile
function UnityEngine.WSA.Tile.GetSecondary(tileId)end
---@return UnityEngine.WSA.Tile[]
function UnityEngine.WSA.Tile.GetSecondaries()end
---@overload fun(pos:UnityEngine.Vector2):System.Void
---@overload fun(area:UnityEngine.Rect):System.Void
---@return System.Void
function UnityEngine.WSA.Tile:Delete()end
---@overload fun(tileId:System.String, pos:UnityEngine.Vector2):System.Void
---@overload fun(tileId:System.String, area:UnityEngine.Rect):System.Void
---@param tileId System.String
---@return System.Void
function UnityEngine.WSA.Tile.DeleteSecondary(tileId)end
---@class UnityEngine.WSA.Toast : System.Object
---@field public arguments System.String @ setter getter
---@field public activated System.Boolean @  getter
---@field public dismissed System.Boolean @  getter
---@field public dismissedByUser System.Boolean @  getter
UnityEngine.WSA.Toast = {}
---@type UnityEngine.WSA.Toast
CS.UnityEngine.WSA.Toast = UnityEngine.WSA.Toast

---@param templ UnityEngine.WSA.ToastTemplate
---@return System.String
function UnityEngine.WSA.Toast.GetTemplate(templ)end
---@overload fun(image:System.String, text:System.String):UnityEngine.WSA.Toast
---@param xml System.String
---@return UnityEngine.WSA.Toast
function UnityEngine.WSA.Toast.Create(xml)end
---@return System.Void
function UnityEngine.WSA.Toast:Show()end
---@return System.Void
function UnityEngine.WSA.Toast:Hide()end
