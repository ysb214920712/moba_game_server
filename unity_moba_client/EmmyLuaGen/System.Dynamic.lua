---@class System.Dynamic.BinaryOperationBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public Operation System.Linq.Expressions.ExpressionType @  getter
System.Dynamic.BinaryOperationBinder = {}
---@type System.Dynamic.BinaryOperationBinder
CS.System.Dynamic.BinaryOperationBinder = System.Dynamic.BinaryOperationBinder

---@overload fun(target:System.Dynamic.DynamicMetaObject, arg:System.Dynamic.DynamicMetaObject, errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param arg System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.BinaryOperationBinder:FallbackBinaryOperation(target, arg)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.BinaryOperationBinder:Bind(target, args)end
---@class System.Dynamic.BindingRestrictions : System.Object
---@field public Empty System.Dynamic.BindingRestrictions
System.Dynamic.BindingRestrictions = {}
---@type System.Dynamic.BindingRestrictions
CS.System.Dynamic.BindingRestrictions = System.Dynamic.BindingRestrictions

---@param restrictions System.Dynamic.BindingRestrictions
---@return System.Dynamic.BindingRestrictions
function System.Dynamic.BindingRestrictions:Merge(restrictions)end
---@param expression System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Dynamic.BindingRestrictions
function System.Dynamic.BindingRestrictions.GetTypeRestriction(expression, type)end
---@param expression System.Linq.Expressions.Expression
---@param instance System.Object
---@return System.Dynamic.BindingRestrictions
function System.Dynamic.BindingRestrictions.GetInstanceRestriction(expression, instance)end
---@param expression System.Linq.Expressions.Expression
---@return System.Dynamic.BindingRestrictions
function System.Dynamic.BindingRestrictions.GetExpressionRestriction(expression)end
---@param contributingObjects System.Collections.Generic.IList
---@return System.Dynamic.BindingRestrictions
function System.Dynamic.BindingRestrictions.Combine(contributingObjects)end
---@return System.Linq.Expressions.Expression
function System.Dynamic.BindingRestrictions:ToExpression()end
---@class System.Dynamic.CallInfo : System.Object
---@field public ArgumentCount System.Int32 @  getter
---@field public ArgumentNames System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Dynamic.CallInfo = {}
---@type System.Dynamic.CallInfo
CS.System.Dynamic.CallInfo = System.Dynamic.CallInfo

---@return System.Int32
function System.Dynamic.CallInfo:GetHashCode()end
---@param obj System.Object
---@return System.Boolean
function System.Dynamic.CallInfo:Equals(obj)end
---@class System.Dynamic.ConvertBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public Type System.Type @  getter
---@field public Explicit System.Boolean @  getter
---@field public ReturnType System.Type @  getter
System.Dynamic.ConvertBinder = {}
---@type System.Dynamic.ConvertBinder
CS.System.Dynamic.ConvertBinder = System.Dynamic.ConvertBinder

---@overload fun(target:System.Dynamic.DynamicMetaObject, errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.ConvertBinder:FallbackConvert(target)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.ConvertBinder:Bind(target, args)end
---@class System.Dynamic.CreateInstanceBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public CallInfo System.Dynamic.CallInfo @  getter
System.Dynamic.CreateInstanceBinder = {}
---@type System.Dynamic.CreateInstanceBinder
CS.System.Dynamic.CreateInstanceBinder = System.Dynamic.CreateInstanceBinder

---@overload fun(target:System.Dynamic.DynamicMetaObject, args:System.Dynamic.DynamicMetaObject[], errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.CreateInstanceBinder:FallbackCreateInstance(target, args)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.CreateInstanceBinder:Bind(target, args)end
---@class System.Dynamic.DeleteIndexBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public CallInfo System.Dynamic.CallInfo @  getter
System.Dynamic.DeleteIndexBinder = {}
---@type System.Dynamic.DeleteIndexBinder
CS.System.Dynamic.DeleteIndexBinder = System.Dynamic.DeleteIndexBinder

---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DeleteIndexBinder:Bind(target, args)end
---@overload fun(target:System.Dynamic.DynamicMetaObject, indexes:System.Dynamic.DynamicMetaObject[], errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param indexes System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DeleteIndexBinder:FallbackDeleteIndex(target, indexes)end
---@class System.Dynamic.DeleteMemberBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public Name System.String @  getter
---@field public IgnoreCase System.Boolean @  getter
---@field public ReturnType System.Type @  getter
System.Dynamic.DeleteMemberBinder = {}
---@type System.Dynamic.DeleteMemberBinder
CS.System.Dynamic.DeleteMemberBinder = System.Dynamic.DeleteMemberBinder

---@overload fun(target:System.Dynamic.DynamicMetaObject, errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DeleteMemberBinder:FallbackDeleteMember(target)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DeleteMemberBinder:Bind(target, args)end
---@class System.Dynamic.DynamicMetaObject : System.Object
---@field public Expression System.Linq.Expressions.Expression @  getter
---@field public Restrictions System.Dynamic.BindingRestrictions @  getter
---@field public Value System.Object @  getter
---@field public HasValue System.Boolean @  getter
---@field public RuntimeType System.Type @  getter
---@field public LimitType System.Type @  getter
---@field public EmptyMetaObjects System.Dynamic.DynamicMetaObject[]
System.Dynamic.DynamicMetaObject = {}
---@type System.Dynamic.DynamicMetaObject
CS.System.Dynamic.DynamicMetaObject = System.Dynamic.DynamicMetaObject

---@param binder System.Dynamic.ConvertBinder
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindConvert(binder)end
---@param binder System.Dynamic.GetMemberBinder
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindGetMember(binder)end
---@param binder System.Dynamic.SetMemberBinder
---@param value System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindSetMember(binder, value)end
---@param binder System.Dynamic.DeleteMemberBinder
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindDeleteMember(binder)end
---@param binder System.Dynamic.GetIndexBinder
---@param indexes System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindGetIndex(binder, indexes)end
---@param binder System.Dynamic.SetIndexBinder
---@param indexes System.Dynamic.DynamicMetaObject[]
---@param value System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindSetIndex(binder, indexes, value)end
---@param binder System.Dynamic.DeleteIndexBinder
---@param indexes System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindDeleteIndex(binder, indexes)end
---@param binder System.Dynamic.InvokeMemberBinder
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindInvokeMember(binder, args)end
---@param binder System.Dynamic.InvokeBinder
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindInvoke(binder, args)end
---@param binder System.Dynamic.CreateInstanceBinder
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindCreateInstance(binder, args)end
---@param binder System.Dynamic.UnaryOperationBinder
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindUnaryOperation(binder)end
---@param binder System.Dynamic.BinaryOperationBinder
---@param arg System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject:BindBinaryOperation(binder, arg)end
---@return System.Collections.Generic.IEnumerable
function System.Dynamic.DynamicMetaObject:GetDynamicMemberNames()end
---@param value System.Object
---@param expression System.Linq.Expressions.Expression
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObject.Create(value, expression)end
---@class System.Dynamic.DynamicMetaObjectBinder : System.Runtime.CompilerServices.CallSiteBinder
---@field public ReturnType System.Type @  getter
System.Dynamic.DynamicMetaObjectBinder = {}
---@type System.Dynamic.DynamicMetaObjectBinder
CS.System.Dynamic.DynamicMetaObjectBinder = System.Dynamic.DynamicMetaObjectBinder

---@overload fun(args:System.Object[], parameters:System.Collections.ObjectModel.ReadOnlyCollection, returnLabel:System.Linq.Expressions.LabelTarget):System.Linq.Expressions.Expression
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObjectBinder:Bind(target, args)end
---@param type System.Type
---@return System.Linq.Expressions.Expression
function System.Dynamic.DynamicMetaObjectBinder:GetUpdateExpression(type)end
---@overload fun(target:System.Dynamic.DynamicMetaObject, args:System.Dynamic.DynamicMetaObject[]):System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicMetaObjectBinder:Defer(args)end
---@class System.Dynamic.DynamicObject : System.Object
System.Dynamic.DynamicObject = {}
---@type System.Dynamic.DynamicObject
CS.System.Dynamic.DynamicObject = System.Dynamic.DynamicObject

---@param binder System.Dynamic.GetMemberBinder
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryGetMember(binder, result)end
---@param binder System.Dynamic.SetMemberBinder
---@param value System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TrySetMember(binder, value)end
---@param binder System.Dynamic.DeleteMemberBinder
---@return System.Boolean
function System.Dynamic.DynamicObject:TryDeleteMember(binder)end
---@param binder System.Dynamic.InvokeMemberBinder
---@param args System.Object[]
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryInvokeMember(binder, args, result)end
---@param binder System.Dynamic.ConvertBinder
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryConvert(binder, result)end
---@param binder System.Dynamic.CreateInstanceBinder
---@param args System.Object[]
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryCreateInstance(binder, args, result)end
---@param binder System.Dynamic.InvokeBinder
---@param args System.Object[]
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryInvoke(binder, args, result)end
---@param binder System.Dynamic.BinaryOperationBinder
---@param arg System.Object
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryBinaryOperation(binder, arg, result)end
---@param binder System.Dynamic.UnaryOperationBinder
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryUnaryOperation(binder, result)end
---@param binder System.Dynamic.GetIndexBinder
---@param indexes System.Object[]
---@param result System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TryGetIndex(binder, indexes, result)end
---@param binder System.Dynamic.SetIndexBinder
---@param indexes System.Object[]
---@param value System.Object
---@return System.Boolean
function System.Dynamic.DynamicObject:TrySetIndex(binder, indexes, value)end
---@param binder System.Dynamic.DeleteIndexBinder
---@param indexes System.Object[]
---@return System.Boolean
function System.Dynamic.DynamicObject:TryDeleteIndex(binder, indexes)end
---@return System.Collections.Generic.IEnumerable
function System.Dynamic.DynamicObject:GetDynamicMemberNames()end
---@param parameter System.Linq.Expressions.Expression
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.DynamicObject:GetMetaObject(parameter)end
---@class System.Dynamic.ExpandoObject : System.Object
System.Dynamic.ExpandoObject = {}
---@type System.Dynamic.ExpandoObject
CS.System.Dynamic.ExpandoObject = System.Dynamic.ExpandoObject

---@class System.Dynamic.GetIndexBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public CallInfo System.Dynamic.CallInfo @  getter
System.Dynamic.GetIndexBinder = {}
---@type System.Dynamic.GetIndexBinder
CS.System.Dynamic.GetIndexBinder = System.Dynamic.GetIndexBinder

---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.GetIndexBinder:Bind(target, args)end
---@overload fun(target:System.Dynamic.DynamicMetaObject, indexes:System.Dynamic.DynamicMetaObject[], errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param indexes System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.GetIndexBinder:FallbackGetIndex(target, indexes)end
---@class System.Dynamic.GetMemberBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public Name System.String @  getter
---@field public IgnoreCase System.Boolean @  getter
System.Dynamic.GetMemberBinder = {}
---@type System.Dynamic.GetMemberBinder
CS.System.Dynamic.GetMemberBinder = System.Dynamic.GetMemberBinder

---@overload fun(target:System.Dynamic.DynamicMetaObject, errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.GetMemberBinder:FallbackGetMember(target)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.GetMemberBinder:Bind(target, args)end
---@class System.Dynamic.InvokeBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public CallInfo System.Dynamic.CallInfo @  getter
System.Dynamic.InvokeBinder = {}
---@type System.Dynamic.InvokeBinder
CS.System.Dynamic.InvokeBinder = System.Dynamic.InvokeBinder

---@overload fun(target:System.Dynamic.DynamicMetaObject, args:System.Dynamic.DynamicMetaObject[], errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.InvokeBinder:FallbackInvoke(target, args)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.InvokeBinder:Bind(target, args)end
---@class System.Dynamic.InvokeMemberBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public Name System.String @  getter
---@field public IgnoreCase System.Boolean @  getter
---@field public CallInfo System.Dynamic.CallInfo @  getter
System.Dynamic.InvokeMemberBinder = {}
---@type System.Dynamic.InvokeMemberBinder
CS.System.Dynamic.InvokeMemberBinder = System.Dynamic.InvokeMemberBinder

---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.InvokeMemberBinder:Bind(target, args)end
---@overload fun(target:System.Dynamic.DynamicMetaObject, args:System.Dynamic.DynamicMetaObject[], errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.InvokeMemberBinder:FallbackInvokeMember(target, args)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@param errorSuggestion System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.InvokeMemberBinder:FallbackInvoke(target, args, errorSuggestion)end
---@class System.Dynamic.SetIndexBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public CallInfo System.Dynamic.CallInfo @  getter
System.Dynamic.SetIndexBinder = {}
---@type System.Dynamic.SetIndexBinder
CS.System.Dynamic.SetIndexBinder = System.Dynamic.SetIndexBinder

---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.SetIndexBinder:Bind(target, args)end
---@overload fun(target:System.Dynamic.DynamicMetaObject, indexes:System.Dynamic.DynamicMetaObject[], value:System.Dynamic.DynamicMetaObject, errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param indexes System.Dynamic.DynamicMetaObject[]
---@param value System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.SetIndexBinder:FallbackSetIndex(target, indexes, value)end
---@class System.Dynamic.SetMemberBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public Name System.String @  getter
---@field public IgnoreCase System.Boolean @  getter
System.Dynamic.SetMemberBinder = {}
---@type System.Dynamic.SetMemberBinder
CS.System.Dynamic.SetMemberBinder = System.Dynamic.SetMemberBinder

---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.SetMemberBinder:Bind(target, args)end
---@overload fun(target:System.Dynamic.DynamicMetaObject, value:System.Dynamic.DynamicMetaObject, errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@param value System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.SetMemberBinder:FallbackSetMember(target, value)end
---@class System.Dynamic.UnaryOperationBinder : System.Dynamic.DynamicMetaObjectBinder
---@field public ReturnType System.Type @  getter
---@field public Operation System.Linq.Expressions.ExpressionType @  getter
System.Dynamic.UnaryOperationBinder = {}
---@type System.Dynamic.UnaryOperationBinder
CS.System.Dynamic.UnaryOperationBinder = System.Dynamic.UnaryOperationBinder

---@overload fun(target:System.Dynamic.DynamicMetaObject, errorSuggestion:System.Dynamic.DynamicMetaObject):System.Dynamic.DynamicMetaObject
---@param target System.Dynamic.DynamicMetaObject
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.UnaryOperationBinder:FallbackUnaryOperation(target)end
---@param target System.Dynamic.DynamicMetaObject
---@param args System.Dynamic.DynamicMetaObject[]
---@return System.Dynamic.DynamicMetaObject
function System.Dynamic.UnaryOperationBinder:Bind(target, args)end
