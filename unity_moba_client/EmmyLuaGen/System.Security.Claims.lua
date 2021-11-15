---@class System.Security.Claims.Claim : System.Object
---@field public Issuer System.String @  getter
---@field public OriginalIssuer System.String @  getter
---@field public Properties System.Collections.Generic.IDictionary @  getter
---@field public Subject System.Security.Claims.ClaimsIdentity @ setter getter
---@field public Type System.String @  getter
---@field public Value System.String @  getter
---@field public ValueType System.String @  getter
System.Security.Claims.Claim = {}
---@type System.Security.Claims.Claim
CS.System.Security.Claims.Claim = System.Security.Claims.Claim

---@overload fun(identity:System.Security.Claims.ClaimsIdentity):System.Security.Claims.Claim
---@return System.Security.Claims.Claim
function System.Security.Claims.Claim:Clone()end
---@param writer System.IO.BinaryWriter
---@return System.Void
function System.Security.Claims.Claim:WriteTo(writer)end
---@return System.String
function System.Security.Claims.Claim:ToString()end
---@class System.Security.Claims.ClaimTypes : System.Object
---@field public AuthenticationInstant System.String
---@field public AuthenticationMethod System.String
---@field public CookiePath System.String
---@field public DenyOnlyPrimarySid System.String
---@field public DenyOnlyPrimaryGroupSid System.String
---@field public DenyOnlyWindowsDeviceGroup System.String
---@field public Dsa System.String
---@field public Expiration System.String
---@field public Expired System.String
---@field public GroupSid System.String
---@field public IsPersistent System.String
---@field public PrimaryGroupSid System.String
---@field public PrimarySid System.String
---@field public Role System.String
---@field public SerialNumber System.String
---@field public UserData System.String
---@field public Version System.String
---@field public WindowsAccountName System.String
---@field public WindowsDeviceClaim System.String
---@field public WindowsDeviceGroup System.String
---@field public WindowsUserClaim System.String
---@field public WindowsFqbnVersion System.String
---@field public WindowsSubAuthority System.String
---@field public Anonymous System.String
---@field public Authentication System.String
---@field public AuthorizationDecision System.String
---@field public Country System.String
---@field public DateOfBirth System.String
---@field public Dns System.String
---@field public DenyOnlySid System.String
---@field public Email System.String
---@field public Gender System.String
---@field public GivenName System.String
---@field public Hash System.String
---@field public HomePhone System.String
---@field public Locality System.String
---@field public MobilePhone System.String
---@field public Name System.String
---@field public NameIdentifier System.String
---@field public OtherPhone System.String
---@field public PostalCode System.String
---@field public Rsa System.String
---@field public Sid System.String
---@field public Spn System.String
---@field public StateOrProvince System.String
---@field public StreetAddress System.String
---@field public Surname System.String
---@field public System System.String
---@field public Thumbprint System.String
---@field public Upn System.String
---@field public Uri System.String
---@field public Webpage System.String
---@field public X500DistinguishedName System.String
---@field public Actor System.String
System.Security.Claims.ClaimTypes = {}
---@type System.Security.Claims.ClaimTypes
CS.System.Security.Claims.ClaimTypes = System.Security.Claims.ClaimTypes

---@class System.Security.Claims.ClaimValueTypes : System.Object
---@field public Base64Binary System.String
---@field public Base64Octet System.String
---@field public Boolean System.String
---@field public Date System.String
---@field public DateTime System.String
---@field public Double System.String
---@field public Fqbn System.String
---@field public HexBinary System.String
---@field public Integer System.String
---@field public Integer32 System.String
---@field public Integer64 System.String
---@field public Sid System.String
---@field public String System.String
---@field public Time System.String
---@field public UInteger32 System.String
---@field public UInteger64 System.String
---@field public DnsName System.String
---@field public Email System.String
---@field public Rsa System.String
---@field public UpnName System.String
---@field public DsaKeyValue System.String
---@field public KeyInfo System.String
---@field public RsaKeyValue System.String
---@field public DaytimeDuration System.String
---@field public YearMonthDuration System.String
---@field public Rfc822Name System.String
---@field public X500Name System.String
System.Security.Claims.ClaimValueTypes = {}
---@type System.Security.Claims.ClaimValueTypes
CS.System.Security.Claims.ClaimValueTypes = System.Security.Claims.ClaimValueTypes

