---@class NUnit.Framework.Internal.Filters.CompositeFilter : NUnit.Framework.Internal.TestFilter
---@field public Filters System.Collections.Generic.IList @ setter getter
NUnit.Framework.Internal.Filters.CompositeFilter = {}
---@type NUnit.Framework.Internal.Filters.CompositeFilter
CS.NUnit.Framework.Internal.Filters.CompositeFilter = NUnit.Framework.Internal.Filters.CompositeFilter

---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return System.Void
function NUnit.Framework.Internal.Filters.CompositeFilter:Add(filter)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.CompositeFilter:Pass(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.CompositeFilter:Match(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.CompositeFilter:IsExplicitMatch(test)end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.Filters.CompositeFilter:AddToXml(parentNode, recursive)end
---@class NUnit.Framework.Internal.Filters.AndFilter : NUnit.Framework.Internal.Filters.CompositeFilter
NUnit.Framework.Internal.Filters.AndFilter = {}
---@type NUnit.Framework.Internal.Filters.AndFilter
CS.NUnit.Framework.Internal.Filters.AndFilter = NUnit.Framework.Internal.Filters.AndFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.AndFilter:Pass(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.AndFilter:Match(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.AndFilter:IsExplicitMatch(test)end
---@class NUnit.Framework.Internal.Filters.ValueMatchFilter : NUnit.Framework.Internal.TestFilter
---@field public ExpectedValue System.String @ setter getter
---@field public IsRegex System.Boolean @ setter getter
NUnit.Framework.Internal.Filters.ValueMatchFilter = {}
---@type NUnit.Framework.Internal.Filters.ValueMatchFilter
CS.NUnit.Framework.Internal.Filters.ValueMatchFilter = NUnit.Framework.Internal.Filters.ValueMatchFilter

---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.Filters.ValueMatchFilter:AddToXml(parentNode, recursive)end
---@class NUnit.Framework.Internal.Filters.FullNameFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
NUnit.Framework.Internal.Filters.FullNameFilter = {}
---@type NUnit.Framework.Internal.Filters.FullNameFilter
CS.NUnit.Framework.Internal.Filters.FullNameFilter = NUnit.Framework.Internal.Filters.FullNameFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.FullNameFilter:Match(test)end
---@class NUnit.Framework.Internal.Filters.NotFilter : NUnit.Framework.Internal.TestFilter
---@field public BaseFilter NUnit.Framework.Internal.TestFilter @ setter getter
NUnit.Framework.Internal.Filters.NotFilter = {}
---@type NUnit.Framework.Internal.Filters.NotFilter
CS.NUnit.Framework.Internal.Filters.NotFilter = NUnit.Framework.Internal.Filters.NotFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.NotFilter:Pass(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.NotFilter:Match(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.NotFilter:IsExplicitMatch(test)end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.Filters.NotFilter:AddToXml(parentNode, recursive)end
---@class NUnit.Framework.Internal.Filters.ClassNameFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
NUnit.Framework.Internal.Filters.ClassNameFilter = {}
---@type NUnit.Framework.Internal.Filters.ClassNameFilter
CS.NUnit.Framework.Internal.Filters.ClassNameFilter = NUnit.Framework.Internal.Filters.ClassNameFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.ClassNameFilter:Match(test)end
---@class NUnit.Framework.Internal.Filters.PropertyFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
NUnit.Framework.Internal.Filters.PropertyFilter = {}
---@type NUnit.Framework.Internal.Filters.PropertyFilter
CS.NUnit.Framework.Internal.Filters.PropertyFilter = NUnit.Framework.Internal.Filters.PropertyFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.PropertyFilter:Match(test)end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive System.Boolean
---@return NUnit.Framework.Interfaces.TNode
function NUnit.Framework.Internal.Filters.PropertyFilter:AddToXml(parentNode, recursive)end
---@class NUnit.Framework.Internal.Filters.MethodNameFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
NUnit.Framework.Internal.Filters.MethodNameFilter = {}
---@type NUnit.Framework.Internal.Filters.MethodNameFilter
CS.NUnit.Framework.Internal.Filters.MethodNameFilter = NUnit.Framework.Internal.Filters.MethodNameFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.MethodNameFilter:Match(test)end
---@class NUnit.Framework.Internal.Filters.TestNameFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
NUnit.Framework.Internal.Filters.TestNameFilter = {}
---@type NUnit.Framework.Internal.Filters.TestNameFilter
CS.NUnit.Framework.Internal.Filters.TestNameFilter = NUnit.Framework.Internal.Filters.TestNameFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.TestNameFilter:Match(test)end
---@class NUnit.Framework.Internal.Filters.IdFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
NUnit.Framework.Internal.Filters.IdFilter = {}
---@type NUnit.Framework.Internal.Filters.IdFilter
CS.NUnit.Framework.Internal.Filters.IdFilter = NUnit.Framework.Internal.Filters.IdFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.IdFilter:Match(test)end
---@class NUnit.Framework.Internal.Filters.OrFilter : NUnit.Framework.Internal.Filters.CompositeFilter
NUnit.Framework.Internal.Filters.OrFilter = {}
---@type NUnit.Framework.Internal.Filters.OrFilter
CS.NUnit.Framework.Internal.Filters.OrFilter = NUnit.Framework.Internal.Filters.OrFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.OrFilter:Pass(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.OrFilter:Match(test)end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.OrFilter:IsExplicitMatch(test)end
---@class NUnit.Framework.Internal.Filters.CategoryFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
NUnit.Framework.Internal.Filters.CategoryFilter = {}
---@type NUnit.Framework.Internal.Filters.CategoryFilter
CS.NUnit.Framework.Internal.Filters.CategoryFilter = NUnit.Framework.Internal.Filters.CategoryFilter

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Boolean
function NUnit.Framework.Internal.Filters.CategoryFilter:Match(test)end
