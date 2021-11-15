---@class System.Runtime.Remoting.Lifetime.ClientSponsor : System.MarshalByRefObject
---@field public RenewalTime System.TimeSpan @ setter getter
System.Runtime.Remoting.Lifetime.ClientSponsor = {}
---@type System.Runtime.Remoting.Lifetime.ClientSponsor
CS.System.Runtime.Remoting.Lifetime.ClientSponsor = System.Runtime.Remoting.Lifetime.ClientSponsor

---@return System.Void
function System.Runtime.Remoting.Lifetime.ClientSponsor:Close()end
---@return System.Object
function System.Runtime.Remoting.Lifetime.ClientSponsor:InitializeLifetimeService()end
---@param obj System.MarshalByRefObject
---@return System.Boolean
function System.Runtime.Remoting.Lifetime.ClientSponsor:Register(obj)end
---@param lease System.Runtime.Remoting.Lifetime.ILease
---@return System.TimeSpan
function System.Runtime.Remoting.Lifetime.ClientSponsor:Renewal(lease)end
---@param obj System.MarshalByRefObject
---@return System.Void
function System.Runtime.Remoting.Lifetime.ClientSponsor:Unregister(obj)end
---@class System.Runtime.Remoting.Lifetime.LeaseState : System.Enum
System.Runtime.Remoting.Lifetime.LeaseState = {}
---@type System.Runtime.Remoting.Lifetime.LeaseState
CS.System.Runtime.Remoting.Lifetime.LeaseState = System.Runtime.Remoting.Lifetime.LeaseState

---@return System.Int32 value:0
System.Runtime.Remoting.Lifetime.LeaseState.Null = 0
---@return System.Int32 value:1
System.Runtime.Remoting.Lifetime.LeaseState.Initial = 1
---@return System.Int32 value:2
System.Runtime.Remoting.Lifetime.LeaseState.Active = 2
---@return System.Int32 value:3
System.Runtime.Remoting.Lifetime.LeaseState.Renewing = 3
---@return System.Int32 value:4
System.Runtime.Remoting.Lifetime.LeaseState.Expired = 4

---@class System.Runtime.Remoting.Lifetime.LifetimeServices : System.Object
---@field public LeaseManagerPollTime System.TimeSpan @static setter getter
---@field public LeaseTime System.TimeSpan @static setter getter
---@field public RenewOnCallTime System.TimeSpan @static setter getter
---@field public SponsorshipTimeout System.TimeSpan @static setter getter
System.Runtime.Remoting.Lifetime.LifetimeServices = {}
---@type System.Runtime.Remoting.Lifetime.LifetimeServices
CS.System.Runtime.Remoting.Lifetime.LifetimeServices = System.Runtime.Remoting.Lifetime.LifetimeServices

