---@class System.Xml.Xsl.Runtime.ContentIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.ContentIterator = {}
---@type System.Xml.Xsl.Runtime.ContentIterator
CS.System.Xml.Xsl.Runtime.ContentIterator = System.Xml.Xsl.Runtime.ContentIterator

---@param context System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.ContentIterator:Create(context)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.ContentIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.ElementContentIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.ElementContentIterator = {}
---@type System.Xml.Xsl.Runtime.ElementContentIterator
CS.System.Xml.Xsl.Runtime.ElementContentIterator = System.Xml.Xsl.Runtime.ElementContentIterator

---@param context System.Xml.XPath.XPathNavigator
---@param localName System.String
---@param ns System.String
---@return System.Void
function System.Xml.Xsl.Runtime.ElementContentIterator:Create(context, localName, ns)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.ElementContentIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.NodeKindContentIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.NodeKindContentIterator = {}
---@type System.Xml.Xsl.Runtime.NodeKindContentIterator
CS.System.Xml.Xsl.Runtime.NodeKindContentIterator = System.Xml.Xsl.Runtime.NodeKindContentIterator

---@param context System.Xml.XPath.XPathNavigator
---@param nodeType System.Xml.XPath.XPathNodeType
---@return System.Void
function System.Xml.Xsl.Runtime.NodeKindContentIterator:Create(context, nodeType)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.NodeKindContentIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.AttributeIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.AttributeIterator = {}
---@type System.Xml.Xsl.Runtime.AttributeIterator
CS.System.Xml.Xsl.Runtime.AttributeIterator = System.Xml.Xsl.Runtime.AttributeIterator

---@param context System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.AttributeIterator:Create(context)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.AttributeIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.NamespaceIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.NamespaceIterator = {}
---@type System.Xml.Xsl.Runtime.NamespaceIterator
CS.System.Xml.Xsl.Runtime.NamespaceIterator = System.Xml.Xsl.Runtime.NamespaceIterator

---@param context System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.NamespaceIterator:Create(context)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.NamespaceIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.AttributeContentIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.AttributeContentIterator = {}
---@type System.Xml.Xsl.Runtime.AttributeContentIterator
CS.System.Xml.Xsl.Runtime.AttributeContentIterator = System.Xml.Xsl.Runtime.AttributeContentIterator

---@param context System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.AttributeContentIterator:Create(context)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.AttributeContentIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.ContentMergeIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.ContentMergeIterator = {}
---@type System.Xml.Xsl.Runtime.ContentMergeIterator
CS.System.Xml.Xsl.Runtime.ContentMergeIterator = System.Xml.Xsl.Runtime.ContentMergeIterator

---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.ContentMergeIterator:Create(filter)end
---@param input System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.IteratorResult
function System.Xml.Xsl.Runtime.ContentMergeIterator:MoveNext(input)end
---@class System.Xml.Xsl.Runtime.DodSequenceMerge : System.ValueType
System.Xml.Xsl.Runtime.DodSequenceMerge = {}
---@type System.Xml.Xsl.Runtime.DodSequenceMerge
CS.System.Xml.Xsl.Runtime.DodSequenceMerge = System.Xml.Xsl.Runtime.DodSequenceMerge

---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Void
function System.Xml.Xsl.Runtime.DodSequenceMerge:Create(runtime)end
---@param sequence System.Collections.Generic.IList
---@return System.Void
function System.Xml.Xsl.Runtime.DodSequenceMerge:AddSequence(sequence)end
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.DodSequenceMerge:MergeSequences()end
---@class System.Xml.Xsl.Runtime.SetIteratorResult : System.Enum
System.Xml.Xsl.Runtime.SetIteratorResult = {}
---@type System.Xml.Xsl.Runtime.SetIteratorResult
CS.System.Xml.Xsl.Runtime.SetIteratorResult = System.Xml.Xsl.Runtime.SetIteratorResult

---@return System.Int32 value:0
System.Xml.Xsl.Runtime.SetIteratorResult.NoMoreNodes = 0
---@return System.Int32 value:1
System.Xml.Xsl.Runtime.SetIteratorResult.InitRightIterator = 1
---@return System.Int32 value:2
System.Xml.Xsl.Runtime.SetIteratorResult.NeedLeftNode = 2
---@return System.Int32 value:3
System.Xml.Xsl.Runtime.SetIteratorResult.NeedRightNode = 3
---@return System.Int32 value:4
System.Xml.Xsl.Runtime.SetIteratorResult.HaveCurrentNode = 4

---@class System.Xml.Xsl.Runtime.UnionIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.UnionIterator = {}
---@type System.Xml.Xsl.Runtime.UnionIterator
CS.System.Xml.Xsl.Runtime.UnionIterator = System.Xml.Xsl.Runtime.UnionIterator

---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Void
function System.Xml.Xsl.Runtime.UnionIterator:Create(runtime)end
---@param nestedNavigator System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.SetIteratorResult
function System.Xml.Xsl.Runtime.UnionIterator:MoveNext(nestedNavigator)end
---@class System.Xml.Xsl.Runtime.IntersectIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.IntersectIterator = {}
---@type System.Xml.Xsl.Runtime.IntersectIterator
CS.System.Xml.Xsl.Runtime.IntersectIterator = System.Xml.Xsl.Runtime.IntersectIterator

---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Void
function System.Xml.Xsl.Runtime.IntersectIterator:Create(runtime)end
---@param nestedNavigator System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.SetIteratorResult
function System.Xml.Xsl.Runtime.IntersectIterator:MoveNext(nestedNavigator)end
---@class System.Xml.Xsl.Runtime.DifferenceIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.DifferenceIterator = {}
---@type System.Xml.Xsl.Runtime.DifferenceIterator
CS.System.Xml.Xsl.Runtime.DifferenceIterator = System.Xml.Xsl.Runtime.DifferenceIterator

