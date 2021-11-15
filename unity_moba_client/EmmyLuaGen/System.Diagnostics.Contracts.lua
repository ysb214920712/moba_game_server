---@class System.Diagnostics.Contracts.PureAttribute : System.Attribute
System.Diagnostics.Contracts.PureAttribute = {}
---@type System.Diagnostics.Contracts.PureAttribute
CS.System.Diagnostics.Contracts.PureAttribute = System.Diagnostics.Contracts.PureAttribute

---@class System.Diagnostics.Contracts.ContractClassAttribute : System.Attribute
---@field public TypeContainingContracts System.Type @  getter
System.Diagnostics.Contracts.ContractClassAttribute = {}
---@type System.Diagnostics.Contracts.ContractClassAttribute
CS.System.Diagnostics.Contracts.ContractClassAttribute = System.Diagnostics.Contracts.ContractClassAttribute

---@class System.Diagnostics.Contracts.ContractClassForAttribute : System.Attribute
---@field public TypeContractsAreFor System.Type @  getter
System.Diagnostics.Contracts.ContractClassForAttribute = {}
---@type System.Diagnostics.Contracts.ContractClassForAttribute
CS.System.Diagnostics.Contracts.ContractClassForAttribute = System.Diagnostics.Contracts.ContractClassForAttribute

---@class System.Diagnostics.Contracts.ContractInvariantMethodAttribute : System.Attribute
System.Diagnostics.Contracts.ContractInvariantMethodAttribute = {}
---@type System.Diagnostics.Contracts.ContractInvariantMethodAttribute
CS.System.Diagnostics.Contracts.ContractInvariantMethodAttribute = System.Diagnostics.Contracts.ContractInvariantMethodAttribute

---@class System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute : System.Attribute
System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute = {}
---@type System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute
CS.System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute = System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute

---@class System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute : System.Attribute
System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute = {}
---@type System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute
CS.System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute = System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute

---@class System.Diagnostics.Contracts.ContractVerificationAttribute : System.Attribute
---@field public Value System.Boolean @  getter
System.Diagnostics.Contracts.ContractVerificationAttribute = {}
---@type System.Diagnostics.Contracts.ContractVerificationAttribute
CS.System.Diagnostics.Contracts.ContractVerificationAttribute = System.Diagnostics.Contracts.ContractVerificationAttribute

---@class System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute : System.Attribute
---@field public Name System.String @  getter
System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute = {}
---@type System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute
CS.System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute = System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute

---@class System.Diagnostics.Contracts.ContractArgumentValidatorAttribute : System.Attribute
System.Diagnostics.Contracts.ContractArgumentValidatorAttribute = {}
---@type System.Diagnostics.Contracts.ContractArgumentValidatorAttribute
CS.System.Diagnostics.Contracts.ContractArgumentValidatorAttribute = System.Diagnostics.Contracts.ContractArgumentValidatorAttribute

---@class System.Diagnostics.Contracts.ContractAbbreviatorAttribute : System.Attribute
System.Diagnostics.Contracts.ContractAbbreviatorAttribute = {}
---@type System.Diagnostics.Contracts.ContractAbbreviatorAttribute
CS.System.Diagnostics.Contracts.ContractAbbreviatorAttribute = System.Diagnostics.Contracts.ContractAbbreviatorAttribute

---@class System.Diagnostics.Contracts.ContractOptionAttribute : System.Attribute
---@field public Category System.String @  getter
---@field public Setting System.String @  getter
---@field public Enabled System.Boolean @  getter
---@field public Value System.String @  getter
System.Diagnostics.Contracts.ContractOptionAttribute = {}
---@type System.Diagnostics.Contracts.ContractOptionAttribute
CS.System.Diagnostics.Contracts.ContractOptionAttribute = System.Diagnostics.Contracts.ContractOptionAttribute

---@class System.Diagnostics.Contracts.Contract : System.Object
System.Diagnostics.Contracts.Contract = {}
---@type System.Diagnostics.Contracts.Contract
CS.System.Diagnostics.Contracts.Contract = System.Diagnostics.Contracts.Contract

