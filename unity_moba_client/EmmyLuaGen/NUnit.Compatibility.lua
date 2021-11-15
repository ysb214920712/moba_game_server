---@class NUnit.Compatibility.LongLivedMarshalByRefObject : System.MarshalByRefObject
NUnit.Compatibility.LongLivedMarshalByRefObject = {}
---@type NUnit.Compatibility.LongLivedMarshalByRefObject
CS.NUnit.Compatibility.LongLivedMarshalByRefObject = NUnit.Compatibility.LongLivedMarshalByRefObject

---@return System.Object
function NUnit.Compatibility.LongLivedMarshalByRefObject:InitializeLifetimeService()end
---@class NUnit.Compatibility.TypeExtensions : System.Object
NUnit.Compatibility.TypeExtensions = {}
---@type NUnit.Compatibility.TypeExtensions
CS.NUnit.Compatibility.TypeExtensions = NUnit.Compatibility.TypeExtensions

---@class NUnit.Compatibility.AssemblyExtensions : System.Object
NUnit.Compatibility.AssemblyExtensions = {}
---@type NUnit.Compatibility.AssemblyExtensions
CS.NUnit.Compatibility.AssemblyExtensions = NUnit.Compatibility.AssemblyExtensions

---@class NUnit.Compatibility.AdditionalTypeExtensions : System.Object
NUnit.Compatibility.AdditionalTypeExtensions = {}
---@type NUnit.Compatibility.AdditionalTypeExtensions
CS.NUnit.Compatibility.AdditionalTypeExtensions = NUnit.Compatibility.AdditionalTypeExtensions

---@class NUnit.Compatibility.NUnitNullType : System.Object
NUnit.Compatibility.NUnitNullType = {}
---@type NUnit.Compatibility.NUnitNullType
CS.NUnit.Compatibility.NUnitNullType = NUnit.Compatibility.NUnitNullType

---@class NUnit.Compatibility.AttributeHelper : System.Object
NUnit.Compatibility.AttributeHelper = {}
---@type NUnit.Compatibility.AttributeHelper
CS.NUnit.Compatibility.AttributeHelper = NUnit.Compatibility.AttributeHelper

---@param actual System.Object
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Attribute[]
function NUnit.Compatibility.AttributeHelper.GetCustomAttributes(actual, attributeType, inherit)end