---@class System.Security.Claims.ClaimsIdentity : System.Object
---@field public AuthenticationType System.String @  getter
---@field public IsAuthenticated System.Boolean @  getter
---@field public Actor System.Security.Claims.ClaimsIdentity @ setter getter
---@field public BootstrapContext System.Object @ setter getter
---@field public Claims System.Collections.Generic.IEnumerable @  getter
---@field public Label System.String @ setter getter
---@field public Name System.String @  getter
---@field public NameClaimType System.String @  getter
---@field public RoleClaimType System.String @  getter
---@field public DefaultIssuer System.String
---@field public DefaultNameClaimType System.String
---@field public DefaultRoleClaimType System.String
System.Security.Claims.ClaimsIdentity = {}
---@type System.Security.Claims.ClaimsIdentity
CS.System.Security.Claims.ClaimsIdentity = System.Security.Claims.ClaimsIdentity

---@return System.Security.Claims.ClaimsIdentity
function System.Security.Claims.ClaimsIdentity:Clone()end
---@param claim System.Security.Claims.Claim
---@return System.Void
function System.Security.Claims.ClaimsIdentity:AddClaim(claim)end
---@param claims System.Collections.Generic.IEnumerable
---@return System.Void
function System.Security.Claims.ClaimsIdentity:AddClaims(claims)end
---@param claim System.Security.Claims.Claim
---@return System.Boolean
function System.Security.Claims.ClaimsIdentity:TryRemoveClaim(claim)end
---@param claim System.Security.Claims.Claim
---@return System.Void
function System.Security.Claims.ClaimsIdentity:RemoveClaim(claim)end
---@overload fun(type:System.String):System.Collections.Generic.IEnumerable
---@param match System.Predicate
---@return System.Collections.Generic.IEnumerable
function System.Security.Claims.ClaimsIdentity:FindAll(match)end
---@overload fun(type:System.String, value:System.String):System.Boolean
---@param match System.Predicate
---@return System.Boolean
function System.Security.Claims.ClaimsIdentity:HasClaim(match)end
---@overload fun(type:System.String):System.Security.Claims.Claim
---@param match System.Predicate
---@return System.Security.Claims.Claim
function System.Security.Claims.ClaimsIdentity:FindFirst(match)end
---@param writer System.IO.BinaryWriter
---@return System.Void
function System.Security.Claims.ClaimsIdentity:WriteTo(writer)end
---@class System.Security.Claims.ClaimsPrincipal : System.Object
---@field public PrimaryIdentitySelector System.Func @static setter getter
---@field public ClaimsPrincipalSelector System.Func @static setter getter
---@field public Claims System.Collections.Generic.IEnumerable @  getter
---@field public Current System.Security.Claims.ClaimsPrincipal @static  getter
---@field public Identities System.Collections.Generic.IEnumerable @  getter
---@field public Identity System.Security.Principal.IIdentity @  getter
System.Security.Claims.ClaimsPrincipal = {}
---@type System.Security.Claims.ClaimsPrincipal
CS.System.Security.Claims.ClaimsPrincipal = System.Security.Claims.ClaimsPrincipal

---@return System.Security.Claims.ClaimsPrincipal
function System.Security.Claims.ClaimsPrincipal:Clone()end
---@param identity System.Security.Claims.ClaimsIdentity
---@return System.Void
function System.Security.Claims.ClaimsPrincipal:AddIdentity(identity)end
---@param identities System.Collections.Generic.IEnumerable
---@return System.Void
function System.Security.Claims.ClaimsPrincipal:AddIdentities(identities)end
---@overload fun(type:System.String):System.Collections.Generic.IEnumerable
---@param match System.Predicate
---@return System.Collections.Generic.IEnumerable
function System.Security.Claims.ClaimsPrincipal:FindAll(match)end
---@overload fun(type:System.String):System.Security.Claims.Claim
---@param match System.Predicate
---@return System.Security.Claims.Claim
function System.Security.Claims.ClaimsPrincipal:FindFirst(match)end
---@overload fun(type:System.String, value:System.String):System.Boolean
---@param match System.Predicate
---@return System.Boolean
function System.Security.Claims.ClaimsPrincipal:HasClaim(match)end
---@param role System.String
---@return System.Boolean
function System.Security.Claims.ClaimsPrincipal:IsInRole(role)end
---@param writer System.IO.BinaryWriter
---@return System.Void
function System.Security.Claims.ClaimsPrincipal:WriteTo(writer)end
---@class System.Security.Claims.DynamicRoleClaimProvider : System.Object
System.Security.Claims.DynamicRoleClaimProvider = {}
---@type System.Security.Claims.DynamicRoleClaimProvider
CS.System.Security.Claims.DynamicRoleClaimProvider = System.Security.Claims.DynamicRoleClaimProvider

---@param claimsIdentity System.Security.Claims.ClaimsIdentity
---@param claims System.Collections.Generic.IEnumerable
---@return System.Void
function System.Security.Claims.DynamicRoleClaimProvider.AddDynamicRoleClaims(claimsIdentity, claims)end