---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Void
function System.Xml.Xsl.Runtime.DifferenceIterator:Create(runtime)end
---@param nestedNavigator System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.SetIteratorResult
function System.Xml.Xsl.Runtime.DifferenceIterator:MoveNext(nestedNavigator)end
---@class System.Xml.Xsl.Runtime.FollowingSiblingIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.FollowingSiblingIterator = {}
---@type System.Xml.Xsl.Runtime.FollowingSiblingIterator
CS.System.Xml.Xsl.Runtime.FollowingSiblingIterator = System.Xml.Xsl.Runtime.FollowingSiblingIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.FollowingSiblingIterator:Create(context, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.FollowingSiblingIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.FollowingSiblingMergeIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.FollowingSiblingMergeIterator = {}
---@type System.Xml.Xsl.Runtime.FollowingSiblingMergeIterator
CS.System.Xml.Xsl.Runtime.FollowingSiblingMergeIterator = System.Xml.Xsl.Runtime.FollowingSiblingMergeIterator

---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.FollowingSiblingMergeIterator:Create(filter)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.IteratorResult
function System.Xml.Xsl.Runtime.FollowingSiblingMergeIterator:MoveNext(navigator)end
---@class System.Xml.Xsl.Runtime.PrecedingSiblingIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.PrecedingSiblingIterator = {}
---@type System.Xml.Xsl.Runtime.PrecedingSiblingIterator
CS.System.Xml.Xsl.Runtime.PrecedingSiblingIterator = System.Xml.Xsl.Runtime.PrecedingSiblingIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.PrecedingSiblingIterator:Create(context, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.PrecedingSiblingIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.PrecedingSiblingDocOrderIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.PrecedingSiblingDocOrderIterator = {}
---@type System.Xml.Xsl.Runtime.PrecedingSiblingDocOrderIterator
CS.System.Xml.Xsl.Runtime.PrecedingSiblingDocOrderIterator = System.Xml.Xsl.Runtime.PrecedingSiblingDocOrderIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.PrecedingSiblingDocOrderIterator:Create(context, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.PrecedingSiblingDocOrderIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.StringConcat : System.ValueType
---@field public Delimiter System.String @ setter getter
System.Xml.Xsl.Runtime.StringConcat = {}
---@type System.Xml.Xsl.Runtime.StringConcat
CS.System.Xml.Xsl.Runtime.StringConcat = System.Xml.Xsl.Runtime.StringConcat

---@return System.Void
function System.Xml.Xsl.Runtime.StringConcat:Clear()end
---@param value System.String
---@return System.Void
function System.Xml.Xsl.Runtime.StringConcat:Concat(value)end
---@return System.String
function System.Xml.Xsl.Runtime.StringConcat:GetResult()end
---@class System.Xml.Xsl.Runtime.DescendantIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.DescendantIterator = {}
---@type System.Xml.Xsl.Runtime.DescendantIterator
CS.System.Xml.Xsl.Runtime.DescendantIterator = System.Xml.Xsl.Runtime.DescendantIterator

---@param input System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@param orSelf System.Boolean
---@return System.Void
function System.Xml.Xsl.Runtime.DescendantIterator:Create(input, filter, orSelf)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.DescendantIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.DescendantMergeIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.DescendantMergeIterator = {}
---@type System.Xml.Xsl.Runtime.DescendantMergeIterator
CS.System.Xml.Xsl.Runtime.DescendantMergeIterator = System.Xml.Xsl.Runtime.DescendantMergeIterator

---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@param orSelf System.Boolean
---@return System.Void
function System.Xml.Xsl.Runtime.DescendantMergeIterator:Create(filter, orSelf)end
---@param input System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.IteratorResult
function System.Xml.Xsl.Runtime.DescendantMergeIterator:MoveNext(input)end
---@class System.Xml.Xsl.Runtime.ParentIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.ParentIterator = {}
---@type System.Xml.Xsl.Runtime.ParentIterator
CS.System.Xml.Xsl.Runtime.ParentIterator = System.Xml.Xsl.Runtime.ParentIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.ParentIterator:Create(context, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.ParentIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.AncestorIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.AncestorIterator = {}
---@type System.Xml.Xsl.Runtime.AncestorIterator
CS.System.Xml.Xsl.Runtime.AncestorIterator = System.Xml.Xsl.Runtime.AncestorIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@param orSelf System.Boolean
---@return System.Void
function System.Xml.Xsl.Runtime.AncestorIterator:Create(context, filter, orSelf)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.AncestorIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.AncestorDocOrderIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.AncestorDocOrderIterator = {}
---@type System.Xml.Xsl.Runtime.AncestorDocOrderIterator
CS.System.Xml.Xsl.Runtime.AncestorDocOrderIterator = System.Xml.Xsl.Runtime.AncestorDocOrderIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@param orSelf System.Boolean
---@return System.Void
function System.Xml.Xsl.Runtime.AncestorDocOrderIterator:Create(context, filter, orSelf)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.AncestorDocOrderIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.XPathFollowingIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.XPathFollowingIterator = {}
---@type System.Xml.Xsl.Runtime.XPathFollowingIterator
CS.System.Xml.Xsl.Runtime.XPathFollowingIterator = System.Xml.Xsl.Runtime.XPathFollowingIterator

---@param input System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.XPathFollowingIterator:Create(input, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.XPathFollowingIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.XPathFollowingMergeIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.XPathFollowingMergeIterator = {}
---@type System.Xml.Xsl.Runtime.XPathFollowingMergeIterator
CS.System.Xml.Xsl.Runtime.XPathFollowingMergeIterator = System.Xml.Xsl.Runtime.XPathFollowingMergeIterator

---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.XPathFollowingMergeIterator:Create(filter)end
---@param input System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.IteratorResult
function System.Xml.Xsl.Runtime.XPathFollowingMergeIterator:MoveNext(input)end
---@class System.Xml.Xsl.Runtime.PrecedingIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.PrecedingIterator = {}
---@type System.Xml.Xsl.Runtime.PrecedingIterator
CS.System.Xml.Xsl.Runtime.PrecedingIterator = System.Xml.Xsl.Runtime.PrecedingIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.PrecedingIterator:Create(context, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.PrecedingIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.XPathPrecedingIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.XPathPrecedingIterator = {}
---@type System.Xml.Xsl.Runtime.XPathPrecedingIterator
CS.System.Xml.Xsl.Runtime.XPathPrecedingIterator = System.Xml.Xsl.Runtime.XPathPrecedingIterator

---@param context System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.XPathPrecedingIterator:Create(context, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.XPathPrecedingIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.XPathPrecedingDocOrderIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.XPathPrecedingDocOrderIterator = {}
---@type System.Xml.Xsl.Runtime.XPathPrecedingDocOrderIterator
CS.System.Xml.Xsl.Runtime.XPathPrecedingDocOrderIterator = System.Xml.Xsl.Runtime.XPathPrecedingDocOrderIterator

---@param input System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.XPathPrecedingDocOrderIterator:Create(input, filter)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.XPathPrecedingDocOrderIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.XPathPrecedingMergeIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.XPathPrecedingMergeIterator = {}
---@type System.Xml.Xsl.Runtime.XPathPrecedingMergeIterator
CS.System.Xml.Xsl.Runtime.XPathPrecedingMergeIterator = System.Xml.Xsl.Runtime.XPathPrecedingMergeIterator

---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@return System.Void
function System.Xml.Xsl.Runtime.XPathPrecedingMergeIterator:Create(filter)end
---@param input System.Xml.XPath.XPathNavigator
---@return System.Xml.Xsl.Runtime.IteratorResult
function System.Xml.Xsl.Runtime.XPathPrecedingMergeIterator:MoveNext(input)end
---@class System.Xml.Xsl.Runtime.NodeRangeIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.NodeRangeIterator = {}
---@type System.Xml.Xsl.Runtime.NodeRangeIterator
CS.System.Xml.Xsl.Runtime.NodeRangeIterator = System.Xml.Xsl.Runtime.NodeRangeIterator

---@param start System.Xml.XPath.XPathNavigator
---@param filter System.Xml.Xsl.Runtime.XmlNavigatorFilter
---@param _end System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.NodeRangeIterator:Create(start, filter, _end)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.NodeRangeIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.Int32Aggregator : System.ValueType
---@field public SumResult System.Int32 @  getter
---@field public AverageResult System.Int32 @  getter
---@field public MinimumResult System.Int32 @  getter
---@field public MaximumResult System.Int32 @  getter
---@field public IsEmpty System.Boolean @  getter
System.Xml.Xsl.Runtime.Int32Aggregator = {}
---@type System.Xml.Xsl.Runtime.Int32Aggregator
CS.System.Xml.Xsl.Runtime.Int32Aggregator = System.Xml.Xsl.Runtime.Int32Aggregator

---@return System.Void
function System.Xml.Xsl.Runtime.Int32Aggregator:Create()end
---@param value System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.Int32Aggregator:Sum(value)end
---@param value System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.Int32Aggregator:Average(value)end
---@param value System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.Int32Aggregator:Minimum(value)end
---@param value System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.Int32Aggregator:Maximum(value)end
---@class System.Xml.Xsl.Runtime.Int64Aggregator : System.ValueType
---@field public SumResult System.Int64 @  getter
---@field public AverageResult System.Int64 @  getter
---@field public MinimumResult System.Int64 @  getter
---@field public MaximumResult System.Int64 @  getter
---@field public IsEmpty System.Boolean @  getter
System.Xml.Xsl.Runtime.Int64Aggregator = {}
---@type System.Xml.Xsl.Runtime.Int64Aggregator
CS.System.Xml.Xsl.Runtime.Int64Aggregator = System.Xml.Xsl.Runtime.Int64Aggregator

---@return System.Void
function System.Xml.Xsl.Runtime.Int64Aggregator:Create()end
---@param value System.Int64
---@return System.Void
function System.Xml.Xsl.Runtime.Int64Aggregator:Sum(value)end
---@param value System.Int64
---@return System.Void
function System.Xml.Xsl.Runtime.Int64Aggregator:Average(value)end
---@param value System.Int64
---@return System.Void
function System.Xml.Xsl.Runtime.Int64Aggregator:Minimum(value)end
---@param value System.Int64
---@return System.Void
function System.Xml.Xsl.Runtime.Int64Aggregator:Maximum(value)end
---@class System.Xml.Xsl.Runtime.DecimalAggregator : System.ValueType
---@field public SumResult System.Decimal @  getter
---@field public AverageResult System.Decimal @  getter
---@field public MinimumResult System.Decimal @  getter
---@field public MaximumResult System.Decimal @  getter
---@field public IsEmpty System.Boolean @  getter
System.Xml.Xsl.Runtime.DecimalAggregator = {}
---@type System.Xml.Xsl.Runtime.DecimalAggregator
CS.System.Xml.Xsl.Runtime.DecimalAggregator = System.Xml.Xsl.Runtime.DecimalAggregator

---@return System.Void
function System.Xml.Xsl.Runtime.DecimalAggregator:Create()end
---@param value System.Decimal
---@return System.Void
function System.Xml.Xsl.Runtime.DecimalAggregator:Sum(value)end
---@param value System.Decimal
---@return System.Void
function System.Xml.Xsl.Runtime.DecimalAggregator:Average(value)end
---@param value System.Decimal
---@return System.Void
function System.Xml.Xsl.Runtime.DecimalAggregator:Minimum(value)end
---@param value System.Decimal
---@return System.Void
function System.Xml.Xsl.Runtime.DecimalAggregator:Maximum(value)end
---@class System.Xml.Xsl.Runtime.DoubleAggregator : System.ValueType
---@field public SumResult System.Double @  getter
---@field public AverageResult System.Double @  getter
---@field public MinimumResult System.Double @  getter
---@field public MaximumResult System.Double @  getter
---@field public IsEmpty System.Boolean @  getter
System.Xml.Xsl.Runtime.DoubleAggregator = {}
---@type System.Xml.Xsl.Runtime.DoubleAggregator
CS.System.Xml.Xsl.Runtime.DoubleAggregator = System.Xml.Xsl.Runtime.DoubleAggregator

---@return System.Void
function System.Xml.Xsl.Runtime.DoubleAggregator:Create()end
---@param value System.Double
---@return System.Void
function System.Xml.Xsl.Runtime.DoubleAggregator:Sum(value)end
---@param value System.Double
---@return System.Void
function System.Xml.Xsl.Runtime.DoubleAggregator:Average(value)end
---@param value System.Double
---@return System.Void
function System.Xml.Xsl.Runtime.DoubleAggregator:Minimum(value)end
---@param value System.Double
---@return System.Void
function System.Xml.Xsl.Runtime.DoubleAggregator:Maximum(value)end
---@class System.Xml.Xsl.Runtime.XmlCollation : System.Object
System.Xml.Xsl.Runtime.XmlCollation = {}
---@type System.Xml.Xsl.Runtime.XmlCollation
CS.System.Xml.Xsl.Runtime.XmlCollation = System.Xml.Xsl.Runtime.XmlCollation

---@param obj System.Object
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlCollation:Equals(obj)end
---@return System.Int32
function System.Xml.Xsl.Runtime.XmlCollation:GetHashCode()end
---@class System.Xml.Xsl.Runtime.XmlILIndex : System.Object
System.Xml.Xsl.Runtime.XmlILIndex = {}
---@type System.Xml.Xsl.Runtime.XmlILIndex
CS.System.Xml.Xsl.Runtime.XmlILIndex = System.Xml.Xsl.Runtime.XmlILIndex

---@param key System.String
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.XmlILIndex:Add(key, navigator)end
---@param key System.String
---@return System.Xml.Xsl.Runtime.XmlQueryNodeSequence
function System.Xml.Xsl.Runtime.XmlILIndex:Lookup(key)end
---@class System.Xml.Xsl.Runtime.XmlILStorageConverter : System.Object
System.Xml.Xsl.Runtime.XmlILStorageConverter = {}
---@type System.Xml.Xsl.Runtime.XmlILStorageConverter
CS.System.Xml.Xsl.Runtime.XmlILStorageConverter = System.Xml.Xsl.Runtime.XmlILStorageConverter

---@param value System.String
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.StringToAtomicValue(value, index, runtime)end
---@param value System.Decimal
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.DecimalToAtomicValue(value, index, runtime)end
---@param value System.Int64
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.Int64ToAtomicValue(value, index, runtime)end
---@param value System.Int32
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.Int32ToAtomicValue(value, index, runtime)end
---@param value System.Boolean
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.BooleanToAtomicValue(value, index, runtime)end
---@param value System.Double
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.DoubleToAtomicValue(value, index, runtime)end
---@param value System.Single
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.SingleToAtomicValue(value, index, runtime)end
---@param value System.DateTime
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.DateTimeToAtomicValue(value, index, runtime)end
---@param value System.Xml.XmlQualifiedName
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.XmlQualifiedNameToAtomicValue(value, index, runtime)end
---@param value System.TimeSpan
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.TimeSpanToAtomicValue(value, index, runtime)end
---@param value System.Byte[]
---@param index System.Int32
---@param runtime System.Xml.Xsl.Runtime.XmlQueryRuntime
---@return System.Xml.Schema.XmlAtomicValue
function System.Xml.Xsl.Runtime.XmlILStorageConverter.BytesToAtomicValue(value, index, runtime)end
---@param listNavigators System.Collections.Generic.IList
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.XmlILStorageConverter.NavigatorsToItems(listNavigators)end
---@param listItems System.Collections.Generic.IList
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.XmlILStorageConverter.ItemsToNavigators(listItems)end
---@class System.Xml.Xsl.Runtime.IteratorResult : System.Enum
System.Xml.Xsl.Runtime.IteratorResult = {}
---@type System.Xml.Xsl.Runtime.IteratorResult
CS.System.Xml.Xsl.Runtime.IteratorResult = System.Xml.Xsl.Runtime.IteratorResult

---@return System.Int32 value:0
System.Xml.Xsl.Runtime.IteratorResult.NoMoreNodes = 0
---@return System.Int32 value:1
System.Xml.Xsl.Runtime.IteratorResult.NeedInputNode = 1
---@return System.Int32 value:2
System.Xml.Xsl.Runtime.IteratorResult.HaveCurrentNode = 2

---@class System.Xml.Xsl.Runtime.IdIterator : System.ValueType
---@field public Current System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.IdIterator = {}
---@type System.Xml.Xsl.Runtime.IdIterator
CS.System.Xml.Xsl.Runtime.IdIterator = System.Xml.Xsl.Runtime.IdIterator

---@param context System.Xml.XPath.XPathNavigator
---@param value System.String
---@return System.Void
function System.Xml.Xsl.Runtime.IdIterator:Create(context, value)end
---@return System.Boolean
function System.Xml.Xsl.Runtime.IdIterator:MoveNext()end
---@class System.Xml.Xsl.Runtime.XmlNavigatorFilter : System.Object
System.Xml.Xsl.Runtime.XmlNavigatorFilter = {}
---@type System.Xml.Xsl.Runtime.XmlNavigatorFilter
CS.System.Xml.Xsl.Runtime.XmlNavigatorFilter = System.Xml.Xsl.Runtime.XmlNavigatorFilter

---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlNavigatorFilter:MoveToContent(navigator)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlNavigatorFilter:MoveToNextContent(navigator)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlNavigatorFilter:MoveToFollowingSibling(navigator)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlNavigatorFilter:MoveToPreviousSibling(navigator)end
---@param navigator System.Xml.XPath.XPathNavigator
---@param navigatorEnd System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlNavigatorFilter:MoveToFollowing(navigator, navigatorEnd)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlNavigatorFilter:IsFiltered(navigator)end
---@class System.Xml.Xsl.Runtime.XmlQueryContext : System.Object
---@field public QueryNameTable System.Xml.XmlNameTable @  getter
---@field public DefaultNameTable System.Xml.XmlNameTable @  getter
---@field public DefaultDataSource System.Xml.XPath.XPathNavigator @  getter
System.Xml.Xsl.Runtime.XmlQueryContext = {}
---@type System.Xml.Xsl.Runtime.XmlQueryContext
CS.System.Xml.Xsl.Runtime.XmlQueryContext = System.Xml.Xsl.Runtime.XmlQueryContext

---@param uriRelative System.String
---@param uriBase System.String
---@return System.Xml.XPath.XPathNavigator
function System.Xml.Xsl.Runtime.XmlQueryContext:GetDataSource(uriRelative, uriBase)end
---@param localName System.String
---@param namespaceUri System.String
---@return System.Object
function System.Xml.Xsl.Runtime.XmlQueryContext:GetParameter(localName, namespaceUri)end
---@param namespaceUri System.String
---@return System.Object
function System.Xml.Xsl.Runtime.XmlQueryContext:GetLateBoundObject(namespaceUri)end
---@param name System.String
---@param namespaceUri System.String
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQueryContext:LateBoundFunctionExists(name, namespaceUri)end
---@param name System.String
---@param namespaceUri System.String
---@param args System.Collections.Generic.IList
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.XmlQueryContext:InvokeXsltLateBoundFunction(name, namespaceUri, args)end
---@param message System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryContext:OnXsltMessageEncountered(message)end
---@class System.Xml.Xsl.Runtime.XmlQueryOutput : System.Xml.XmlWriter
---@field public WriteState System.Xml.WriteState @  getter
---@field public XmlSpace System.Xml.XmlSpace @  getter
---@field public XmlLang System.String @  getter
System.Xml.Xsl.Runtime.XmlQueryOutput = {}
---@type System.Xml.Xsl.Runtime.XmlQueryOutput
CS.System.Xml.Xsl.Runtime.XmlQueryOutput = System.Xml.Xsl.Runtime.XmlQueryOutput

---@overload fun(standalone:System.Boolean):System.Void
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartDocument()end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndDocument()end
---@param name System.String
---@param pubid System.String
---@param sysid System.String
---@param subset System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteDocType(name, pubid, sysid, subset)end
---@param prefix System.String
---@param localName System.String
---@param ns System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartElement(prefix, localName, ns)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndElement()end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteFullEndElement()end
---@param prefix System.String
---@param localName System.String
---@param ns System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartAttribute(prefix, localName, ns)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndAttribute()end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteComment(text)end
---@param target System.String
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteProcessingInstruction(target, text)end
---@param name System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEntityRef(name)end
---@param ch System.Char
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteCharEntity(ch)end
---@param lowChar System.Char
---@param highChar System.Char
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteSurrogateCharEntity(lowChar, highChar)end
---@param ws System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteWhitespace(ws)end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteString(text)end
---@param buffer System.Char[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteChars(buffer, index, count)end
---@overload fun(buffer:System.Char[], index:System.Int32, count:System.Int32):System.Void
---@param data System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteRaw(data)end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteCData(text)end
---@param buffer System.Byte[]
---@param index System.Int32
---@param count System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteBase64(buffer, index, count)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:Close()end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:Flush()end
---@param ns System.String
---@return System.String
function System.Xml.Xsl.Runtime.XmlQueryOutput:LookupPrefix(ns)end
---@param rootType System.Xml.XPath.XPathNodeType
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:StartTree(rootType)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:EndTree()end
---@overload fun(prefix:System.String, localName:System.String, ns:System.String):System.Void
---@param localName System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartElementUnchecked(localName)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:StartElementContentUnchecked()end
---@overload fun(prefix:System.String, localName:System.String, ns:System.String):System.Void
---@param localName System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndElementUnchecked(localName)end
---@overload fun(prefix:System.String, localName:System.String, ns:System.String):System.Void
---@param localName System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartAttributeUnchecked(localName)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndAttributeUnchecked()end
---@param prefix System.String
---@param ns System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteNamespaceDeclarationUnchecked(prefix, ns)end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStringUnchecked(text)end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteRawUnchecked(text)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartRoot()end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndRoot()end
---@param localName System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartElementLocalName(localName)end
---@param localName System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartAttributeLocalName(localName)end
---@overload fun(name:System.Xml.XmlQualifiedName):System.Void
---@overload fun(tagName:System.String, prefixMappingsIndex:System.Int32):System.Void
---@overload fun(tagName:System.String, ns:System.String):System.Void
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartElementComputed(navigator)end
---@overload fun(name:System.Xml.XmlQualifiedName):System.Void
---@overload fun(tagName:System.String, prefixMappingsIndex:System.Int32):System.Void
---@overload fun(tagName:System.String, ns:System.String):System.Void
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartAttributeComputed(navigator)end
---@param prefix System.String
---@param ns System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteNamespaceDeclaration(prefix, ns)end
---@param prefix System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartNamespace(prefix)end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteNamespaceString(text)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndNamespace()end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartComment()end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteCommentString(text)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndComment()end
---@param target System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteStartProcessingInstruction(target)end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteProcessingInstructionString(text)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteEndProcessingInstruction()end
---@param item System.Xml.XPath.XPathItem
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:WriteItem(item)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:XsltCopyOf(navigator)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQueryOutput:StartCopy(navigator)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryOutput:EndCopy(navigator)end
---@class System.Xml.Xsl.Runtime.XmlQueryRuntime : System.Object
---@field public ExternalContext System.Xml.Xsl.Runtime.XmlQueryContext @  getter
---@field public XsltFunctions System.Xml.Xsl.Runtime.XsltLibrary @  getter
---@field public NameTable System.Xml.XmlNameTable @  getter
---@field public Output System.Xml.Xsl.Runtime.XmlQueryOutput @  getter
System.Xml.Xsl.Runtime.XmlQueryRuntime = {}
---@type System.Xml.Xsl.Runtime.XmlQueryRuntime
CS.System.Xml.Xsl.Runtime.XmlQueryRuntime = System.Xml.Xsl.Runtime.XmlQueryRuntime

---@return System.String[]
function System.Xml.Xsl.Runtime.XmlQueryRuntime:DebugGetGlobalNames()end
---@param name System.String
---@return System.Collections.IList
function System.Xml.Xsl.Runtime.XmlQueryRuntime:DebugGetGlobalValue(name)end
---@param name System.String
---@param value System.Object
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryRuntime:DebugSetGlobalValue(name, value)end
---@param seq System.Collections.IList
---@return System.Object
function System.Xml.Xsl.Runtime.XmlQueryRuntime:DebugGetXsltValue(seq)end
---@param index System.Int32
---@return System.Object
function System.Xml.Xsl.Runtime.XmlQueryRuntime:GetEarlyBoundObject(index)end
---@param name System.String
---@param namespaceUri System.String
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQueryRuntime:EarlyBoundFunctionExists(name, namespaceUri)end
---@param index System.Int32
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQueryRuntime:IsGlobalComputed(index)end
---@param index System.Int32
---@return System.Object
function System.Xml.Xsl.Runtime.XmlQueryRuntime:GetGlobalValue(index)end
---@param index System.Int32
---@param value System.Object
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryRuntime:SetGlobalValue(index, value)end
---@param index System.Int32
---@return System.String
function System.Xml.Xsl.Runtime.XmlQueryRuntime:GetAtomizedName(index)end
---@param index System.Int32
---@return System.Xml.Xsl.Runtime.XmlNavigatorFilter
function System.Xml.Xsl.Runtime.XmlQueryRuntime:GetNameFilter(index)end
---@param nodeType System.Xml.XPath.XPathNodeType
---@return System.Xml.Xsl.Runtime.XmlNavigatorFilter
function System.Xml.Xsl.Runtime.XmlQueryRuntime:GetTypeFilter(nodeType)end
---@overload fun(tagName:System.String, ns:System.String):System.Xml.XmlQualifiedName
---@param tagName System.String
---@param indexPrefixMappings System.Int32
---@return System.Xml.XmlQualifiedName
function System.Xml.Xsl.Runtime.XmlQueryRuntime:ParseTagName(tagName, indexPrefixMappings)end
---@overload fun(n1:System.Xml.XPath.XPathNavigator, n2:System.Xml.XPath.XPathNavigator):System.Boolean
---@param navigator System.Xml.XPath.XPathNavigator
---@param indexLocalName System.Int32
---@param indexNamespaceUri System.Int32
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQueryRuntime:IsQNameEqual(navigator, indexLocalName, indexNamespaceUri)end
---@param indexType System.Int32
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Xml.Xsl.Runtime.XmlQueryRuntime:ChangeTypeXsltArgument(indexType, value, destinationType)end
---@param indexType System.Int32
---@param value System.Object
---@return System.Object
function System.Xml.Xsl.Runtime.XmlQueryRuntime:ChangeTypeXsltResult(indexType, value)end
---@overload fun(item:System.Xml.XPath.XPathItem, indexType:System.Int32):System.Boolean
---@overload fun(seq:System.Collections.Generic.IList, code:System.Xml.Schema.XmlTypeCode):System.Boolean
---@overload fun(item:System.Xml.XPath.XPathItem, code:System.Xml.Schema.XmlTypeCode):System.Boolean
---@param seq System.Collections.Generic.IList
---@param indexType System.Int32
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQueryRuntime:MatchesXmlType(seq, indexType)end
---@param index System.Int32
---@return System.Xml.Xsl.Runtime.XmlCollation
function System.Xml.Xsl.Runtime.XmlQueryRuntime:GetCollation(index)end
---@param collation System.String
---@return System.Xml.Xsl.Runtime.XmlCollation
function System.Xml.Xsl.Runtime.XmlQueryRuntime:CreateCollation(collation)end
---@param navigatorThis System.Xml.XPath.XPathNavigator
---@param navigatorThat System.Xml.XPath.XPathNavigator
---@return System.Int32
function System.Xml.Xsl.Runtime.XmlQueryRuntime:ComparePosition(navigatorThis, navigatorThat)end
---@param seq System.Collections.Generic.IList
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.XmlQueryRuntime:DocOrderDistinct(seq)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.String
function System.Xml.Xsl.Runtime.XmlQueryRuntime:GenerateId(navigator)end
---@param context System.Xml.XPath.XPathNavigator
---@param indexId System.Int32
---@param index System.Xml.Xsl.Runtime.XmlILIndex
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQueryRuntime:FindIndex(context, indexId, index)end
---@param context System.Xml.XPath.XPathNavigator
---@param indexId System.Int32
---@param index System.Xml.Xsl.Runtime.XmlILIndex
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryRuntime:AddNewIndex(context, indexId, index)end
---@param output System.Xml.Xsl.Runtime.XmlQueryOutput
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryRuntime:StartSequenceConstruction(output)end
---@param output System.Xml.Xsl.Runtime.XmlQueryOutput
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.XmlQueryRuntime:EndSequenceConstruction(output)end
---@param baseUri System.String
---@param output System.Xml.Xsl.Runtime.XmlQueryOutput
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryRuntime:StartRtfConstruction(baseUri, output)end
---@param output System.Xml.Xsl.Runtime.XmlQueryOutput
---@return System.Xml.XPath.XPathNavigator
function System.Xml.Xsl.Runtime.XmlQueryRuntime:EndRtfConstruction(output)end
---@param text System.String
---@param baseUri System.String
---@return System.Xml.XPath.XPathNavigator
function System.Xml.Xsl.Runtime.XmlQueryRuntime:TextRtfConstruction(text, baseUri)end
---@param message System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryRuntime:SendMessage(message)end
---@param text System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryRuntime:ThrowException(text)end
---@param currentNode System.Xml.XPath.XPathNavigator
---@return System.Int32
function System.Xml.Xsl.Runtime.XmlQueryRuntime.OnCurrentNodeChanged(currentNode)end
---@class System.Xml.Xsl.Runtime.XmlQuerySequence : System.Object
---@field public Count System.Int32 @  getter
---@field public Item any @ setter getter
---@field public Empty System.Xml.Xsl.Runtime.XmlQuerySequence
System.Xml.Xsl.Runtime.XmlQuerySequence = {}
---@type System.Xml.Xsl.Runtime.XmlQuerySequence
CS.System.Xml.Xsl.Runtime.XmlQuerySequence = System.Xml.Xsl.Runtime.XmlQuerySequence

---@overload fun(seq:System.Xml.Xsl.Runtime.XmlQuerySequence, item:any):System.Xml.Xsl.Runtime.XmlQuerySequence
---@param seq System.Xml.Xsl.Runtime.XmlQuerySequence
---@return System.Xml.Xsl.Runtime.XmlQuerySequence
function System.Xml.Xsl.Runtime.XmlQuerySequence.CreateOrReuse(seq)end
---@return any
function System.Xml.Xsl.Runtime.XmlQuerySequence:GetEnumerator()end
---@param value any
---@return System.Boolean
function System.Xml.Xsl.Runtime.XmlQuerySequence:Contains(value)end
---@param array T[]
---@param index System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQuerySequence:CopyTo(array, index)end
---@param value any
---@return System.Int32
function System.Xml.Xsl.Runtime.XmlQuerySequence:IndexOf(value)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQuerySequence:Clear()end
---@param value any
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQuerySequence:Add(value)end
---@param keys System.Array
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQuerySequence:SortByKeys(keys)end
---@class System.Xml.Xsl.Runtime.XmlQueryItemSequence : System.Xml.Xsl.Runtime.XmlQuerySequence
---@field public Empty System.Xml.Xsl.Runtime.XmlQueryItemSequence
System.Xml.Xsl.Runtime.XmlQueryItemSequence = {}
---@type System.Xml.Xsl.Runtime.XmlQueryItemSequence
CS.System.Xml.Xsl.Runtime.XmlQueryItemSequence = System.Xml.Xsl.Runtime.XmlQueryItemSequence

---@overload fun(seq:System.Xml.Xsl.Runtime.XmlQueryItemSequence, item:System.Xml.XPath.XPathItem):System.Xml.Xsl.Runtime.XmlQueryItemSequence
---@param seq System.Xml.Xsl.Runtime.XmlQueryItemSequence
---@return System.Xml.Xsl.Runtime.XmlQueryItemSequence
function System.Xml.Xsl.Runtime.XmlQueryItemSequence.CreateOrReuse(seq)end
---@param item System.Xml.XPath.XPathItem
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryItemSequence:AddClone(item)end
---@class System.Xml.Xsl.Runtime.XmlQueryNodeSequence : System.Xml.Xsl.Runtime.XmlQuerySequence
---@field public IsDocOrderDistinct System.Boolean @ setter getter
---@field public Empty System.Xml.Xsl.Runtime.XmlQueryNodeSequence
System.Xml.Xsl.Runtime.XmlQueryNodeSequence = {}
---@type System.Xml.Xsl.Runtime.XmlQueryNodeSequence
CS.System.Xml.Xsl.Runtime.XmlQueryNodeSequence = System.Xml.Xsl.Runtime.XmlQueryNodeSequence

---@overload fun(seq:System.Xml.Xsl.Runtime.XmlQueryNodeSequence, navigator:System.Xml.XPath.XPathNavigator):System.Xml.Xsl.Runtime.XmlQueryNodeSequence
---@param seq System.Xml.Xsl.Runtime.XmlQueryNodeSequence
---@return System.Xml.Xsl.Runtime.XmlQueryNodeSequence
function System.Xml.Xsl.Runtime.XmlQueryNodeSequence.CreateOrReuse(seq)end
---@param comparer System.Collections.Generic.IComparer
---@return System.Xml.Xsl.Runtime.XmlQueryNodeSequence
function System.Xml.Xsl.Runtime.XmlQueryNodeSequence:DocOrderDistinct(comparer)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.Void
function System.Xml.Xsl.Runtime.XmlQueryNodeSequence:AddClone(navigator)end
---@class System.Xml.Xsl.Runtime.XmlSortKeyAccumulator : System.ValueType
---@field public Keys System.Array @  getter
System.Xml.Xsl.Runtime.XmlSortKeyAccumulator = {}
---@type System.Xml.Xsl.Runtime.XmlSortKeyAccumulator
CS.System.Xml.Xsl.Runtime.XmlSortKeyAccumulator = System.Xml.Xsl.Runtime.XmlSortKeyAccumulator

---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:Create()end
---@param collation System.Xml.Xsl.Runtime.XmlCollation
---@param value System.String
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:AddStringSortKey(collation, value)end
---@param collation System.Xml.Xsl.Runtime.XmlCollation
---@param value System.Decimal
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:AddDecimalSortKey(collation, value)end
---@param collation System.Xml.Xsl.Runtime.XmlCollation
---@param value System.Int64
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:AddIntegerSortKey(collation, value)end
---@param collation System.Xml.Xsl.Runtime.XmlCollation
---@param value System.Int32
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:AddIntSortKey(collation, value)end
---@param collation System.Xml.Xsl.Runtime.XmlCollation
---@param value System.Double
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:AddDoubleSortKey(collation, value)end
---@param collation System.Xml.Xsl.Runtime.XmlCollation
---@param value System.DateTime
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:AddDateTimeSortKey(collation, value)end
---@param collation System.Xml.Xsl.Runtime.XmlCollation
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:AddEmptySortKey(collation)end
---@return System.Void
function System.Xml.Xsl.Runtime.XmlSortKeyAccumulator:FinishSortKeys()end
---@class System.Xml.Xsl.Runtime.XsltConvert : System.Object
System.Xml.Xsl.Runtime.XsltConvert = {}
---@type System.Xml.Xsl.Runtime.XsltConvert
CS.System.Xml.Xsl.Runtime.XsltConvert = System.Xml.Xsl.Runtime.XsltConvert

---@overload fun(listItems:System.Collections.Generic.IList):System.Boolean
---@param item System.Xml.XPath.XPathItem
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltConvert.ToBoolean(item)end
---@overload fun(value:System.Int64):System.Double
---@overload fun(value:System.String):System.Double
---@overload fun(item:System.Xml.XPath.XPathItem):System.Double
---@overload fun(listItems:System.Collections.Generic.IList):System.Double
---@overload fun(value:System.Decimal):System.Double
---@param value System.Int32
---@return System.Double
function System.Xml.Xsl.Runtime.XsltConvert.ToDouble(value)end
---@overload fun(listItems:System.Collections.Generic.IList):System.Xml.XPath.XPathNavigator
---@param item System.Xml.XPath.XPathItem
---@return System.Xml.XPath.XPathNavigator
function System.Xml.Xsl.Runtime.XsltConvert.ToNode(item)end
---@overload fun(listItems:System.Collections.Generic.IList):System.Collections.Generic.IList
---@param item System.Xml.XPath.XPathItem
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.XsltConvert.ToNodeSet(item)end
---@overload fun(item:System.Xml.XPath.XPathItem):System.String
---@overload fun(listItems:System.Collections.Generic.IList):System.String
---@overload fun(value:System.DateTime):System.String
---@param value System.Double
---@return System.String
function System.Xml.Xsl.Runtime.XsltConvert.ToString(value)end
---@param value System.Double
---@return System.Decimal
function System.Xml.Xsl.Runtime.XsltConvert.ToDecimal(value)end
---@param value System.Double
---@return System.Int32
function System.Xml.Xsl.Runtime.XsltConvert.ToInt(value)end
---@param value System.Double
---@return System.Int64
function System.Xml.Xsl.Runtime.XsltConvert.ToLong(value)end
---@param value System.String
---@return System.DateTime
function System.Xml.Xsl.Runtime.XsltConvert.ToDateTime(value)end
---@param listItems System.Collections.Generic.IList
---@return System.Collections.Generic.IList
function System.Xml.Xsl.Runtime.XsltConvert.EnsureNodeSet(listItems)end
---@class System.Xml.Xsl.Runtime.XsltFunctions : System.Object
System.Xml.Xsl.Runtime.XsltFunctions = {}
---@type System.Xml.Xsl.Runtime.XsltFunctions
CS.System.Xml.Xsl.Runtime.XsltFunctions = System.Xml.Xsl.Runtime.XsltFunctions

---@param s1 System.String
---@param s2 System.String
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltFunctions.StartsWith(s1, s2)end
---@param s1 System.String
---@param s2 System.String
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltFunctions.Contains(s1, s2)end
---@param s1 System.String
---@param s2 System.String
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.SubstringBefore(s1, s2)end
---@param s1 System.String
---@param s2 System.String
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.SubstringAfter(s1, s2)end
---@overload fun(value:System.String, startIndex:System.Double, length:System.Double):System.String
---@param value System.String
---@param startIndex System.Double
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.Substring(value, startIndex)end
---@param value System.String
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.NormalizeSpace(value)end
---@param arg System.String
---@param mapString System.String
---@param transString System.String
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.Translate(arg, mapString, transString)end
---@param value System.String
---@param context System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltFunctions.Lang(value, context)end
---@param value System.Double
---@return System.Double
function System.Xml.Xsl.Runtime.XsltFunctions.Round(value)end
---@param name System.Xml.XmlQualifiedName
---@return System.Xml.XPath.XPathItem
function System.Xml.Xsl.Runtime.XsltFunctions.SystemProperty(name)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.BaseUri(navigator)end
---@param navigator System.Xml.XPath.XPathNavigator
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.OuterXml(navigator)end
---@param value System.Collections.Generic.IList
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.EXslObjectType(value)end
---@param value System.Collections.Generic.IList
---@return System.Double
function System.Xml.Xsl.Runtime.XsltFunctions.MSNumber(value)end
---@param dateTime System.String
---@param format System.String
---@param lang System.String
---@param isDate System.Boolean
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.MSFormatDateTime(dateTime, format, lang, isDate)end
---@param s1 System.String
---@param s2 System.String
---@param lang System.String
---@param options System.String
---@return System.Double
function System.Xml.Xsl.Runtime.XsltFunctions.MSStringCompare(s1, s2, lang, options)end
---@param dateTime System.String
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.MSUtc(dateTime)end
---@param name System.String
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.MSLocalName(name)end
---@param name System.String
---@param currentNode System.Xml.XPath.XPathNavigator
---@return System.String
function System.Xml.Xsl.Runtime.XsltFunctions.MSNamespaceUri(name, currentNode)end
---@class System.Xml.Xsl.Runtime.XsltLibrary : System.Object
System.Xml.Xsl.Runtime.XsltLibrary = {}
---@type System.Xml.Xsl.Runtime.XsltLibrary
CS.System.Xml.Xsl.Runtime.XsltLibrary = System.Xml.Xsl.Runtime.XsltLibrary

---@param res System.String
---@param args System.Collections.Generic.IList
---@return System.String
function System.Xml.Xsl.Runtime.XsltLibrary:FormatMessage(res, args)end
---@param nsUri System.String
---@return System.Int32
function System.Xml.Xsl.Runtime.XsltLibrary:CheckScriptNamespace(nsUri)end
---@param name System.Xml.XmlQualifiedName
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltLibrary:ElementAvailable(name)end
---@param name System.Xml.XmlQualifiedName
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltLibrary:FunctionAvailable(name)end
---@param name System.Xml.XmlQualifiedName
---@param infinitySymbol System.String
---@param nanSymbol System.String
---@param characters System.String
---@return System.Int32
function System.Xml.Xsl.Runtime.XsltLibrary:RegisterDecimalFormat(name, infinitySymbol, nanSymbol, characters)end
---@param formatPicture System.String
---@param infinitySymbol System.String
---@param nanSymbol System.String
---@param characters System.String
---@return System.Double
function System.Xml.Xsl.Runtime.XsltLibrary:RegisterDecimalFormatter(formatPicture, infinitySymbol, nanSymbol, characters)end
---@param value System.Double
---@param decimalFormatterIndex System.Double
---@return System.String
function System.Xml.Xsl.Runtime.XsltLibrary:FormatNumberStatic(value, decimalFormatterIndex)end
---@param value System.Double
---@param formatPicture System.String
---@param decimalFormatName System.Xml.XmlQualifiedName
---@param errorMessageName System.String
---@return System.String
function System.Xml.Xsl.Runtime.XsltLibrary:FormatNumberDynamic(value, formatPicture, decimalFormatName, errorMessageName)end
---@param value System.Collections.Generic.IList
---@param formatString System.String
---@param lang System.Double
---@param letterValue System.String
---@param groupingSeparator System.String
---@param groupingSize System.Double
---@return System.String
function System.Xml.Xsl.Runtime.XsltLibrary:NumberFormat(value, formatString, lang, letterValue, groupingSeparator, groupingSize)end
---@param lang System.String
---@param forwardCompatibility System.Boolean
---@return System.Int32
function System.Xml.Xsl.Runtime.XsltLibrary:LangToLcid(lang, forwardCompatibility)end
---@param opCode System.Double
---@param left System.Collections.Generic.IList
---@param right System.Collections.Generic.IList
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltLibrary:EqualityOperator(opCode, left, right)end
---@param opCode System.Double
---@param left System.Collections.Generic.IList
---@param right System.Collections.Generic.IList
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltLibrary:RelationalOperator(opCode, left, right)end
---@param nav1 System.Xml.XPath.XPathNavigator
---@param nav2 System.Xml.XPath.XPathNavigator
---@return System.Boolean
function System.Xml.Xsl.Runtime.XsltLibrary:IsSameNodeSort(nav1, nav2)end
