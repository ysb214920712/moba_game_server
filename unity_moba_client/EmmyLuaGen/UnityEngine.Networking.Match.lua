---@class UnityEngine.Networking.Match.MatchInfo : System.Object
---@field public address System.String @ setter getter
---@field public port System.Int32 @ setter getter
---@field public domain System.Int32 @ setter getter
---@field public networkId UnityEngine.Networking.Types.NetworkID @ setter getter
---@field public accessToken UnityEngine.Networking.Types.NetworkAccessToken @ setter getter
---@field public nodeId UnityEngine.Networking.Types.NodeID @ setter getter
---@field public usingRelay System.Boolean @ setter getter
UnityEngine.Networking.Match.MatchInfo = {}
---@type UnityEngine.Networking.Match.MatchInfo
CS.UnityEngine.Networking.Match.MatchInfo = UnityEngine.Networking.Match.MatchInfo

---@return System.String
function UnityEngine.Networking.Match.MatchInfo:ToString()end
---@class UnityEngine.Networking.Match.MatchInfoSnapshot : System.Object
---@field public networkId UnityEngine.Networking.Types.NetworkID @ setter getter
---@field public hostNodeId UnityEngine.Networking.Types.NodeID @ setter getter
---@field public name System.String @ setter getter
---@field public averageEloScore System.Int32 @ setter getter
---@field public maxSize System.Int32 @ setter getter
---@field public currentSize System.Int32 @ setter getter
---@field public isPrivate System.Boolean @ setter getter
---@field public matchAttributes System.Collections.Generic.Dictionary @ setter getter
---@field public directConnectInfos System.Collections.Generic.List @ setter getter
UnityEngine.Networking.Match.MatchInfoSnapshot = {}
---@type UnityEngine.Networking.Match.MatchInfoSnapshot
CS.UnityEngine.Networking.Match.MatchInfoSnapshot = UnityEngine.Networking.Match.MatchInfoSnapshot

---@class UnityEngine.Networking.Match.MatchInfoSnapshot.MatchInfoDirectConnectSnapshot : System.Object
---@field public nodeId UnityEngine.Networking.Types.NodeID @ setter getter
---@field public publicAddress System.String @ setter getter
---@field public privateAddress System.String @ setter getter
---@field public hostPriority UnityEngine.Networking.Types.HostPriority @ setter getter
UnityEngine.Networking.Match.MatchInfoSnapshot.MatchInfoDirectConnectSnapshot = {}
---@type UnityEngine.Networking.Match.MatchInfoSnapshot.MatchInfoDirectConnectSnapshot
CS.UnityEngine.Networking.Match.MatchInfoSnapshot.MatchInfoDirectConnectSnapshot = UnityEngine.Networking.Match.MatchInfoSnapshot.MatchInfoDirectConnectSnapshot

---@class UnityEngine.Networking.Match.NetworkMatch : UnityEngine.MonoBehaviour
---@field public baseUri System.Uri @ setter getter
UnityEngine.Networking.Match.NetworkMatch = {}
---@type UnityEngine.Networking.Match.NetworkMatch
CS.UnityEngine.Networking.Match.NetworkMatch = UnityEngine.Networking.Match.NetworkMatch

---@param programAppID UnityEngine.Networking.Types.AppID
---@return System.Void
function UnityEngine.Networking.Match.NetworkMatch:SetProgramAppID(programAppID)end
---@param matchName System.String
---@param matchSize System.UInt32
---@param matchAdvertise System.Boolean
---@param matchPassword System.String
---@param publicClientAddress System.String
---@param privateClientAddress System.String
---@param eloScoreForMatch System.Int32
---@param requestDomain System.Int32
---@param callback UnityEngine.Networking.Match.NetworkMatch.DataResponseDelegate
---@return UnityEngine.Coroutine
function UnityEngine.Networking.Match.NetworkMatch:CreateMatch(matchName, matchSize, matchAdvertise, matchPassword, publicClientAddress, privateClientAddress, eloScoreForMatch, requestDomain, callback)end
---@param netId UnityEngine.Networking.Types.NetworkID
---@param matchPassword System.String
---@param publicClientAddress System.String
---@param privateClientAddress System.String
---@param eloScoreForClient System.Int32
---@param requestDomain System.Int32
---@param callback UnityEngine.Networking.Match.NetworkMatch.DataResponseDelegate
---@return UnityEngine.Coroutine
function UnityEngine.Networking.Match.NetworkMatch:JoinMatch(netId, matchPassword, publicClientAddress, privateClientAddress, eloScoreForClient, requestDomain, callback)end
---@param netId UnityEngine.Networking.Types.NetworkID
---@param requestDomain System.Int32
---@param callback UnityEngine.Networking.Match.NetworkMatch.BasicResponseDelegate
---@return UnityEngine.Coroutine
function UnityEngine.Networking.Match.NetworkMatch:DestroyMatch(netId, requestDomain, callback)end
---@param netId UnityEngine.Networking.Types.NetworkID
---@param dropNodeId UnityEngine.Networking.Types.NodeID
---@param requestDomain System.Int32
---@param callback UnityEngine.Networking.Match.NetworkMatch.BasicResponseDelegate
---@return UnityEngine.Coroutine
function UnityEngine.Networking.Match.NetworkMatch:DropConnection(netId, dropNodeId, requestDomain, callback)end
---@param startPageNumber System.Int32
---@param resultPageSize System.Int32
---@param matchNameFilter System.String
---@param filterOutPrivateMatchesFromResults System.Boolean
---@param eloScoreTarget System.Int32
---@param requestDomain System.Int32
---@param callback UnityEngine.Networking.Match.NetworkMatch.DataResponseDelegate
---@return UnityEngine.Coroutine
function UnityEngine.Networking.Match.NetworkMatch:ListMatches(startPageNumber, resultPageSize, matchNameFilter, filterOutPrivateMatchesFromResults, eloScoreTarget, requestDomain, callback)end
---@param networkId UnityEngine.Networking.Types.NetworkID
---@param isListed System.Boolean
---@param requestDomain System.Int32
---@param callback UnityEngine.Networking.Match.NetworkMatch.BasicResponseDelegate
---@return UnityEngine.Coroutine
function UnityEngine.Networking.Match.NetworkMatch:SetMatchAttributes(networkId, isListed, requestDomain, callback)end