---@overload fun(condition:System.Boolean, userMessage:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Contracts.Contract.Assume(condition)end
---@overload fun(condition:System.Boolean, userMessage:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Contracts.Contract.Assert(condition)end
---@overload fun(condition:System.Boolean):System.Void
---@overload fun(condition:System.Boolean, userMessage:System.String):System.Void
---@overload fun(condition:System.Boolean, userMessage:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Contracts.Contract.Requires(condition)end
---@overload fun(condition:System.Boolean, userMessage:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Contracts.Contract.Ensures(condition)end
---@overload fun(condition:System.Boolean, userMessage:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Contracts.Contract.EnsuresOnThrow(condition)end
---@return any
function System.Diagnostics.Contracts.Contract.Result()end
---@param value any
---@return any
function System.Diagnostics.Contracts.Contract.ValueAtReturn(value)end
---@param value any
---@return any
function System.Diagnostics.Contracts.Contract.OldValue(value)end
---@overload fun(condition:System.Boolean, userMessage:System.String):System.Void
---@param condition System.Boolean
---@return System.Void
function System.Diagnostics.Contracts.Contract.Invariant(condition)end
---@overload fun(collection:any, predicate:any):System.Boolean
---@param fromInclusive System.Int32
---@param toExclusive System.Int32
---@param predicate System.Predicate
---@return System.Boolean
function System.Diagnostics.Contracts.Contract.ForAll(fromInclusive, toExclusive, predicate)end
---@overload fun(collection:any, predicate:any):System.Boolean
---@param fromInclusive System.Int32
---@param toExclusive System.Int32
---@param predicate System.Predicate
---@return System.Boolean
function System.Diagnostics.Contracts.Contract.Exists(fromInclusive, toExclusive, predicate)end
---@return System.Void
function System.Diagnostics.Contracts.Contract.EndContractBlock()end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Contracts.Contract.add_ContractFailed(value)end
---@param value System.EventHandler
---@return System.Void
function System.Diagnostics.Contracts.Contract.remove_ContractFailed(value)end
---@class System.Diagnostics.Contracts.ContractFailureKind : System.Enum
System.Diagnostics.Contracts.ContractFailureKind = {}
---@type System.Diagnostics.Contracts.ContractFailureKind
CS.System.Diagnostics.Contracts.ContractFailureKind = System.Diagnostics.Contracts.ContractFailureKind

---@return System.Int32 value:0
System.Diagnostics.Contracts.ContractFailureKind.Precondition = 0
---@return System.Int32 value:1
System.Diagnostics.Contracts.ContractFailureKind.Postcondition = 1
---@return System.Int32 value:2
System.Diagnostics.Contracts.ContractFailureKind.PostconditionOnException = 2
---@return System.Int32 value:3
System.Diagnostics.Contracts.ContractFailureKind.Invariant = 3
---@return System.Int32 value:4
System.Diagnostics.Contracts.ContractFailureKind.Assert = 4
---@return System.Int32 value:5
System.Diagnostics.Contracts.ContractFailureKind.Assume = 5

---@class System.Diagnostics.Contracts.ContractFailedEventArgs : System.EventArgs
---@field public Message System.String @  getter
---@field public Condition System.String @  getter
---@field public FailureKind System.Diagnostics.Contracts.ContractFailureKind @  getter
---@field public OriginalException System.Exception @  getter
---@field public Handled System.Boolean @  getter
---@field public Unwind System.Boolean @  getter
System.Diagnostics.Contracts.ContractFailedEventArgs = {}
---@type System.Diagnostics.Contracts.ContractFailedEventArgs
CS.System.Diagnostics.Contracts.ContractFailedEventArgs = System.Diagnostics.Contracts.ContractFailedEventArgs

---@return System.Void
function System.Diagnostics.Contracts.ContractFailedEventArgs:SetHandled()end
---@return System.Void
function System.Diagnostics.Contracts.ContractFailedEventArgs:SetUnwind()end
