---@class System.Linq.Expressions.BinaryExpression : System.Linq.Expressions.Expression
---@field public CanReduce System.Boolean @  getter
---@field public Right System.Linq.Expressions.Expression @  getter
---@field public Left System.Linq.Expressions.Expression @  getter
---@field public Method System.Reflection.MethodInfo @  getter
---@field public Conversion System.Linq.Expressions.LambdaExpression @  getter
---@field public IsLifted System.Boolean @  getter
---@field public IsLiftedToNull System.Boolean @  getter
System.Linq.Expressions.BinaryExpression = {}
---@type System.Linq.Expressions.BinaryExpression
CS.System.Linq.Expressions.BinaryExpression = System.Linq.Expressions.BinaryExpression

---@param left System.Linq.Expressions.Expression
---@param conversion System.Linq.Expressions.LambdaExpression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.BinaryExpression:Update(left, conversion, right)end
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.BinaryExpression:Reduce()end
---@class System.Linq.Expressions.Expression : System.Object
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Type System.Type @  getter
---@field public CanReduce System.Boolean @  getter
System.Linq.Expressions.Expression = {}
---@type System.Linq.Expressions.Expression
CS.System.Linq.Expressions.Expression = System.Linq.Expressions.Expression

---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Assign(left, right)end
---@overload fun(binaryType:System.Linq.Expressions.ExpressionType, left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(binaryType:System.Linq.Expressions.ExpressionType, left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param binaryType System.Linq.Expressions.ExpressionType
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.MakeBinary(binaryType, left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Equal(left, right)end
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.ReferenceEqual(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.NotEqual(left, right)end
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.ReferenceNotEqual(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.GreaterThan(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.LessThan(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.GreaterThanOrEqual(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, liftToNull:System.Boolean, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.LessThanOrEqual(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.AndAlso(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.OrElse(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Coalesce(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Add(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.AddAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.AddAssignChecked(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.AddChecked(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Subtract(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.SubtractAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.SubtractAssignChecked(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.SubtractChecked(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Divide(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.DivideAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Modulo(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.ModuloAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Multiply(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.MultiplyAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.MultiplyAssignChecked(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.MultiplyChecked(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.LeftShift(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.LeftShiftAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.RightShift(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.RightShiftAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.And(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.AndAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Or(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.OrAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.ExclusiveOr(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.ExclusiveOrAssign(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.Power(left, right)end
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.BinaryExpression
---@overload fun(left:System.Linq.Expressions.Expression, right:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, conversion:System.Linq.Expressions.LambdaExpression):System.Linq.Expressions.BinaryExpression
---@param left System.Linq.Expressions.Expression
---@param right System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.PowerAssign(left, right)end
---@overload fun(array:System.Linq.Expressions.Expression, indexes:System.Linq.Expressions.Expression[]):System.Linq.Expressions.MethodCallExpression
---@overload fun(array:System.Linq.Expressions.Expression, indexes:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MethodCallExpression
---@param array System.Linq.Expressions.Expression
---@param index System.Linq.Expressions.Expression
---@return System.Linq.Expressions.BinaryExpression
function System.Linq.Expressions.Expression.ArrayIndex(array, index)end
---@overload fun(expressions:System.Collections.Generic.IEnumerable):System.Linq.Expressions.BlockExpression
---@overload fun(arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression):System.Linq.Expressions.BlockExpression
---@overload fun(type:System.Type, expressions:System.Linq.Expressions.Expression[]):System.Linq.Expressions.BlockExpression
---@overload fun(type:System.Type, expressions:System.Collections.Generic.IEnumerable):System.Linq.Expressions.BlockExpression
---@overload fun(variables:System.Collections.Generic.IEnumerable, expressions:System.Linq.Expressions.Expression[]):System.Linq.Expressions.BlockExpression
---@overload fun(variables:System.Collections.Generic.IEnumerable, expressions:System.Collections.Generic.IEnumerable):System.Linq.Expressions.BlockExpression
---@overload fun(arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression):System.Linq.Expressions.BlockExpression
---@overload fun(type:System.Type, variables:System.Collections.Generic.IEnumerable, expressions:System.Linq.Expressions.Expression[]):System.Linq.Expressions.BlockExpression
---@overload fun(type:System.Type, variables:System.Collections.Generic.IEnumerable, expressions:System.Collections.Generic.IEnumerable):System.Linq.Expressions.BlockExpression
---@overload fun(arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression):System.Linq.Expressions.BlockExpression
---@overload fun(arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression, arg4:System.Linq.Expressions.Expression):System.Linq.Expressions.BlockExpression
---@param expressions System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.BlockExpression
function System.Linq.Expressions.Expression.Block(expressions)end
---@overload fun(variable:System.Linq.Expressions.ParameterExpression, body:System.Linq.Expressions.Expression):System.Linq.Expressions.CatchBlock
---@overload fun(type:System.Type, body:System.Linq.Expressions.Expression, filter:System.Linq.Expressions.Expression):System.Linq.Expressions.CatchBlock
---@overload fun(variable:System.Linq.Expressions.ParameterExpression, body:System.Linq.Expressions.Expression, filter:System.Linq.Expressions.Expression):System.Linq.Expressions.CatchBlock
---@param type System.Type
---@param body System.Linq.Expressions.Expression
---@return System.Linq.Expressions.CatchBlock
function System.Linq.Expressions.Expression.Catch(type, body)end
---@param type System.Type
---@param variable System.Linq.Expressions.ParameterExpression
---@param body System.Linq.Expressions.Expression
---@param filter System.Linq.Expressions.Expression
---@return System.Linq.Expressions.CatchBlock
function System.Linq.Expressions.Expression.MakeCatchBlock(type, variable, body, filter)end
---@overload fun(test:System.Linq.Expressions.Expression, ifTrue:System.Linq.Expressions.Expression, ifFalse:System.Linq.Expressions.Expression, type:System.Type):System.Linq.Expressions.ConditionalExpression
---@param test System.Linq.Expressions.Expression
---@param ifTrue System.Linq.Expressions.Expression
---@param ifFalse System.Linq.Expressions.Expression
---@return System.Linq.Expressions.ConditionalExpression
function System.Linq.Expressions.Expression.Condition(test, ifTrue, ifFalse)end
---@param test System.Linq.Expressions.Expression
---@param ifTrue System.Linq.Expressions.Expression
---@return System.Linq.Expressions.ConditionalExpression
function System.Linq.Expressions.Expression.IfThen(test, ifTrue)end
---@param test System.Linq.Expressions.Expression
---@param ifTrue System.Linq.Expressions.Expression
---@param ifFalse System.Linq.Expressions.Expression
---@return System.Linq.Expressions.ConditionalExpression
function System.Linq.Expressions.Expression.IfThenElse(test, ifTrue, ifFalse)end
---@overload fun(value:System.Object, type:System.Type):System.Linq.Expressions.ConstantExpression
---@param value System.Object
---@return System.Linq.Expressions.ConstantExpression
function System.Linq.Expressions.Expression.Constant(value)end
---@param document System.Linq.Expressions.SymbolDocumentInfo
---@param startLine System.Int32
---@param startColumn System.Int32
---@param endLine System.Int32
---@param endColumn System.Int32
---@return System.Linq.Expressions.DebugInfoExpression
function System.Linq.Expressions.Expression.DebugInfo(document, startLine, startColumn, endLine, endColumn)end
---@param document System.Linq.Expressions.SymbolDocumentInfo
---@return System.Linq.Expressions.DebugInfoExpression
function System.Linq.Expressions.Expression.ClearDebugInfo(document)end
---@return System.Linq.Expressions.DefaultExpression
function System.Linq.Expressions.Expression.Empty()end
---@param type System.Type
---@return System.Linq.Expressions.DefaultExpression
function System.Linq.Expressions.Expression.Default(type)end
---@overload fun(addMethod:System.Reflection.MethodInfo, arguments:System.Collections.Generic.IEnumerable):System.Linq.Expressions.ElementInit
---@param addMethod System.Reflection.MethodInfo
---@param arguments System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.ElementInit
function System.Linq.Expressions.Expression.ElementInit(addMethod, arguments)end
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.Expression:Reduce()end
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.Expression:ReduceAndCheck()end
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.Expression:ReduceExtensions()end
---@return System.String
function System.Linq.Expressions.Expression:ToString()end
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@param binder System.Runtime.CompilerServices.CallSiteBinder
---@param returnType System.Type
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.DynamicExpression
function System.Linq.Expressions.Expression.Dynamic(binder, returnType, arguments)end
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@param delegateType System.Type
---@param binder System.Runtime.CompilerServices.CallSiteBinder
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.DynamicExpression
function System.Linq.Expressions.Expression.MakeDynamic(delegateType, binder, arguments)end
---@overload fun(target:System.Linq.Expressions.LabelTarget, value:System.Linq.Expressions.Expression):System.Linq.Expressions.GotoExpression
---@overload fun(target:System.Linq.Expressions.LabelTarget, type:System.Type):System.Linq.Expressions.GotoExpression
---@overload fun(target:System.Linq.Expressions.LabelTarget, value:System.Linq.Expressions.Expression, type:System.Type):System.Linq.Expressions.GotoExpression
---@param target System.Linq.Expressions.LabelTarget
---@return System.Linq.Expressions.GotoExpression
function System.Linq.Expressions.Expression.Break(target)end
---@overload fun(target:System.Linq.Expressions.LabelTarget, type:System.Type):System.Linq.Expressions.GotoExpression
---@param target System.Linq.Expressions.LabelTarget
---@return System.Linq.Expressions.GotoExpression
function System.Linq.Expressions.Expression.Continue(target)end
---@overload fun(target:System.Linq.Expressions.LabelTarget, type:System.Type):System.Linq.Expressions.GotoExpression
---@overload fun(target:System.Linq.Expressions.LabelTarget, value:System.Linq.Expressions.Expression):System.Linq.Expressions.GotoExpression
---@overload fun(target:System.Linq.Expressions.LabelTarget, value:System.Linq.Expressions.Expression, type:System.Type):System.Linq.Expressions.GotoExpression
---@param target System.Linq.Expressions.LabelTarget
---@return System.Linq.Expressions.GotoExpression
function System.Linq.Expressions.Expression.Return(target)end
---@overload fun(target:System.Linq.Expressions.LabelTarget, type:System.Type):System.Linq.Expressions.GotoExpression
---@overload fun(target:System.Linq.Expressions.LabelTarget, value:System.Linq.Expressions.Expression):System.Linq.Expressions.GotoExpression
---@overload fun(target:System.Linq.Expressions.LabelTarget, value:System.Linq.Expressions.Expression, type:System.Type):System.Linq.Expressions.GotoExpression
---@param target System.Linq.Expressions.LabelTarget
---@return System.Linq.Expressions.GotoExpression
function System.Linq.Expressions.Expression.Goto(target)end
---@param kind System.Linq.Expressions.GotoExpressionKind
---@param target System.Linq.Expressions.LabelTarget
---@param value System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.GotoExpression
function System.Linq.Expressions.Expression.MakeGoto(kind, target, value, type)end
---@param instance System.Linq.Expressions.Expression
---@param indexer System.Reflection.PropertyInfo
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.IndexExpression
function System.Linq.Expressions.Expression.MakeIndex(instance, indexer, arguments)end
---@overload fun(array:System.Linq.Expressions.Expression, indexes:System.Collections.Generic.IEnumerable):System.Linq.Expressions.IndexExpression
---@param array System.Linq.Expressions.Expression
---@param indexes System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.IndexExpression
function System.Linq.Expressions.Expression.ArrayAccess(array, indexes)end
---@overload fun(expression:System.Linq.Expressions.Expression, property:System.Reflection.PropertyInfo):System.Linq.Expressions.MemberExpression
---@overload fun(expression:System.Linq.Expressions.Expression, propertyAccessor:System.Reflection.MethodInfo):System.Linq.Expressions.MemberExpression
---@overload fun(instance:System.Linq.Expressions.Expression, propertyName:System.String, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.IndexExpression
---@overload fun(instance:System.Linq.Expressions.Expression, indexer:System.Reflection.PropertyInfo, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.IndexExpression
---@overload fun(instance:System.Linq.Expressions.Expression, indexer:System.Reflection.PropertyInfo, arguments:System.Collections.Generic.IEnumerable):System.Linq.Expressions.IndexExpression
---@overload fun(expression:System.Linq.Expressions.Expression, type:System.Type, propertyName:System.String):System.Linq.Expressions.MemberExpression
---@param expression System.Linq.Expressions.Expression
---@param propertyName System.String
---@return System.Linq.Expressions.MemberExpression
function System.Linq.Expressions.Expression.Property(expression, propertyName)end
---@overload fun(expression:System.Linq.Expressions.Expression, arguments:System.Collections.Generic.IEnumerable):System.Linq.Expressions.InvocationExpression
---@param expression System.Linq.Expressions.Expression
---@param arguments System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.InvocationExpression
function System.Linq.Expressions.Expression.Invoke(expression, arguments)end
---@overload fun(target:System.Linq.Expressions.LabelTarget):System.Linq.Expressions.LabelExpression
---@overload fun(name:System.String):System.Linq.Expressions.LabelTarget
---@overload fun(type:System.Type):System.Linq.Expressions.LabelTarget
---@overload fun(target:System.Linq.Expressions.LabelTarget, defaultValue:System.Linq.Expressions.Expression):System.Linq.Expressions.LabelExpression
---@overload fun(type:System.Type, name:System.String):System.Linq.Expressions.LabelTarget
---@return System.Linq.Expressions.LabelTarget
function System.Linq.Expressions.Expression.Label()end
---@overload fun(body:System.Linq.Expressions.Expression, parameters:System.Collections.Generic.IEnumerable):any
---@overload fun(body:System.Linq.Expressions.Expression, parameters:System.Linq.Expressions.ParameterExpression[]):System.Linq.Expressions.LambdaExpression
---@overload fun(body:System.Linq.Expressions.Expression, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@overload fun(body:System.Linq.Expressions.Expression, tailCall:System.Boolean, parameters:System.Linq.Expressions.ParameterExpression[]):any
---@overload fun(body:System.Linq.Expressions.Expression, tailCall:System.Boolean, parameters:System.Collections.Generic.IEnumerable):any
---@overload fun(body:System.Linq.Expressions.Expression, tailCall:System.Boolean, parameters:System.Linq.Expressions.ParameterExpression[]):System.Linq.Expressions.LambdaExpression
---@overload fun(body:System.Linq.Expressions.Expression, tailCall:System.Boolean, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@overload fun(body:System.Linq.Expressions.Expression, name:System.String, parameters:System.Collections.Generic.IEnumerable):any
---@overload fun(delegateType:System.Type, body:System.Linq.Expressions.Expression, parameters:System.Linq.Expressions.ParameterExpression[]):System.Linq.Expressions.LambdaExpression
---@overload fun(delegateType:System.Type, body:System.Linq.Expressions.Expression, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@overload fun(body:System.Linq.Expressions.Expression, name:System.String, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@overload fun(body:System.Linq.Expressions.Expression, name:System.String, tailCall:System.Boolean, parameters:System.Collections.Generic.IEnumerable):any
---@overload fun(delegateType:System.Type, body:System.Linq.Expressions.Expression, tailCall:System.Boolean, parameters:System.Linq.Expressions.ParameterExpression[]):System.Linq.Expressions.LambdaExpression
---@overload fun(delegateType:System.Type, body:System.Linq.Expressions.Expression, tailCall:System.Boolean, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@overload fun(body:System.Linq.Expressions.Expression, name:System.String, tailCall:System.Boolean, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@overload fun(delegateType:System.Type, body:System.Linq.Expressions.Expression, name:System.String, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@overload fun(delegateType:System.Type, body:System.Linq.Expressions.Expression, name:System.String, tailCall:System.Boolean, parameters:System.Collections.Generic.IEnumerable):System.Linq.Expressions.LambdaExpression
---@param body System.Linq.Expressions.Expression
---@param parameters System.Linq.Expressions.ParameterExpression[]
---@return any
function System.Linq.Expressions.Expression.Lambda(body, parameters)end
---@param typeArgs System.Type[]
---@return System.Type
function System.Linq.Expressions.Expression.GetFuncType(typeArgs)end
---@param typeArgs System.Type[]
---@param funcType System.Type
---@return System.Boolean
function System.Linq.Expressions.Expression.TryGetFuncType(typeArgs, funcType)end
---@param typeArgs System.Type[]
---@return System.Type
function System.Linq.Expressions.Expression.GetActionType(typeArgs)end
---@param typeArgs System.Type[]
---@param actionType System.Type
---@return System.Boolean
function System.Linq.Expressions.Expression.TryGetActionType(typeArgs, actionType)end
---@param typeArgs System.Type[]
---@return System.Type
function System.Linq.Expressions.Expression.GetDelegateType(typeArgs)end
---@overload fun(newExpression:System.Linq.Expressions.NewExpression, initializers:System.Collections.Generic.IEnumerable):System.Linq.Expressions.ListInitExpression
---@overload fun(newExpression:System.Linq.Expressions.NewExpression, initializers:System.Linq.Expressions.ElementInit[]):System.Linq.Expressions.ListInitExpression
---@overload fun(newExpression:System.Linq.Expressions.NewExpression, initializers:System.Collections.Generic.IEnumerable):System.Linq.Expressions.ListInitExpression
---@overload fun(newExpression:System.Linq.Expressions.NewExpression, addMethod:System.Reflection.MethodInfo, initializers:System.Linq.Expressions.Expression[]):System.Linq.Expressions.ListInitExpression
---@overload fun(newExpression:System.Linq.Expressions.NewExpression, addMethod:System.Reflection.MethodInfo, initializers:System.Collections.Generic.IEnumerable):System.Linq.Expressions.ListInitExpression
---@param newExpression System.Linq.Expressions.NewExpression
---@param initializers System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.ListInitExpression
function System.Linq.Expressions.Expression.ListInit(newExpression, initializers)end
---@overload fun(body:System.Linq.Expressions.Expression, break:System.Linq.Expressions.LabelTarget):System.Linq.Expressions.LoopExpression
---@overload fun(body:System.Linq.Expressions.Expression, break:System.Linq.Expressions.LabelTarget, continue:System.Linq.Expressions.LabelTarget):System.Linq.Expressions.LoopExpression
---@param body System.Linq.Expressions.Expression
---@return System.Linq.Expressions.LoopExpression
function System.Linq.Expressions.Expression.Loop(body)end
---@overload fun(propertyAccessor:System.Reflection.MethodInfo, expression:System.Linq.Expressions.Expression):System.Linq.Expressions.MemberAssignment
---@param member System.Reflection.MemberInfo
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.MemberAssignment
function System.Linq.Expressions.Expression.Bind(member, expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, fieldName:System.String):System.Linq.Expressions.MemberExpression
---@overload fun(expression:System.Linq.Expressions.Expression, type:System.Type, fieldName:System.String):System.Linq.Expressions.MemberExpression
---@param expression System.Linq.Expressions.Expression
---@param field System.Reflection.FieldInfo
---@return System.Linq.Expressions.MemberExpression
function System.Linq.Expressions.Expression.Field(expression, field)end
---@param expression System.Linq.Expressions.Expression
---@param propertyOrFieldName System.String
---@return System.Linq.Expressions.MemberExpression
function System.Linq.Expressions.Expression.PropertyOrField(expression, propertyOrFieldName)end
---@param expression System.Linq.Expressions.Expression
---@param member System.Reflection.MemberInfo
---@return System.Linq.Expressions.MemberExpression
function System.Linq.Expressions.Expression.MakeMemberAccess(expression, member)end
---@overload fun(newExpression:System.Linq.Expressions.NewExpression, bindings:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MemberInitExpression
---@param newExpression System.Linq.Expressions.NewExpression
---@param bindings System.Linq.Expressions.MemberBinding[]
---@return System.Linq.Expressions.MemberInitExpression
function System.Linq.Expressions.Expression.MemberInit(newExpression, bindings)end
---@overload fun(member:System.Reflection.MemberInfo, initializers:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MemberListBinding
---@overload fun(propertyAccessor:System.Reflection.MethodInfo, initializers:System.Linq.Expressions.ElementInit[]):System.Linq.Expressions.MemberListBinding
---@overload fun(propertyAccessor:System.Reflection.MethodInfo, initializers:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MemberListBinding
---@param member System.Reflection.MemberInfo
---@param initializers System.Linq.Expressions.ElementInit[]
---@return System.Linq.Expressions.MemberListBinding
function System.Linq.Expressions.Expression.ListBind(member, initializers)end
---@overload fun(member:System.Reflection.MemberInfo, bindings:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MemberMemberBinding
---@overload fun(propertyAccessor:System.Reflection.MethodInfo, bindings:System.Linq.Expressions.MemberBinding[]):System.Linq.Expressions.MemberMemberBinding
---@overload fun(propertyAccessor:System.Reflection.MethodInfo, bindings:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MemberMemberBinding
---@param member System.Reflection.MemberInfo
---@param bindings System.Linq.Expressions.MemberBinding[]
---@return System.Linq.Expressions.MemberMemberBinding
function System.Linq.Expressions.Expression.MemberBind(member, bindings)end
---@overload fun(method:System.Reflection.MethodInfo, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.MethodCallExpression
---@overload fun(method:System.Reflection.MethodInfo, arguments:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MethodCallExpression
---@overload fun(instance:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.MethodCallExpression
---@overload fun(method:System.Reflection.MethodInfo, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression):System.Linq.Expressions.MethodCallExpression
---@overload fun(instance:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.MethodCallExpression
---@overload fun(instance:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, arguments:System.Collections.Generic.IEnumerable):System.Linq.Expressions.MethodCallExpression
---@overload fun(method:System.Reflection.MethodInfo, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression):System.Linq.Expressions.MethodCallExpression
---@overload fun(instance:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression):System.Linq.Expressions.MethodCallExpression
---@overload fun(instance:System.Linq.Expressions.Expression, methodName:System.String, typeArguments:System.Type[], arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.MethodCallExpression
---@overload fun(type:System.Type, methodName:System.String, typeArguments:System.Type[], arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.MethodCallExpression
---@overload fun(method:System.Reflection.MethodInfo, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression):System.Linq.Expressions.MethodCallExpression
---@overload fun(instance:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression):System.Linq.Expressions.MethodCallExpression
---@overload fun(method:System.Reflection.MethodInfo, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression, arg4:System.Linq.Expressions.Expression):System.Linq.Expressions.MethodCallExpression
---@param method System.Reflection.MethodInfo
---@param arg0 System.Linq.Expressions.Expression
---@return System.Linq.Expressions.MethodCallExpression
function System.Linq.Expressions.Expression.Call(method, arg0)end
---@overload fun(type:System.Type, initializers:System.Collections.Generic.IEnumerable):System.Linq.Expressions.NewArrayExpression
---@param type System.Type
---@param initializers System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.NewArrayExpression
function System.Linq.Expressions.Expression.NewArrayInit(type, initializers)end
---@overload fun(type:System.Type, bounds:System.Collections.Generic.IEnumerable):System.Linq.Expressions.NewArrayExpression
---@param type System.Type
---@param bounds System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.NewArrayExpression
function System.Linq.Expressions.Expression.NewArrayBounds(type, bounds)end
---@overload fun(type:System.Type):System.Linq.Expressions.NewExpression
---@overload fun(constructor:System.Reflection.ConstructorInfo, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.NewExpression
---@overload fun(constructor:System.Reflection.ConstructorInfo, arguments:System.Collections.Generic.IEnumerable):System.Linq.Expressions.NewExpression
---@overload fun(constructor:System.Reflection.ConstructorInfo, arguments:System.Collections.Generic.IEnumerable, members:System.Collections.Generic.IEnumerable):System.Linq.Expressions.NewExpression
---@overload fun(constructor:System.Reflection.ConstructorInfo, arguments:System.Collections.Generic.IEnumerable, members:System.Reflection.MemberInfo[]):System.Linq.Expressions.NewExpression
---@param constructor System.Reflection.ConstructorInfo
---@return System.Linq.Expressions.NewExpression
function System.Linq.Expressions.Expression.New(constructor)end
---@overload fun(type:System.Type, name:System.String):System.Linq.Expressions.ParameterExpression
---@param type System.Type
---@return System.Linq.Expressions.ParameterExpression
function System.Linq.Expressions.Expression.Parameter(type)end
---@overload fun(type:System.Type, name:System.String):System.Linq.Expressions.ParameterExpression
---@param type System.Type
---@return System.Linq.Expressions.ParameterExpression
function System.Linq.Expressions.Expression.Variable(type)end
---@overload fun(variables:System.Collections.Generic.IEnumerable):System.Linq.Expressions.RuntimeVariablesExpression
---@param variables System.Linq.Expressions.ParameterExpression[]
---@return System.Linq.Expressions.RuntimeVariablesExpression
function System.Linq.Expressions.Expression.RuntimeVariables(variables)end
---@overload fun(body:System.Linq.Expressions.Expression, testValues:System.Collections.Generic.IEnumerable):System.Linq.Expressions.SwitchCase
---@param body System.Linq.Expressions.Expression
---@param testValues System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.SwitchCase
function System.Linq.Expressions.Expression.SwitchCase(body, testValues)end
---@overload fun(switchValue:System.Linq.Expressions.Expression, defaultBody:System.Linq.Expressions.Expression, cases:System.Linq.Expressions.SwitchCase[]):System.Linq.Expressions.SwitchExpression
---@overload fun(switchValue:System.Linq.Expressions.Expression, defaultBody:System.Linq.Expressions.Expression, comparison:System.Reflection.MethodInfo, cases:System.Linq.Expressions.SwitchCase[]):System.Linq.Expressions.SwitchExpression
---@overload fun(switchValue:System.Linq.Expressions.Expression, defaultBody:System.Linq.Expressions.Expression, comparison:System.Reflection.MethodInfo, cases:System.Collections.Generic.IEnumerable):System.Linq.Expressions.SwitchExpression
---@overload fun(type:System.Type, switchValue:System.Linq.Expressions.Expression, defaultBody:System.Linq.Expressions.Expression, comparison:System.Reflection.MethodInfo, cases:System.Linq.Expressions.SwitchCase[]):System.Linq.Expressions.SwitchExpression
---@overload fun(type:System.Type, switchValue:System.Linq.Expressions.Expression, defaultBody:System.Linq.Expressions.Expression, comparison:System.Reflection.MethodInfo, cases:System.Collections.Generic.IEnumerable):System.Linq.Expressions.SwitchExpression
---@param switchValue System.Linq.Expressions.Expression
---@param cases System.Linq.Expressions.SwitchCase[]
---@return System.Linq.Expressions.SwitchExpression
function System.Linq.Expressions.Expression.Switch(switchValue, cases)end
---@overload fun(fileName:System.String, language:System.Guid):System.Linq.Expressions.SymbolDocumentInfo
---@overload fun(fileName:System.String, language:System.Guid, languageVendor:System.Guid):System.Linq.Expressions.SymbolDocumentInfo
---@overload fun(fileName:System.String, language:System.Guid, languageVendor:System.Guid, documentType:System.Guid):System.Linq.Expressions.SymbolDocumentInfo
---@param fileName System.String
---@return System.Linq.Expressions.SymbolDocumentInfo
function System.Linq.Expressions.Expression.SymbolDocument(fileName)end
---@param body System.Linq.Expressions.Expression
---@param fault System.Linq.Expressions.Expression
---@return System.Linq.Expressions.TryExpression
function System.Linq.Expressions.Expression.TryFault(body, fault)end
---@param body System.Linq.Expressions.Expression
---@param finally System.Linq.Expressions.Expression
---@return System.Linq.Expressions.TryExpression
function System.Linq.Expressions.Expression.TryFinally(body, finally)end
---@param body System.Linq.Expressions.Expression
---@param handlers System.Linq.Expressions.CatchBlock[]
---@return System.Linq.Expressions.TryExpression
function System.Linq.Expressions.Expression.TryCatch(body, handlers)end
---@param body System.Linq.Expressions.Expression
---@param finally System.Linq.Expressions.Expression
---@param handlers System.Linq.Expressions.CatchBlock[]
---@return System.Linq.Expressions.TryExpression
function System.Linq.Expressions.Expression.TryCatchFinally(body, finally, handlers)end
---@param type System.Type
---@param body System.Linq.Expressions.Expression
---@param finally System.Linq.Expressions.Expression
---@param fault System.Linq.Expressions.Expression
---@param handlers System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.TryExpression
function System.Linq.Expressions.Expression.MakeTry(type, body, finally, fault, handlers)end
---@param expression System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.TypeBinaryExpression
function System.Linq.Expressions.Expression.TypeIs(expression, type)end
---@param expression System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.TypeBinaryExpression
function System.Linq.Expressions.Expression.TypeEqual(expression, type)end
---@overload fun(unaryType:System.Linq.Expressions.ExpressionType, operand:System.Linq.Expressions.Expression, type:System.Type, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param unaryType System.Linq.Expressions.ExpressionType
---@param operand System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.MakeUnary(unaryType, operand, type)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Negate(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.UnaryPlus(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.NegateChecked(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Not(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.IsFalse(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.IsTrue(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.OnesComplement(expression)end
---@param expression System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.TypeAs(expression, type)end
---@param expression System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Unbox(expression, type)end
---@overload fun(expression:System.Linq.Expressions.Expression, type:System.Type, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Convert(expression, type)end
---@overload fun(expression:System.Linq.Expressions.Expression, type:System.Type, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@param type System.Type
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.ConvertChecked(expression, type)end
---@param array System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.ArrayLength(array)end
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Quote(expression)end
---@overload fun(type:System.Type):System.Linq.Expressions.UnaryExpression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Rethrow()end
---@overload fun(value:System.Linq.Expressions.Expression, type:System.Type):System.Linq.Expressions.UnaryExpression
---@param value System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Throw(value)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Increment(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.Decrement(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.PreIncrementAssign(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.PreDecrementAssign(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.PostIncrementAssign(expression)end
---@overload fun(expression:System.Linq.Expressions.Expression, method:System.Reflection.MethodInfo):System.Linq.Expressions.UnaryExpression
---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.Expression.PostDecrementAssign(expression)end
---@class System.Linq.Expressions.BlockExpression : System.Linq.Expressions.Expression
---@field public Expressions System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public Variables System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public Result System.Linq.Expressions.Expression @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Type System.Type @  getter
System.Linq.Expressions.BlockExpression = {}
---@type System.Linq.Expressions.BlockExpression
CS.System.Linq.Expressions.BlockExpression = System.Linq.Expressions.BlockExpression

---@param variables System.Collections.Generic.IEnumerable
---@param expressions System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.BlockExpression
function System.Linq.Expressions.BlockExpression:Update(variables, expressions)end
---@class System.Linq.Expressions.CatchBlock : System.Object
---@field public Variable System.Linq.Expressions.ParameterExpression @  getter
---@field public Test System.Type @  getter
---@field public Body System.Linq.Expressions.Expression @  getter
---@field public Filter System.Linq.Expressions.Expression @  getter
System.Linq.Expressions.CatchBlock = {}
---@type System.Linq.Expressions.CatchBlock
CS.System.Linq.Expressions.CatchBlock = System.Linq.Expressions.CatchBlock

---@return System.String
function System.Linq.Expressions.CatchBlock:ToString()end
---@param variable System.Linq.Expressions.ParameterExpression
---@param filter System.Linq.Expressions.Expression
---@param body System.Linq.Expressions.Expression
---@return System.Linq.Expressions.CatchBlock
function System.Linq.Expressions.CatchBlock:Update(variable, filter, body)end
---@class System.Linq.Expressions.ConditionalExpression : System.Linq.Expressions.Expression
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Type System.Type @  getter
---@field public Test System.Linq.Expressions.Expression @  getter
---@field public IfTrue System.Linq.Expressions.Expression @  getter
---@field public IfFalse System.Linq.Expressions.Expression @  getter
System.Linq.Expressions.ConditionalExpression = {}
---@type System.Linq.Expressions.ConditionalExpression
CS.System.Linq.Expressions.ConditionalExpression = System.Linq.Expressions.ConditionalExpression

---@param test System.Linq.Expressions.Expression
---@param ifTrue System.Linq.Expressions.Expression
---@param ifFalse System.Linq.Expressions.Expression
---@return System.Linq.Expressions.ConditionalExpression
function System.Linq.Expressions.ConditionalExpression:Update(test, ifTrue, ifFalse)end
---@class System.Linq.Expressions.ConstantExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Value System.Object @  getter
System.Linq.Expressions.ConstantExpression = {}
---@type System.Linq.Expressions.ConstantExpression
CS.System.Linq.Expressions.ConstantExpression = System.Linq.Expressions.ConstantExpression

---@class System.Linq.Expressions.DebugInfoExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public StartLine System.Int32 @  getter
---@field public StartColumn System.Int32 @  getter
---@field public EndLine System.Int32 @  getter
---@field public EndColumn System.Int32 @  getter
---@field public Document System.Linq.Expressions.SymbolDocumentInfo @  getter
---@field public IsClear System.Boolean @  getter
System.Linq.Expressions.DebugInfoExpression = {}
---@type System.Linq.Expressions.DebugInfoExpression
CS.System.Linq.Expressions.DebugInfoExpression = System.Linq.Expressions.DebugInfoExpression

---@class System.Linq.Expressions.DefaultExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
System.Linq.Expressions.DefaultExpression = {}
---@type System.Linq.Expressions.DefaultExpression
CS.System.Linq.Expressions.DefaultExpression = System.Linq.Expressions.DefaultExpression

---@class System.Linq.Expressions.DynamicExpression : System.Linq.Expressions.Expression
---@field public CanReduce System.Boolean @  getter
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Binder System.Runtime.CompilerServices.CallSiteBinder @  getter
---@field public DelegateType System.Type @  getter
---@field public Arguments System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.DynamicExpression = {}
---@type System.Linq.Expressions.DynamicExpression
CS.System.Linq.Expressions.DynamicExpression = System.Linq.Expressions.DynamicExpression

---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.DynamicExpression:Reduce()end
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.DynamicExpression
function System.Linq.Expressions.DynamicExpression:Update(arguments)end
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arguments:System.Collections.Generic.IEnumerable):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(binder:System.Runtime.CompilerServices.CallSiteBinder, returnType:System.Type, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@param binder System.Runtime.CompilerServices.CallSiteBinder
---@param returnType System.Type
---@param arguments System.Linq.Expressions.Expression[]
---@return System.Linq.Expressions.DynamicExpression
function System.Linq.Expressions.DynamicExpression.Dynamic(binder, returnType, arguments)end
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arguments:System.Linq.Expressions.Expression[]):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@overload fun(delegateType:System.Type, binder:System.Runtime.CompilerServices.CallSiteBinder, arg0:System.Linq.Expressions.Expression, arg1:System.Linq.Expressions.Expression, arg2:System.Linq.Expressions.Expression, arg3:System.Linq.Expressions.Expression):System.Linq.Expressions.DynamicExpression
---@param delegateType System.Type
---@param binder System.Runtime.CompilerServices.CallSiteBinder
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.DynamicExpression
function System.Linq.Expressions.DynamicExpression.MakeDynamic(delegateType, binder, arguments)end
---@class System.Linq.Expressions.DynamicExpressionVisitor : System.Linq.Expressions.ExpressionVisitor
System.Linq.Expressions.DynamicExpressionVisitor = {}
---@type System.Linq.Expressions.DynamicExpressionVisitor
CS.System.Linq.Expressions.DynamicExpressionVisitor = System.Linq.Expressions.DynamicExpressionVisitor

---@class System.Linq.Expressions.ElementInit : System.Object
---@field public AddMethod System.Reflection.MethodInfo @  getter
---@field public Arguments System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public ArgumentCount System.Int32 @  getter
System.Linq.Expressions.ElementInit = {}
---@type System.Linq.Expressions.ElementInit
CS.System.Linq.Expressions.ElementInit = System.Linq.Expressions.ElementInit

---@param index System.Int32
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.ElementInit:GetArgument(index)end
---@return System.String
function System.Linq.Expressions.ElementInit:ToString()end
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.ElementInit
function System.Linq.Expressions.ElementInit:Update(arguments)end
---@class System.Linq.Expressions.ExpressionType : System.Enum
System.Linq.Expressions.ExpressionType = {}
---@type System.Linq.Expressions.ExpressionType
CS.System.Linq.Expressions.ExpressionType = System.Linq.Expressions.ExpressionType

---@return System.Int32 value:0
System.Linq.Expressions.ExpressionType.Add = 0
---@return System.Int32 value:1
System.Linq.Expressions.ExpressionType.AddChecked = 1
---@return System.Int32 value:2
System.Linq.Expressions.ExpressionType.And = 2
---@return System.Int32 value:3
System.Linq.Expressions.ExpressionType.AndAlso = 3
---@return System.Int32 value:4
System.Linq.Expressions.ExpressionType.ArrayLength = 4
---@return System.Int32 value:5
System.Linq.Expressions.ExpressionType.ArrayIndex = 5
---@return System.Int32 value:6
System.Linq.Expressions.ExpressionType.Call = 6
---@return System.Int32 value:7
System.Linq.Expressions.ExpressionType.Coalesce = 7
---@return System.Int32 value:8
System.Linq.Expressions.ExpressionType.Conditional = 8
---@return System.Int32 value:9
System.Linq.Expressions.ExpressionType.Constant = 9
---@return System.Int32 value:10
System.Linq.Expressions.ExpressionType.Convert = 10
---@return System.Int32 value:11
System.Linq.Expressions.ExpressionType.ConvertChecked = 11
---@return System.Int32 value:12
System.Linq.Expressions.ExpressionType.Divide = 12
---@return System.Int32 value:13
System.Linq.Expressions.ExpressionType.Equal = 13
---@return System.Int32 value:14
System.Linq.Expressions.ExpressionType.ExclusiveOr = 14
---@return System.Int32 value:15
System.Linq.Expressions.ExpressionType.GreaterThan = 15
---@return System.Int32 value:16
System.Linq.Expressions.ExpressionType.GreaterThanOrEqual = 16
---@return System.Int32 value:17
System.Linq.Expressions.ExpressionType.Invoke = 17
---@return System.Int32 value:18
System.Linq.Expressions.ExpressionType.Lambda = 18
---@return System.Int32 value:19
System.Linq.Expressions.ExpressionType.LeftShift = 19
---@return System.Int32 value:20
System.Linq.Expressions.ExpressionType.LessThan = 20
---@return System.Int32 value:21
System.Linq.Expressions.ExpressionType.LessThanOrEqual = 21
---@return System.Int32 value:22
System.Linq.Expressions.ExpressionType.ListInit = 22
---@return System.Int32 value:23
System.Linq.Expressions.ExpressionType.MemberAccess = 23
---@return System.Int32 value:24
System.Linq.Expressions.ExpressionType.MemberInit = 24
---@return System.Int32 value:25
System.Linq.Expressions.ExpressionType.Modulo = 25
---@return System.Int32 value:26
System.Linq.Expressions.ExpressionType.Multiply = 26
---@return System.Int32 value:27
System.Linq.Expressions.ExpressionType.MultiplyChecked = 27
---@return System.Int32 value:28
System.Linq.Expressions.ExpressionType.Negate = 28
---@return System.Int32 value:29
System.Linq.Expressions.ExpressionType.UnaryPlus = 29
---@return System.Int32 value:30
System.Linq.Expressions.ExpressionType.NegateChecked = 30
---@return System.Int32 value:31
System.Linq.Expressions.ExpressionType.New = 31
---@return System.Int32 value:32
System.Linq.Expressions.ExpressionType.NewArrayInit = 32
---@return System.Int32 value:33
System.Linq.Expressions.ExpressionType.NewArrayBounds = 33
---@return System.Int32 value:34
System.Linq.Expressions.ExpressionType.Not = 34
---@return System.Int32 value:35
System.Linq.Expressions.ExpressionType.NotEqual = 35
---@return System.Int32 value:36
System.Linq.Expressions.ExpressionType.Or = 36
---@return System.Int32 value:37
System.Linq.Expressions.ExpressionType.OrElse = 37
---@return System.Int32 value:38
System.Linq.Expressions.ExpressionType.Parameter = 38
---@return System.Int32 value:39
System.Linq.Expressions.ExpressionType.Power = 39
---@return System.Int32 value:40
System.Linq.Expressions.ExpressionType.Quote = 40
---@return System.Int32 value:41
System.Linq.Expressions.ExpressionType.RightShift = 41
---@return System.Int32 value:42
System.Linq.Expressions.ExpressionType.Subtract = 42
---@return System.Int32 value:43
System.Linq.Expressions.ExpressionType.SubtractChecked = 43
---@return System.Int32 value:44
System.Linq.Expressions.ExpressionType.TypeAs = 44
---@return System.Int32 value:45
System.Linq.Expressions.ExpressionType.TypeIs = 45
---@return System.Int32 value:46
System.Linq.Expressions.ExpressionType.Assign = 46
---@return System.Int32 value:47
System.Linq.Expressions.ExpressionType.Block = 47
---@return System.Int32 value:48
System.Linq.Expressions.ExpressionType.DebugInfo = 48
---@return System.Int32 value:49
System.Linq.Expressions.ExpressionType.Decrement = 49
---@return System.Int32 value:50
System.Linq.Expressions.ExpressionType.Dynamic = 50
---@return System.Int32 value:51
System.Linq.Expressions.ExpressionType.Default = 51
---@return System.Int32 value:52
System.Linq.Expressions.ExpressionType.Extension = 52
---@return System.Int32 value:53
System.Linq.Expressions.ExpressionType.Goto = 53
---@return System.Int32 value:54
System.Linq.Expressions.ExpressionType.Increment = 54
---@return System.Int32 value:55
System.Linq.Expressions.ExpressionType.Index = 55
---@return System.Int32 value:56
System.Linq.Expressions.ExpressionType.Label = 56
---@return System.Int32 value:57
System.Linq.Expressions.ExpressionType.RuntimeVariables = 57
---@return System.Int32 value:58
System.Linq.Expressions.ExpressionType.Loop = 58
---@return System.Int32 value:59
System.Linq.Expressions.ExpressionType.Switch = 59
---@return System.Int32 value:60
System.Linq.Expressions.ExpressionType.Throw = 60
---@return System.Int32 value:61
System.Linq.Expressions.ExpressionType.Try = 61
---@return System.Int32 value:62
System.Linq.Expressions.ExpressionType.Unbox = 62
---@return System.Int32 value:63
System.Linq.Expressions.ExpressionType.AddAssign = 63
---@return System.Int32 value:64
System.Linq.Expressions.ExpressionType.AndAssign = 64
---@return System.Int32 value:65
System.Linq.Expressions.ExpressionType.DivideAssign = 65
---@return System.Int32 value:66
System.Linq.Expressions.ExpressionType.ExclusiveOrAssign = 66
---@return System.Int32 value:67
System.Linq.Expressions.ExpressionType.LeftShiftAssign = 67
---@return System.Int32 value:68
System.Linq.Expressions.ExpressionType.ModuloAssign = 68
---@return System.Int32 value:69
System.Linq.Expressions.ExpressionType.MultiplyAssign = 69
---@return System.Int32 value:70
System.Linq.Expressions.ExpressionType.OrAssign = 70
---@return System.Int32 value:71
System.Linq.Expressions.ExpressionType.PowerAssign = 71
---@return System.Int32 value:72
System.Linq.Expressions.ExpressionType.RightShiftAssign = 72
---@return System.Int32 value:73
System.Linq.Expressions.ExpressionType.SubtractAssign = 73
---@return System.Int32 value:74
System.Linq.Expressions.ExpressionType.AddAssignChecked = 74
---@return System.Int32 value:75
System.Linq.Expressions.ExpressionType.MultiplyAssignChecked = 75
---@return System.Int32 value:76
System.Linq.Expressions.ExpressionType.SubtractAssignChecked = 76
---@return System.Int32 value:77
System.Linq.Expressions.ExpressionType.PreIncrementAssign = 77
---@return System.Int32 value:78
System.Linq.Expressions.ExpressionType.PreDecrementAssign = 78
---@return System.Int32 value:79
System.Linq.Expressions.ExpressionType.PostIncrementAssign = 79
---@return System.Int32 value:80
System.Linq.Expressions.ExpressionType.PostDecrementAssign = 80
---@return System.Int32 value:81
System.Linq.Expressions.ExpressionType.TypeEqual = 81
---@return System.Int32 value:82
System.Linq.Expressions.ExpressionType.OnesComplement = 82
---@return System.Int32 value:83
System.Linq.Expressions.ExpressionType.IsTrue = 83
---@return System.Int32 value:84
System.Linq.Expressions.ExpressionType.IsFalse = 84

---@class System.Linq.Expressions.ExpressionVisitor : System.Object
System.Linq.Expressions.ExpressionVisitor = {}
---@type System.Linq.Expressions.ExpressionVisitor
CS.System.Linq.Expressions.ExpressionVisitor = System.Linq.Expressions.ExpressionVisitor

---@overload fun(nodes:System.Collections.ObjectModel.ReadOnlyCollection):System.Collections.ObjectModel.ReadOnlyCollection
---@param node System.Linq.Expressions.Expression
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.ExpressionVisitor:Visit(node)end
---@param nodes any
---@param elementVisitor any
---@return any
function System.Linq.Expressions.ExpressionVisitor.Visit(nodes, elementVisitor)end
---@overload fun(nodes:any, callerName:System.String):any
---@param node any
---@param callerName System.String
---@return any
function System.Linq.Expressions.ExpressionVisitor:VisitAndConvert(node, callerName)end
---@class System.Linq.Expressions.GotoExpressionKind : System.Enum
System.Linq.Expressions.GotoExpressionKind = {}
---@type System.Linq.Expressions.GotoExpressionKind
CS.System.Linq.Expressions.GotoExpressionKind = System.Linq.Expressions.GotoExpressionKind

---@return System.Int32 value:0
System.Linq.Expressions.GotoExpressionKind.Goto = 0
---@return System.Int32 value:1
System.Linq.Expressions.GotoExpressionKind.Return = 1
---@return System.Int32 value:2
System.Linq.Expressions.GotoExpressionKind.Break = 2
---@return System.Int32 value:3
System.Linq.Expressions.GotoExpressionKind.Continue = 3

---@class System.Linq.Expressions.GotoExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Value System.Linq.Expressions.Expression @  getter
---@field public Target System.Linq.Expressions.LabelTarget @  getter
---@field public Kind System.Linq.Expressions.GotoExpressionKind @  getter
System.Linq.Expressions.GotoExpression = {}
---@type System.Linq.Expressions.GotoExpression
CS.System.Linq.Expressions.GotoExpression = System.Linq.Expressions.GotoExpression

---@param target System.Linq.Expressions.LabelTarget
---@param value System.Linq.Expressions.Expression
---@return System.Linq.Expressions.GotoExpression
function System.Linq.Expressions.GotoExpression:Update(target, value)end
---@class System.Linq.Expressions.IndexExpression : System.Linq.Expressions.Expression
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Type System.Type @  getter
---@field public Object System.Linq.Expressions.Expression @  getter
---@field public Indexer System.Reflection.PropertyInfo @  getter
---@field public Arguments System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public ArgumentCount System.Int32 @  getter
System.Linq.Expressions.IndexExpression = {}
---@type System.Linq.Expressions.IndexExpression
CS.System.Linq.Expressions.IndexExpression = System.Linq.Expressions.IndexExpression

---@param object System.Linq.Expressions.Expression
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.IndexExpression
function System.Linq.Expressions.IndexExpression:Update(object, arguments)end
---@param index System.Int32
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.IndexExpression:GetArgument(index)end
---@class System.Linq.Expressions.InvocationExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Expression System.Linq.Expressions.Expression @  getter
---@field public Arguments System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public ArgumentCount System.Int32 @  getter
System.Linq.Expressions.InvocationExpression = {}
---@type System.Linq.Expressions.InvocationExpression
CS.System.Linq.Expressions.InvocationExpression = System.Linq.Expressions.InvocationExpression

---@param expression System.Linq.Expressions.Expression
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.InvocationExpression
function System.Linq.Expressions.InvocationExpression:Update(expression, arguments)end
---@param index System.Int32
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.InvocationExpression:GetArgument(index)end
---@class System.Linq.Expressions.LabelExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Target System.Linq.Expressions.LabelTarget @  getter
---@field public DefaultValue System.Linq.Expressions.Expression @  getter
System.Linq.Expressions.LabelExpression = {}
---@type System.Linq.Expressions.LabelExpression
CS.System.Linq.Expressions.LabelExpression = System.Linq.Expressions.LabelExpression

---@param target System.Linq.Expressions.LabelTarget
---@param defaultValue System.Linq.Expressions.Expression
---@return System.Linq.Expressions.LabelExpression
function System.Linq.Expressions.LabelExpression:Update(target, defaultValue)end
---@class System.Linq.Expressions.LabelTarget : System.Object
---@field public Name System.String @  getter
---@field public Type System.Type @  getter
System.Linq.Expressions.LabelTarget = {}
---@type System.Linq.Expressions.LabelTarget
CS.System.Linq.Expressions.LabelTarget = System.Linq.Expressions.LabelTarget

---@return System.String
function System.Linq.Expressions.LabelTarget:ToString()end
---@class System.Linq.Expressions.LambdaExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Parameters System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public Name System.String @  getter
---@field public Body System.Linq.Expressions.Expression @  getter
---@field public ReturnType System.Type @  getter
---@field public TailCall System.Boolean @  getter
System.Linq.Expressions.LambdaExpression = {}
---@type System.Linq.Expressions.LambdaExpression
CS.System.Linq.Expressions.LambdaExpression = System.Linq.Expressions.LambdaExpression

---@overload fun(preferInterpretation:System.Boolean):System.Delegate
---@overload fun(debugInfoGenerator:System.Runtime.CompilerServices.DebugInfoGenerator):System.Delegate
---@return System.Delegate
function System.Linq.Expressions.LambdaExpression:Compile()end
---@overload fun(method:System.Reflection.Emit.MethodBuilder, debugInfoGenerator:System.Runtime.CompilerServices.DebugInfoGenerator):System.Void
---@param method System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Linq.Expressions.LambdaExpression:CompileToMethod(method)end
---@class System.Linq.Expressions.Expression : System.Linq.Expressions.LambdaExpression
System.Linq.Expressions.Expression = {}
---@type System.Linq.Expressions.Expression
CS.System.Linq.Expressions.Expression = System.Linq.Expressions.Expression

---@overload fun(preferInterpretation:System.Boolean):any
---@overload fun(debugInfoGenerator:System.Runtime.CompilerServices.DebugInfoGenerator):any
---@return any
function System.Linq.Expressions.Expression:Compile()end
---@param body System.Linq.Expressions.Expression
---@param parameters System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.Expression:Update(body, parameters)end
---@class System.Linq.Expressions.ListInitExpression : System.Linq.Expressions.Expression
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Type System.Type @  getter
---@field public CanReduce System.Boolean @  getter
---@field public NewExpression System.Linq.Expressions.NewExpression @  getter
---@field public Initializers System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.ListInitExpression = {}
---@type System.Linq.Expressions.ListInitExpression
CS.System.Linq.Expressions.ListInitExpression = System.Linq.Expressions.ListInitExpression

---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.ListInitExpression:Reduce()end
---@param newExpression System.Linq.Expressions.NewExpression
---@param initializers System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.ListInitExpression
function System.Linq.Expressions.ListInitExpression:Update(newExpression, initializers)end
---@class System.Linq.Expressions.LoopExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Body System.Linq.Expressions.Expression @  getter
---@field public BreakLabel System.Linq.Expressions.LabelTarget @  getter
---@field public ContinueLabel System.Linq.Expressions.LabelTarget @  getter
System.Linq.Expressions.LoopExpression = {}
---@type System.Linq.Expressions.LoopExpression
CS.System.Linq.Expressions.LoopExpression = System.Linq.Expressions.LoopExpression

---@param breakLabel System.Linq.Expressions.LabelTarget
---@param continueLabel System.Linq.Expressions.LabelTarget
---@param body System.Linq.Expressions.Expression
---@return System.Linq.Expressions.LoopExpression
function System.Linq.Expressions.LoopExpression:Update(breakLabel, continueLabel, body)end
---@class System.Linq.Expressions.MemberAssignment : System.Linq.Expressions.MemberBinding
---@field public Expression System.Linq.Expressions.Expression @  getter
System.Linq.Expressions.MemberAssignment = {}
---@type System.Linq.Expressions.MemberAssignment
CS.System.Linq.Expressions.MemberAssignment = System.Linq.Expressions.MemberAssignment

---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.MemberAssignment
function System.Linq.Expressions.MemberAssignment:Update(expression)end
---@class System.Linq.Expressions.MemberBindingType : System.Enum
System.Linq.Expressions.MemberBindingType = {}
---@type System.Linq.Expressions.MemberBindingType
CS.System.Linq.Expressions.MemberBindingType = System.Linq.Expressions.MemberBindingType

---@return System.Int32 value:0
System.Linq.Expressions.MemberBindingType.Assignment = 0
---@return System.Int32 value:1
System.Linq.Expressions.MemberBindingType.MemberBinding = 1
---@return System.Int32 value:2
System.Linq.Expressions.MemberBindingType.ListBinding = 2

---@class System.Linq.Expressions.MemberBinding : System.Object
---@field public BindingType System.Linq.Expressions.MemberBindingType @  getter
---@field public Member System.Reflection.MemberInfo @  getter
System.Linq.Expressions.MemberBinding = {}
---@type System.Linq.Expressions.MemberBinding
CS.System.Linq.Expressions.MemberBinding = System.Linq.Expressions.MemberBinding

---@return System.String
function System.Linq.Expressions.MemberBinding:ToString()end
---@class System.Linq.Expressions.MemberExpression : System.Linq.Expressions.Expression
---@field public Member System.Reflection.MemberInfo @  getter
---@field public Expression System.Linq.Expressions.Expression @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
System.Linq.Expressions.MemberExpression = {}
---@type System.Linq.Expressions.MemberExpression
CS.System.Linq.Expressions.MemberExpression = System.Linq.Expressions.MemberExpression

---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.MemberExpression
function System.Linq.Expressions.MemberExpression:Update(expression)end
---@class System.Linq.Expressions.MemberInitExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public CanReduce System.Boolean @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public NewExpression System.Linq.Expressions.NewExpression @  getter
---@field public Bindings System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.MemberInitExpression = {}
---@type System.Linq.Expressions.MemberInitExpression
CS.System.Linq.Expressions.MemberInitExpression = System.Linq.Expressions.MemberInitExpression

---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.MemberInitExpression:Reduce()end
---@param newExpression System.Linq.Expressions.NewExpression
---@param bindings System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.MemberInitExpression
function System.Linq.Expressions.MemberInitExpression:Update(newExpression, bindings)end
---@class System.Linq.Expressions.MemberListBinding : System.Linq.Expressions.MemberBinding
---@field public Initializers System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.MemberListBinding = {}
---@type System.Linq.Expressions.MemberListBinding
CS.System.Linq.Expressions.MemberListBinding = System.Linq.Expressions.MemberListBinding

---@param initializers System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.MemberListBinding
function System.Linq.Expressions.MemberListBinding:Update(initializers)end
---@class System.Linq.Expressions.MemberMemberBinding : System.Linq.Expressions.MemberBinding
---@field public Bindings System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.MemberMemberBinding = {}
---@type System.Linq.Expressions.MemberMemberBinding
CS.System.Linq.Expressions.MemberMemberBinding = System.Linq.Expressions.MemberMemberBinding

---@param bindings System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.MemberMemberBinding
function System.Linq.Expressions.MemberMemberBinding:Update(bindings)end
---@class System.Linq.Expressions.MethodCallExpression : System.Linq.Expressions.Expression
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Type System.Type @  getter
---@field public Method System.Reflection.MethodInfo @  getter
---@field public Object System.Linq.Expressions.Expression @  getter
---@field public Arguments System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public ArgumentCount System.Int32 @  getter
System.Linq.Expressions.MethodCallExpression = {}
---@type System.Linq.Expressions.MethodCallExpression
CS.System.Linq.Expressions.MethodCallExpression = System.Linq.Expressions.MethodCallExpression

---@param object System.Linq.Expressions.Expression
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.MethodCallExpression
function System.Linq.Expressions.MethodCallExpression:Update(object, arguments)end
---@param index System.Int32
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.MethodCallExpression:GetArgument(index)end
---@class System.Linq.Expressions.NewArrayExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public Expressions System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.NewArrayExpression = {}
---@type System.Linq.Expressions.NewArrayExpression
CS.System.Linq.Expressions.NewArrayExpression = System.Linq.Expressions.NewArrayExpression

---@param expressions System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.NewArrayExpression
function System.Linq.Expressions.NewArrayExpression:Update(expressions)end
---@class System.Linq.Expressions.NewExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Constructor System.Reflection.ConstructorInfo @  getter
---@field public Arguments System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public ArgumentCount System.Int32 @  getter
---@field public Members System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.NewExpression = {}
---@type System.Linq.Expressions.NewExpression
CS.System.Linq.Expressions.NewExpression = System.Linq.Expressions.NewExpression

---@param index System.Int32
---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.NewExpression:GetArgument(index)end
---@param arguments System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.NewExpression
function System.Linq.Expressions.NewExpression:Update(arguments)end
---@class System.Linq.Expressions.ParameterExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Name System.String @  getter
---@field public IsByRef System.Boolean @  getter
System.Linq.Expressions.ParameterExpression = {}
---@type System.Linq.Expressions.ParameterExpression
CS.System.Linq.Expressions.ParameterExpression = System.Linq.Expressions.ParameterExpression

---@class System.Linq.Expressions.RuntimeVariablesExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Variables System.Collections.ObjectModel.ReadOnlyCollection @  getter
System.Linq.Expressions.RuntimeVariablesExpression = {}
---@type System.Linq.Expressions.RuntimeVariablesExpression
CS.System.Linq.Expressions.RuntimeVariablesExpression = System.Linq.Expressions.RuntimeVariablesExpression

---@param variables System.Collections.Generic.IEnumerable
---@return System.Linq.Expressions.RuntimeVariablesExpression
function System.Linq.Expressions.RuntimeVariablesExpression:Update(variables)end
---@class System.Linq.Expressions.SwitchCase : System.Object
---@field public TestValues System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public Body System.Linq.Expressions.Expression @  getter
System.Linq.Expressions.SwitchCase = {}
---@type System.Linq.Expressions.SwitchCase
CS.System.Linq.Expressions.SwitchCase = System.Linq.Expressions.SwitchCase

---@return System.String
function System.Linq.Expressions.SwitchCase:ToString()end
---@param testValues System.Collections.Generic.IEnumerable
---@param body System.Linq.Expressions.Expression
---@return System.Linq.Expressions.SwitchCase
function System.Linq.Expressions.SwitchCase:Update(testValues, body)end
---@class System.Linq.Expressions.SwitchExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public SwitchValue System.Linq.Expressions.Expression @  getter
---@field public Cases System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public DefaultBody System.Linq.Expressions.Expression @  getter
---@field public Comparison System.Reflection.MethodInfo @  getter
System.Linq.Expressions.SwitchExpression = {}
---@type System.Linq.Expressions.SwitchExpression
CS.System.Linq.Expressions.SwitchExpression = System.Linq.Expressions.SwitchExpression

---@param switchValue System.Linq.Expressions.Expression
---@param cases System.Collections.Generic.IEnumerable
---@param defaultBody System.Linq.Expressions.Expression
---@return System.Linq.Expressions.SwitchExpression
function System.Linq.Expressions.SwitchExpression:Update(switchValue, cases, defaultBody)end
---@class System.Linq.Expressions.SymbolDocumentInfo : System.Object
---@field public FileName System.String @  getter
---@field public Language System.Guid @  getter
---@field public LanguageVendor System.Guid @  getter
---@field public DocumentType System.Guid @  getter
System.Linq.Expressions.SymbolDocumentInfo = {}
---@type System.Linq.Expressions.SymbolDocumentInfo
CS.System.Linq.Expressions.SymbolDocumentInfo = System.Linq.Expressions.SymbolDocumentInfo

---@class System.Linq.Expressions.TryExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Body System.Linq.Expressions.Expression @  getter
---@field public Handlers System.Collections.ObjectModel.ReadOnlyCollection @  getter
---@field public Finally System.Linq.Expressions.Expression @  getter
---@field public Fault System.Linq.Expressions.Expression @  getter
System.Linq.Expressions.TryExpression = {}
---@type System.Linq.Expressions.TryExpression
CS.System.Linq.Expressions.TryExpression = System.Linq.Expressions.TryExpression

---@param body System.Linq.Expressions.Expression
---@param handlers System.Collections.Generic.IEnumerable
---@param finally System.Linq.Expressions.Expression
---@param fault System.Linq.Expressions.Expression
---@return System.Linq.Expressions.TryExpression
function System.Linq.Expressions.TryExpression:Update(body, handlers, finally, fault)end
---@class System.Linq.Expressions.TypeBinaryExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Expression System.Linq.Expressions.Expression @  getter
---@field public TypeOperand System.Type @  getter
System.Linq.Expressions.TypeBinaryExpression = {}
---@type System.Linq.Expressions.TypeBinaryExpression
CS.System.Linq.Expressions.TypeBinaryExpression = System.Linq.Expressions.TypeBinaryExpression

---@param expression System.Linq.Expressions.Expression
---@return System.Linq.Expressions.TypeBinaryExpression
function System.Linq.Expressions.TypeBinaryExpression:Update(expression)end
---@class System.Linq.Expressions.UnaryExpression : System.Linq.Expressions.Expression
---@field public Type System.Type @  getter
---@field public NodeType System.Linq.Expressions.ExpressionType @  getter
---@field public Operand System.Linq.Expressions.Expression @  getter
---@field public Method System.Reflection.MethodInfo @  getter
---@field public IsLifted System.Boolean @  getter
---@field public IsLiftedToNull System.Boolean @  getter
---@field public CanReduce System.Boolean @  getter
System.Linq.Expressions.UnaryExpression = {}
---@type System.Linq.Expressions.UnaryExpression
CS.System.Linq.Expressions.UnaryExpression = System.Linq.Expressions.UnaryExpression

---@return System.Linq.Expressions.Expression
function System.Linq.Expressions.UnaryExpression:Reduce()end
---@param operand System.Linq.Expressions.Expression
---@return System.Linq.Expressions.UnaryExpression
function System.Linq.Expressions.UnaryExpression:Update(operand)end
