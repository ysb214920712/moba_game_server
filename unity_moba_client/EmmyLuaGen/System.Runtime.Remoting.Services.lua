---@class System.Runtime.Remoting.Services.EnterpriseServicesHelper : System.Object
System.Runtime.Remoting.Services.EnterpriseServicesHelper = {}
---@type System.Runtime.Remoting.Services.EnterpriseServicesHelper
CS.System.Runtime.Remoting.Services.EnterpriseServicesHelper = System.Runtime.Remoting.Services.EnterpriseServicesHelper

---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@param retObj System.MarshalByRefObject
---@return System.Runtime.Remoting.Activation.IConstructionReturnMessage
function System.Runtime.Remoting.Services.EnterpriseServicesHelper.CreateConstructionReturnMessage(ctorMsg, retObj)end
---@param oldcp System.Runtime.Remoting.Proxies.RealProxy
---@param newcp System.Runtime.Remoting.Proxies.RealProxy
---@return System.Void
function System.Runtime.Remoting.Services.EnterpriseServicesHelper.SwitchWrappers(oldcp, newcp)end
---@param punk System.IntPtr
---@return System.Object
function System.Runtime.Remoting.Services.EnterpriseServicesHelper.WrapIUnknownWithComObject(punk)end
---@class System.Runtime.Remoting.Services.TrackingServices : System.Object
---@field public RegisteredHandlers System.Runtime.Remoting.Services.ITrackingHandler[] @static  getter
System.Runtime.Remoting.Services.TrackingServices = {}
---@type System.Runtime.Remoting.Services.TrackingServices
CS.System.Runtime.Remoting.Services.TrackingServices = System.Runtime.Remoting.Services.TrackingServices

---@param handler System.Runtime.Remoting.Services.ITrackingHandler
---@return System.Void
function System.Runtime.Remoting.Services.TrackingServices.RegisterTrackingHandler(handler)end
---@param handler System.Runtime.Remoting.Services.ITrackingHandler
---@return System.Void
function System.Runtime.Remoting.Services.TrackingServices.UnregisterTrackingHandler(handler)end
