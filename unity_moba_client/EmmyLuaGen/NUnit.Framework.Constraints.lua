---@class NUnit.Framework.Constraints.Constraint : System.Object
---@field public DisplayName System.String @  getter
---@field public Description System.String @ setter getter
---@field public Arguments System.Object[] @ setter getter
---@field public Builder NUnit.Framework.Constraints.ConstraintBuilder @ setter getter
---@field public And NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public With NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public Or NUnit.Framework.Constraints.ConstraintExpression @  getter
NUnit.Framework.Constraints.Constraint = {}
---@type NUnit.Framework.Constraints.Constraint
CS.NUnit.Framework.Constraints.Constraint = NUnit.Framework.Constraints.Constraint

---@overload fun(del:any):NUnit.Framework.Constraints.ConstraintResult
---@overload fun(actual:any):NUnit.Framework.Constraints.ConstraintResult
---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.Constraint:ApplyTo(actual)end
---@return System.String
function NUnit.Framework.Constraints.Constraint:ToString()end
---@param left NUnit.Framework.Constraints.Constraint
---@param right NUnit.Framework.Constraints.Constraint
---@return NUnit.Framework.Constraints.Constraint
function NUnit.Framework.Constraints.Constraint.op_BitwiseAnd(left, right)end
---@param left NUnit.Framework.Constraints.Constraint
---@param right NUnit.Framework.Constraints.Constraint
---@return NUnit.Framework.Constraints.Constraint
function NUnit.Framework.Constraints.Constraint.op_BitwiseOr(left, right)end
---@param constraint NUnit.Framework.Constraints.Constraint
---@return NUnit.Framework.Constraints.Constraint
function NUnit.Framework.Constraints.Constraint.op_LogicalNot(constraint)end
---@overload fun(delayInMilliseconds:System.Int32, pollingInterval:System.Int32):NUnit.Framework.Constraints.DelayedConstraint
---@param delayInMilliseconds System.Int32
---@return NUnit.Framework.Constraints.DelayedConstraint
function NUnit.Framework.Constraints.Constraint:After(delayInMilliseconds)end
---@class NUnit.Framework.Constraints.StringConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
---@field public IgnoreCase NUnit.Framework.Constraints.StringConstraint @  getter
NUnit.Framework.Constraints.StringConstraint = {}
---@type NUnit.Framework.Constraints.StringConstraint
CS.NUnit.Framework.Constraints.StringConstraint = NUnit.Framework.Constraints.StringConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.StringConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.SubstringConstraint : NUnit.Framework.Constraints.StringConstraint
NUnit.Framework.Constraints.SubstringConstraint = {}
---@type NUnit.Framework.Constraints.SubstringConstraint
CS.NUnit.Framework.Constraints.SubstringConstraint = NUnit.Framework.Constraints.SubstringConstraint

---@class NUnit.Framework.Constraints.PrefixConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.PrefixConstraint = {}
---@type NUnit.Framework.Constraints.PrefixConstraint
CS.NUnit.Framework.Constraints.PrefixConstraint = NUnit.Framework.Constraints.PrefixConstraint

---@class NUnit.Framework.Constraints.TypeConstraint : NUnit.Framework.Constraints.Constraint
NUnit.Framework.Constraints.TypeConstraint = {}
---@type NUnit.Framework.Constraints.TypeConstraint
CS.NUnit.Framework.Constraints.TypeConstraint = NUnit.Framework.Constraints.TypeConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.TypeConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.AssignableToConstraint : NUnit.Framework.Constraints.TypeConstraint
NUnit.Framework.Constraints.AssignableToConstraint = {}
---@type NUnit.Framework.Constraints.AssignableToConstraint
CS.NUnit.Framework.Constraints.AssignableToConstraint = NUnit.Framework.Constraints.AssignableToConstraint

---@class NUnit.Framework.Constraints.CollectionConstraint : NUnit.Framework.Constraints.Constraint
NUnit.Framework.Constraints.CollectionConstraint = {}
---@type NUnit.Framework.Constraints.CollectionConstraint
CS.NUnit.Framework.Constraints.CollectionConstraint = NUnit.Framework.Constraints.CollectionConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.CollectionConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.CollectionItemsEqualConstraint : NUnit.Framework.Constraints.CollectionConstraint
---@field public IgnoreCase NUnit.Framework.Constraints.CollectionItemsEqualConstraint @  getter
NUnit.Framework.Constraints.CollectionItemsEqualConstraint = {}
---@type NUnit.Framework.Constraints.CollectionItemsEqualConstraint
CS.NUnit.Framework.Constraints.CollectionItemsEqualConstraint = NUnit.Framework.Constraints.CollectionItemsEqualConstraint

---@overload fun(comparer:any):NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@overload fun(comparer:any):NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@overload fun(comparer:System.Collections.IEqualityComparer):NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@overload fun(comparer:any):NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@param comparer System.Collections.IComparer
---@return NUnit.Framework.Constraints.CollectionItemsEqualConstraint
function NUnit.Framework.Constraints.CollectionItemsEqualConstraint:Using(comparer)end
---@class NUnit.Framework.Constraints.UniqueItemsConstraint : NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.UniqueItemsConstraint = {}
---@type NUnit.Framework.Constraints.UniqueItemsConstraint
CS.NUnit.Framework.Constraints.UniqueItemsConstraint = NUnit.Framework.Constraints.UniqueItemsConstraint

---@class NUnit.Framework.Constraints.PathConstraint : NUnit.Framework.Constraints.StringConstraint
---@field public RespectCase NUnit.Framework.Constraints.PathConstraint @  getter
NUnit.Framework.Constraints.PathConstraint = {}
---@type NUnit.Framework.Constraints.PathConstraint
CS.NUnit.Framework.Constraints.PathConstraint = NUnit.Framework.Constraints.PathConstraint

---@class NUnit.Framework.Constraints.SamePathOrUnderConstraint : NUnit.Framework.Constraints.PathConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.SamePathOrUnderConstraint = {}
---@type NUnit.Framework.Constraints.SamePathOrUnderConstraint
CS.NUnit.Framework.Constraints.SamePathOrUnderConstraint = NUnit.Framework.Constraints.SamePathOrUnderConstraint

---@class NUnit.Framework.Constraints.NoItemConstraint : NUnit.Framework.Constraints.PrefixConstraint
---@field public DisplayName System.String @  getter
NUnit.Framework.Constraints.NoItemConstraint = {}
---@type NUnit.Framework.Constraints.NoItemConstraint
CS.NUnit.Framework.Constraints.NoItemConstraint = NUnit.Framework.Constraints.NoItemConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.NoItemConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.EndsWithConstraint : NUnit.Framework.Constraints.StringConstraint
NUnit.Framework.Constraints.EndsWithConstraint = {}
---@type NUnit.Framework.Constraints.EndsWithConstraint
CS.NUnit.Framework.Constraints.EndsWithConstraint = NUnit.Framework.Constraints.EndsWithConstraint

---@class NUnit.Framework.Constraints.ThrowsNothingConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.ThrowsNothingConstraint = {}
---@type NUnit.Framework.Constraints.ThrowsNothingConstraint
CS.NUnit.Framework.Constraints.ThrowsNothingConstraint = NUnit.Framework.Constraints.ThrowsNothingConstraint

---@overload fun(del:any):NUnit.Framework.Constraints.ConstraintResult
---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.ThrowsNothingConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.ConstraintOperator : System.Object
---@field public LeftContext System.Object @ setter getter
---@field public RightContext System.Object @ setter getter
---@field public LeftPrecedence System.Int32 @  getter
---@field public RightPrecedence System.Int32 @  getter
NUnit.Framework.Constraints.ConstraintOperator = {}
---@type NUnit.Framework.Constraints.ConstraintOperator
CS.NUnit.Framework.Constraints.ConstraintOperator = NUnit.Framework.Constraints.ConstraintOperator

---@param stack NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack
---@return System.Void
function NUnit.Framework.Constraints.ConstraintOperator:Reduce(stack)end
---@class NUnit.Framework.Constraints.BinaryOperator : NUnit.Framework.Constraints.ConstraintOperator
---@field public LeftPrecedence System.Int32 @  getter
---@field public RightPrecedence System.Int32 @  getter
NUnit.Framework.Constraints.BinaryOperator = {}
---@type NUnit.Framework.Constraints.BinaryOperator
CS.NUnit.Framework.Constraints.BinaryOperator = NUnit.Framework.Constraints.BinaryOperator

---@param stack NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack
---@return System.Void
function NUnit.Framework.Constraints.BinaryOperator:Reduce(stack)end
---@param left NUnit.Framework.Constraints.IConstraint
---@param right NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.BinaryOperator:ApplyOperator(left, right)end
---@class NUnit.Framework.Constraints.OrOperator : NUnit.Framework.Constraints.BinaryOperator
NUnit.Framework.Constraints.OrOperator = {}
---@type NUnit.Framework.Constraints.OrOperator
CS.NUnit.Framework.Constraints.OrOperator = NUnit.Framework.Constraints.OrOperator

---@param left NUnit.Framework.Constraints.IConstraint
---@param right NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.OrOperator:ApplyOperator(left, right)end
---@class NUnit.Framework.Constraints.Numerics : System.Object
NUnit.Framework.Constraints.Numerics = {}
---@type NUnit.Framework.Constraints.Numerics
CS.NUnit.Framework.Constraints.Numerics = NUnit.Framework.Constraints.Numerics

---@param obj System.Object
---@return System.Boolean
function NUnit.Framework.Constraints.Numerics.IsNumericType(obj)end
---@param obj System.Object
---@return System.Boolean
function NUnit.Framework.Constraints.Numerics.IsFloatingPointNumeric(obj)end
---@param obj System.Object
---@return System.Boolean
function NUnit.Framework.Constraints.Numerics.IsFixedPointNumeric(obj)end
---@param expected System.Object
---@param actual System.Object
---@param tolerance NUnit.Framework.Constraints.Tolerance
---@return System.Boolean
function NUnit.Framework.Constraints.Numerics.AreEqual(expected, actual, tolerance)end
---@param expected System.Object
---@param actual System.Object
---@return System.Int32
function NUnit.Framework.Constraints.Numerics.Compare(expected, actual)end
---@class NUnit.Framework.Constraints.FalseConstraint : NUnit.Framework.Constraints.Constraint
NUnit.Framework.Constraints.FalseConstraint = {}
---@type NUnit.Framework.Constraints.FalseConstraint
CS.NUnit.Framework.Constraints.FalseConstraint = NUnit.Framework.Constraints.FalseConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.FalseConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.PrefixOperator : NUnit.Framework.Constraints.ConstraintOperator
NUnit.Framework.Constraints.PrefixOperator = {}
---@type NUnit.Framework.Constraints.PrefixOperator
CS.NUnit.Framework.Constraints.PrefixOperator = NUnit.Framework.Constraints.PrefixOperator

---@param stack NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack
---@return System.Void
function NUnit.Framework.Constraints.PrefixOperator:Reduce(stack)end
---@param constraint NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.PrefixOperator:ApplyPrefix(constraint)end
---@class NUnit.Framework.Constraints.CollectionOperator : NUnit.Framework.Constraints.PrefixOperator
NUnit.Framework.Constraints.CollectionOperator = {}
---@type NUnit.Framework.Constraints.CollectionOperator
CS.NUnit.Framework.Constraints.CollectionOperator = NUnit.Framework.Constraints.CollectionOperator

---@class NUnit.Framework.Constraints.AllOperator : NUnit.Framework.Constraints.CollectionOperator
NUnit.Framework.Constraints.AllOperator = {}
---@type NUnit.Framework.Constraints.AllOperator
CS.NUnit.Framework.Constraints.AllOperator = NUnit.Framework.Constraints.AllOperator

---@param constraint NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.AllOperator:ApplyPrefix(constraint)end
---@class NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint : NUnit.Framework.Constraints.Constraint
---@field public IgnoreDirectories NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint @  getter
---@field public IgnoreFiles NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint = {}
---@type NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint
CS.NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint = NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.FileExistsConstraint : NUnit.Framework.Constraints.FileOrDirectoryExistsConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.FileExistsConstraint = {}
---@type NUnit.Framework.Constraints.FileExistsConstraint
CS.NUnit.Framework.Constraints.FileExistsConstraint = NUnit.Framework.Constraints.FileExistsConstraint

---@class NUnit.Framework.Constraints.SelfResolvingOperator : NUnit.Framework.Constraints.ConstraintOperator
NUnit.Framework.Constraints.SelfResolvingOperator = {}
---@type NUnit.Framework.Constraints.SelfResolvingOperator
CS.NUnit.Framework.Constraints.SelfResolvingOperator = NUnit.Framework.Constraints.SelfResolvingOperator

---@class NUnit.Framework.Constraints.NUnitEqualityComparer : System.Object
---@field public Default NUnit.Framework.Constraints.NUnitEqualityComparer @static  getter
---@field public IgnoreCase System.Boolean @ setter getter
---@field public CompareAsCollection System.Boolean @ setter getter
---@field public ExternalComparers System.Collections.Generic.IList @  getter
---@field public FailurePoints System.Collections.Generic.IList @  getter
---@field public WithSameOffset System.Boolean @ setter getter
NUnit.Framework.Constraints.NUnitEqualityComparer = {}
---@type NUnit.Framework.Constraints.NUnitEqualityComparer
CS.NUnit.Framework.Constraints.NUnitEqualityComparer = NUnit.Framework.Constraints.NUnitEqualityComparer

---@param x System.Object
---@param y System.Object
---@param tolerance NUnit.Framework.Constraints.Tolerance
---@return System.Boolean
function NUnit.Framework.Constraints.NUnitEqualityComparer:AreEqual(x, y, tolerance)end
---@class NUnit.Framework.Constraints.NUnitEqualityComparer.FailurePoint : System.Object
---@field public Position System.Int64
---@field public ExpectedValue System.Object
---@field public ActualValue System.Object
---@field public ExpectedHasData System.Boolean
---@field public ActualHasData System.Boolean
NUnit.Framework.Constraints.NUnitEqualityComparer.FailurePoint = {}
---@type NUnit.Framework.Constraints.NUnitEqualityComparer.FailurePoint
CS.NUnit.Framework.Constraints.NUnitEqualityComparer.FailurePoint = NUnit.Framework.Constraints.NUnitEqualityComparer.FailurePoint

---@class NUnit.Framework.Constraints.NullConstraint : NUnit.Framework.Constraints.Constraint
NUnit.Framework.Constraints.NullConstraint = {}
---@type NUnit.Framework.Constraints.NullConstraint
CS.NUnit.Framework.Constraints.NullConstraint = NUnit.Framework.Constraints.NullConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.NullConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.CollectionSubsetConstraint : NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@field public DisplayName System.String @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.CollectionSubsetConstraint = {}
---@type NUnit.Framework.Constraints.CollectionSubsetConstraint
CS.NUnit.Framework.Constraints.CollectionSubsetConstraint = NUnit.Framework.Constraints.CollectionSubsetConstraint

---@param comparison any
---@return NUnit.Framework.Constraints.CollectionSubsetConstraint
function NUnit.Framework.Constraints.CollectionSubsetConstraint:Using(comparison)end
---@class NUnit.Framework.Constraints.BinaryConstraint : NUnit.Framework.Constraints.Constraint
NUnit.Framework.Constraints.BinaryConstraint = {}
---@type NUnit.Framework.Constraints.BinaryConstraint
CS.NUnit.Framework.Constraints.BinaryConstraint = NUnit.Framework.Constraints.BinaryConstraint

---@class NUnit.Framework.Constraints.AndConstraint : NUnit.Framework.Constraints.BinaryConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.AndConstraint = {}
---@type NUnit.Framework.Constraints.AndConstraint
CS.NUnit.Framework.Constraints.AndConstraint = NUnit.Framework.Constraints.AndConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.AndConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.ConstraintResult : System.Object
---@field public ActualValue System.Object @ setter getter
---@field public Status NUnit.Framework.Constraints.ConstraintStatus @ setter getter
---@field public IsSuccess System.Boolean @  getter
---@field public Name System.String @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.ConstraintResult = {}
---@type NUnit.Framework.Constraints.ConstraintResult
CS.NUnit.Framework.Constraints.ConstraintResult = NUnit.Framework.Constraints.ConstraintResult

---@param writer NUnit.Framework.Constraints.MessageWriter
---@return System.Void
function NUnit.Framework.Constraints.ConstraintResult:WriteMessageTo(writer)end
---@param writer NUnit.Framework.Constraints.MessageWriter
---@return System.Void
function NUnit.Framework.Constraints.ConstraintResult:WriteActualValueTo(writer)end
---@class NUnit.Framework.Constraints.ExactTypeConstraint : NUnit.Framework.Constraints.TypeConstraint
---@field public DisplayName System.String @  getter
NUnit.Framework.Constraints.ExactTypeConstraint = {}
---@type NUnit.Framework.Constraints.ExactTypeConstraint
CS.NUnit.Framework.Constraints.ExactTypeConstraint = NUnit.Framework.Constraints.ExactTypeConstraint

---@class NUnit.Framework.Constraints.ExceptionTypeConstraint : NUnit.Framework.Constraints.ExactTypeConstraint
NUnit.Framework.Constraints.ExceptionTypeConstraint = {}
---@type NUnit.Framework.Constraints.ExceptionTypeConstraint
CS.NUnit.Framework.Constraints.ExceptionTypeConstraint = NUnit.Framework.Constraints.ExceptionTypeConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.ExceptionTypeConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.PropOperator : NUnit.Framework.Constraints.SelfResolvingOperator
---@field public Name System.String @  getter
NUnit.Framework.Constraints.PropOperator = {}
---@type NUnit.Framework.Constraints.PropOperator
CS.NUnit.Framework.Constraints.PropOperator = NUnit.Framework.Constraints.PropOperator

---@param stack NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack
---@return System.Void
function NUnit.Framework.Constraints.PropOperator:Reduce(stack)end
---@class NUnit.Framework.Constraints.NaNConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.NaNConstraint = {}
---@type NUnit.Framework.Constraints.NaNConstraint
CS.NUnit.Framework.Constraints.NaNConstraint = NUnit.Framework.Constraints.NaNConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.NaNConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.CollectionContainsConstraint : NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@field public DisplayName System.String @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.CollectionContainsConstraint = {}
---@type NUnit.Framework.Constraints.CollectionContainsConstraint
CS.NUnit.Framework.Constraints.CollectionContainsConstraint = NUnit.Framework.Constraints.CollectionContainsConstraint

---@param comparison any
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Constraints.CollectionContainsConstraint:Using(comparison)end
---@class NUnit.Framework.Constraints.EqualConstraintResult : NUnit.Framework.Constraints.ConstraintResult
NUnit.Framework.Constraints.EqualConstraintResult = {}
---@type NUnit.Framework.Constraints.EqualConstraintResult
CS.NUnit.Framework.Constraints.EqualConstraintResult = NUnit.Framework.Constraints.EqualConstraintResult

---@param writer NUnit.Framework.Constraints.MessageWriter
---@return System.Void
function NUnit.Framework.Constraints.EqualConstraintResult:WriteMessageTo(writer)end
---@class NUnit.Framework.Constraints.EqualConstraint : NUnit.Framework.Constraints.Constraint
---@field public Tolerance NUnit.Framework.Constraints.Tolerance @  getter
---@field public CaseInsensitive System.Boolean @  getter
---@field public ClipStrings System.Boolean @ setter getter
---@field public FailurePoints System.Collections.Generic.IList @  getter
---@field public IgnoreCase NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public NoClip NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public AsCollection NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public WithSameOffset NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Ulps NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Percent NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Days NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Hours NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Minutes NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Seconds NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Milliseconds NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Ticks NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.EqualConstraint = {}
---@type NUnit.Framework.Constraints.EqualConstraint
CS.NUnit.Framework.Constraints.EqualConstraint = NUnit.Framework.Constraints.EqualConstraint

---@param amount System.Object
---@return NUnit.Framework.Constraints.EqualConstraint
function NUnit.Framework.Constraints.EqualConstraint:Within(amount)end
---@overload fun(comparer:any):NUnit.Framework.Constraints.EqualConstraint
---@overload fun(comparer:any):NUnit.Framework.Constraints.EqualConstraint
---@overload fun(comparer:System.Collections.IEqualityComparer):NUnit.Framework.Constraints.EqualConstraint
---@overload fun(comparer:any):NUnit.Framework.Constraints.EqualConstraint
---@param comparer System.Collections.IComparer
---@return NUnit.Framework.Constraints.EqualConstraint
function NUnit.Framework.Constraints.EqualConstraint:Using(comparer)end
---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.EqualConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.DelayedConstraint : NUnit.Framework.Constraints.PrefixConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.DelayedConstraint = {}
---@type NUnit.Framework.Constraints.DelayedConstraint
CS.NUnit.Framework.Constraints.DelayedConstraint = NUnit.Framework.Constraints.DelayedConstraint

---@overload fun(del:any):NUnit.Framework.Constraints.ConstraintResult
---@overload fun(actual:any):NUnit.Framework.Constraints.ConstraintResult
---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.DelayedConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.CollectionOrderedConstraint : NUnit.Framework.Constraints.CollectionConstraint
---@field public DisplayName System.String @  getter
---@field public Ascending NUnit.Framework.Constraints.CollectionOrderedConstraint @  getter
---@field public Descending NUnit.Framework.Constraints.CollectionOrderedConstraint @  getter
---@field public Then NUnit.Framework.Constraints.CollectionOrderedConstraint @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.CollectionOrderedConstraint = {}
---@type NUnit.Framework.Constraints.CollectionOrderedConstraint
CS.NUnit.Framework.Constraints.CollectionOrderedConstraint = NUnit.Framework.Constraints.CollectionOrderedConstraint

---@overload fun(comparer:any):NUnit.Framework.Constraints.CollectionOrderedConstraint
---@overload fun(comparer:any):NUnit.Framework.Constraints.CollectionOrderedConstraint
---@param comparer System.Collections.IComparer
---@return NUnit.Framework.Constraints.CollectionOrderedConstraint
function NUnit.Framework.Constraints.CollectionOrderedConstraint:Using(comparer)end
---@param propertyName System.String
---@return NUnit.Framework.Constraints.CollectionOrderedConstraint
function NUnit.Framework.Constraints.CollectionOrderedConstraint:By(propertyName)end
---@class NUnit.Framework.Constraints.DictionaryContainsValueConstraint : NUnit.Framework.Constraints.CollectionContainsConstraint
---@field public DisplayName System.String @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.DictionaryContainsValueConstraint = {}
---@type NUnit.Framework.Constraints.DictionaryContainsValueConstraint
CS.NUnit.Framework.Constraints.DictionaryContainsValueConstraint = NUnit.Framework.Constraints.DictionaryContainsValueConstraint

---@class NUnit.Framework.Constraints.EmptyConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.EmptyConstraint = {}
---@type NUnit.Framework.Constraints.EmptyConstraint
CS.NUnit.Framework.Constraints.EmptyConstraint = NUnit.Framework.Constraints.EmptyConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.EmptyConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.ComparisonAdapter : System.Object
---@field public Default NUnit.Framework.Constraints.ComparisonAdapter @static  getter
NUnit.Framework.Constraints.ComparisonAdapter = {}
---@type NUnit.Framework.Constraints.ComparisonAdapter
CS.NUnit.Framework.Constraints.ComparisonAdapter = NUnit.Framework.Constraints.ComparisonAdapter

---@overload fun(comparer:any):NUnit.Framework.Constraints.ComparisonAdapter
---@overload fun(comparer:any):NUnit.Framework.Constraints.ComparisonAdapter
---@param comparer System.Collections.IComparer
---@return NUnit.Framework.Constraints.ComparisonAdapter
function NUnit.Framework.Constraints.ComparisonAdapter.For(comparer)end
---@param expected System.Object
---@param actual System.Object
---@return System.Int32
function NUnit.Framework.Constraints.ComparisonAdapter:Compare(expected, actual)end
---@class NUnit.Framework.Constraints.AssignableFromConstraint : NUnit.Framework.Constraints.TypeConstraint
NUnit.Framework.Constraints.AssignableFromConstraint = {}
---@type NUnit.Framework.Constraints.AssignableFromConstraint
CS.NUnit.Framework.Constraints.AssignableFromConstraint = NUnit.Framework.Constraints.AssignableFromConstraint

---@class NUnit.Framework.Constraints.PredicateConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.PredicateConstraint = {}
---@type NUnit.Framework.Constraints.PredicateConstraint
CS.NUnit.Framework.Constraints.PredicateConstraint = NUnit.Framework.Constraints.PredicateConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.PredicateConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.NotConstraint : NUnit.Framework.Constraints.PrefixConstraint
NUnit.Framework.Constraints.NotConstraint = {}
---@type NUnit.Framework.Constraints.NotConstraint
CS.NUnit.Framework.Constraints.NotConstraint = NUnit.Framework.Constraints.NotConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.NotConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.ThrowsExceptionConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.ThrowsExceptionConstraint = {}
---@type NUnit.Framework.Constraints.ThrowsExceptionConstraint
CS.NUnit.Framework.Constraints.ThrowsExceptionConstraint = NUnit.Framework.Constraints.ThrowsExceptionConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.ThrowsExceptionConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.OrConstraint : NUnit.Framework.Constraints.BinaryConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.OrConstraint = {}
---@type NUnit.Framework.Constraints.OrConstraint
CS.NUnit.Framework.Constraints.OrConstraint = NUnit.Framework.Constraints.OrConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.OrConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.AttributeOperator : NUnit.Framework.Constraints.SelfResolvingOperator
NUnit.Framework.Constraints.AttributeOperator = {}
---@type NUnit.Framework.Constraints.AttributeOperator
CS.NUnit.Framework.Constraints.AttributeOperator = NUnit.Framework.Constraints.AttributeOperator

---@param stack NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack
---@return System.Void
function NUnit.Framework.Constraints.AttributeOperator:Reduce(stack)end
---@class NUnit.Framework.Constraints.MessageWriter : System.IO.StringWriter
---@field public MaxLineLength System.Int32 @ setter getter
NUnit.Framework.Constraints.MessageWriter = {}
---@type NUnit.Framework.Constraints.MessageWriter
CS.NUnit.Framework.Constraints.MessageWriter = NUnit.Framework.Constraints.MessageWriter

---@overload fun(level:System.Int32, message:System.String, args:System.Object[]):System.Void
---@param message System.String
---@param args System.Object[]
---@return System.Void
function NUnit.Framework.Constraints.MessageWriter:WriteMessageLine(message, args)end
---@overload fun(expected:System.Object, actual:System.Object):System.Void
---@overload fun(expected:System.Object, actual:System.Object, tolerance:NUnit.Framework.Constraints.Tolerance):System.Void
---@param result NUnit.Framework.Constraints.ConstraintResult
---@return System.Void
function NUnit.Framework.Constraints.MessageWriter:DisplayDifferences(result)end
---@param expected System.String
---@param actual System.String
---@param mismatch System.Int32
---@param ignoreCase System.Boolean
---@param clipping System.Boolean
---@return System.Void
function NUnit.Framework.Constraints.MessageWriter:DisplayStringDifferences(expected, actual, mismatch, ignoreCase, clipping)end
---@param actual System.Object
---@return System.Void
function NUnit.Framework.Constraints.MessageWriter:WriteActualValue(actual)end
---@param val System.Object
---@return System.Void
function NUnit.Framework.Constraints.MessageWriter:WriteValue(val)end
---@param collection System.Collections.IEnumerable
---@param start System.Int64
---@param max System.Int32
---@return System.Void
function NUnit.Framework.Constraints.MessageWriter:WriteCollectionElements(collection, start, max)end
---@class NUnit.Framework.Constraints.ComparisonConstraint : NUnit.Framework.Constraints.Constraint
NUnit.Framework.Constraints.ComparisonConstraint = {}
---@type NUnit.Framework.Constraints.ComparisonConstraint
CS.NUnit.Framework.Constraints.ComparisonConstraint = NUnit.Framework.Constraints.ComparisonConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.ComparisonConstraint:ApplyTo(actual)end
---@overload fun(comparer:any):NUnit.Framework.Constraints.ComparisonConstraint
---@overload fun(comparer:any):NUnit.Framework.Constraints.ComparisonConstraint
---@param comparer System.Collections.IComparer
---@return NUnit.Framework.Constraints.ComparisonConstraint
function NUnit.Framework.Constraints.ComparisonConstraint:Using(comparer)end
---@class NUnit.Framework.Constraints.LessThanConstraint : NUnit.Framework.Constraints.ComparisonConstraint
NUnit.Framework.Constraints.LessThanConstraint = {}
---@type NUnit.Framework.Constraints.LessThanConstraint
CS.NUnit.Framework.Constraints.LessThanConstraint = NUnit.Framework.Constraints.LessThanConstraint

---@class NUnit.Framework.Constraints.EmptyStringConstraint : NUnit.Framework.Constraints.StringConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.EmptyStringConstraint = {}
---@type NUnit.Framework.Constraints.EmptyStringConstraint
CS.NUnit.Framework.Constraints.EmptyStringConstraint = NUnit.Framework.Constraints.EmptyStringConstraint

---@class NUnit.Framework.Constraints.EmptyDirectoryConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.EmptyDirectoryConstraint = {}
---@type NUnit.Framework.Constraints.EmptyDirectoryConstraint
CS.NUnit.Framework.Constraints.EmptyDirectoryConstraint = NUnit.Framework.Constraints.EmptyDirectoryConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.EmptyDirectoryConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.ConstraintBuilder : System.Object
NUnit.Framework.Constraints.ConstraintBuilder = {}
---@type NUnit.Framework.Constraints.ConstraintBuilder
CS.NUnit.Framework.Constraints.ConstraintBuilder = NUnit.Framework.Constraints.ConstraintBuilder

---@overload fun(constraint:NUnit.Framework.Constraints.Constraint):System.Void
---@param op NUnit.Framework.Constraints.ConstraintOperator
---@return System.Void
function NUnit.Framework.Constraints.ConstraintBuilder:Append(op)end
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.ConstraintBuilder:Resolve()end
---@class NUnit.Framework.Constraints.ConstraintBuilder.OperatorStack : System.Object
---@field public Empty System.Boolean @  getter
---@field public Top NUnit.Framework.Constraints.ConstraintOperator @  getter
NUnit.Framework.Constraints.ConstraintBuilder.OperatorStack = {}
---@type NUnit.Framework.Constraints.ConstraintBuilder.OperatorStack
CS.NUnit.Framework.Constraints.ConstraintBuilder.OperatorStack = NUnit.Framework.Constraints.ConstraintBuilder.OperatorStack

---@param op NUnit.Framework.Constraints.ConstraintOperator
---@return System.Void
function NUnit.Framework.Constraints.ConstraintBuilder.OperatorStack:Push(op)end
---@return NUnit.Framework.Constraints.ConstraintOperator
function NUnit.Framework.Constraints.ConstraintBuilder.OperatorStack:Pop()end
---@class NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack : System.Object
---@field public Empty System.Boolean @  getter
NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack = {}
---@type NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack
CS.NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack = NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack

---@param constraint NUnit.Framework.Constraints.IConstraint
---@return System.Void
function NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack:Push(constraint)end
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack:Pop()end
---@class NUnit.Framework.Constraints.CollectionEquivalentConstraint : NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@field public DisplayName System.String @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.CollectionEquivalentConstraint = {}
---@type NUnit.Framework.Constraints.CollectionEquivalentConstraint
CS.NUnit.Framework.Constraints.CollectionEquivalentConstraint = NUnit.Framework.Constraints.CollectionEquivalentConstraint

---@param comparison any
---@return NUnit.Framework.Constraints.CollectionEquivalentConstraint
function NUnit.Framework.Constraints.CollectionEquivalentConstraint:Using(comparison)end
---@class NUnit.Framework.Constraints.AttributeExistsConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.AttributeExistsConstraint = {}
---@type NUnit.Framework.Constraints.AttributeExistsConstraint
CS.NUnit.Framework.Constraints.AttributeExistsConstraint = NUnit.Framework.Constraints.AttributeExistsConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.AttributeExistsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.ThrowsConstraint : NUnit.Framework.Constraints.PrefixConstraint
---@field public ActualException System.Exception @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.ThrowsConstraint = {}
---@type NUnit.Framework.Constraints.ThrowsConstraint
CS.NUnit.Framework.Constraints.ThrowsConstraint = NUnit.Framework.Constraints.ThrowsConstraint

---@overload fun(del:any):NUnit.Framework.Constraints.ConstraintResult
---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.ThrowsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.SamePathConstraint : NUnit.Framework.Constraints.PathConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.SamePathConstraint = {}
---@type NUnit.Framework.Constraints.SamePathConstraint
CS.NUnit.Framework.Constraints.SamePathConstraint = NUnit.Framework.Constraints.SamePathConstraint

---@class NUnit.Framework.Constraints.AndOperator : NUnit.Framework.Constraints.BinaryOperator
NUnit.Framework.Constraints.AndOperator = {}
---@type NUnit.Framework.Constraints.AndOperator
CS.NUnit.Framework.Constraints.AndOperator = NUnit.Framework.Constraints.AndOperator

---@param left NUnit.Framework.Constraints.IConstraint
---@param right NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.AndOperator:ApplyOperator(left, right)end
---@class NUnit.Framework.Constraints.ExactCountConstraint : NUnit.Framework.Constraints.PrefixConstraint
NUnit.Framework.Constraints.ExactCountConstraint = {}
---@type NUnit.Framework.Constraints.ExactCountConstraint
CS.NUnit.Framework.Constraints.ExactCountConstraint = NUnit.Framework.Constraints.ExactCountConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.ExactCountConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.XmlSerializableConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.XmlSerializableConstraint = {}
---@type NUnit.Framework.Constraints.XmlSerializableConstraint
CS.NUnit.Framework.Constraints.XmlSerializableConstraint = NUnit.Framework.Constraints.XmlSerializableConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.XmlSerializableConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.FloatingPointNumerics : System.Object
NUnit.Framework.Constraints.FloatingPointNumerics = {}
---@type NUnit.Framework.Constraints.FloatingPointNumerics
CS.NUnit.Framework.Constraints.FloatingPointNumerics = NUnit.Framework.Constraints.FloatingPointNumerics

---@overload fun(left:System.Double, right:System.Double, maxUlps:System.Int64):System.Boolean
---@param left System.Single
---@param right System.Single
---@param maxUlps System.Int32
---@return System.Boolean
function NUnit.Framework.Constraints.FloatingPointNumerics.AreAlmostEqualUlps(left, right, maxUlps)end
---@param value System.Single
---@return System.Int32
function NUnit.Framework.Constraints.FloatingPointNumerics.ReinterpretAsInt(value)end
---@param value System.Double
---@return System.Int64
function NUnit.Framework.Constraints.FloatingPointNumerics.ReinterpretAsLong(value)end
---@param value System.Int32
---@return System.Single
function NUnit.Framework.Constraints.FloatingPointNumerics.ReinterpretAsFloat(value)end
---@param value System.Int64
---@return System.Double
function NUnit.Framework.Constraints.FloatingPointNumerics.ReinterpretAsDouble(value)end
---@class NUnit.Framework.Constraints.EqualityAdapter : System.Object
NUnit.Framework.Constraints.EqualityAdapter = {}
---@type NUnit.Framework.Constraints.EqualityAdapter
CS.NUnit.Framework.Constraints.EqualityAdapter = NUnit.Framework.Constraints.EqualityAdapter

---@param x System.Object
---@param y System.Object
---@return System.Boolean
function NUnit.Framework.Constraints.EqualityAdapter:AreEqual(x, y)end
---@param x System.Object
---@param y System.Object
---@return System.Boolean
function NUnit.Framework.Constraints.EqualityAdapter:CanCompare(x, y)end
---@overload fun(comparer:System.Collections.IEqualityComparer):NUnit.Framework.Constraints.EqualityAdapter
---@overload fun(comparison:any):NUnit.Framework.Constraints.EqualityAdapter
---@overload fun(comparer:any):NUnit.Framework.Constraints.EqualityAdapter
---@overload fun(comparer:any):NUnit.Framework.Constraints.EqualityAdapter
---@overload fun(comparer:any):NUnit.Framework.Constraints.EqualityAdapter
---@param comparer System.Collections.IComparer
---@return NUnit.Framework.Constraints.EqualityAdapter
function NUnit.Framework.Constraints.EqualityAdapter.For(comparer)end
---@class NUnit.Framework.Constraints.EmptyCollectionConstraint : NUnit.Framework.Constraints.CollectionConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.EmptyCollectionConstraint = {}
---@type NUnit.Framework.Constraints.EmptyCollectionConstraint
CS.NUnit.Framework.Constraints.EmptyCollectionConstraint = NUnit.Framework.Constraints.EmptyCollectionConstraint

---@class NUnit.Framework.Constraints.ConstraintFactory : System.Object
---@field public Not NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public No NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public All NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public Some NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public None NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public Length NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public Count NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public Message NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public InnerException NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public Null NUnit.Framework.Constraints.NullConstraint @  getter
---@field public True NUnit.Framework.Constraints.TrueConstraint @  getter
---@field public False NUnit.Framework.Constraints.FalseConstraint @  getter
---@field public Positive NUnit.Framework.Constraints.GreaterThanConstraint @  getter
---@field public Negative NUnit.Framework.Constraints.LessThanConstraint @  getter
---@field public Zero NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public NaN NUnit.Framework.Constraints.NaNConstraint @  getter
---@field public Empty NUnit.Framework.Constraints.EmptyConstraint @  getter
---@field public Unique NUnit.Framework.Constraints.UniqueItemsConstraint @  getter
---@field public BinarySerializable NUnit.Framework.Constraints.BinarySerializableConstraint @  getter
---@field public XmlSerializable NUnit.Framework.Constraints.XmlSerializableConstraint @  getter
---@field public Ordered NUnit.Framework.Constraints.CollectionOrderedConstraint @  getter
NUnit.Framework.Constraints.ConstraintFactory = {}
---@type NUnit.Framework.Constraints.ConstraintFactory
CS.NUnit.Framework.Constraints.ConstraintFactory = NUnit.Framework.Constraints.ConstraintFactory

---@param expectedCount System.Int32
---@return NUnit.Framework.Constraints.ConstraintExpression
function NUnit.Framework.Constraints.ConstraintFactory.Exactly(expectedCount)end
---@param name System.String
---@return NUnit.Framework.Constraints.ResolvableConstraintExpression
function NUnit.Framework.Constraints.ConstraintFactory:Property(name)end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.ResolvableConstraintExpression
---@return NUnit.Framework.Constraints.ResolvableConstraintExpression
function NUnit.Framework.Constraints.ConstraintFactory:Attribute()end
---@param expected System.Object
---@return NUnit.Framework.Constraints.EqualConstraint
function NUnit.Framework.Constraints.ConstraintFactory:EqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.SameAsConstraint
function NUnit.Framework.Constraints.ConstraintFactory:SameAs(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanConstraint
function NUnit.Framework.Constraints.ConstraintFactory:GreaterThan(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintFactory:GreaterThanOrEqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintFactory:AtLeast(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanConstraint
function NUnit.Framework.Constraints.ConstraintFactory:LessThan(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintFactory:LessThanOrEqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintFactory:AtMost(expected)end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.ExactTypeConstraint
---@return NUnit.Framework.Constraints.ExactTypeConstraint
function NUnit.Framework.Constraints.ConstraintFactory:TypeOf()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.InstanceOfTypeConstraint
---@return NUnit.Framework.Constraints.InstanceOfTypeConstraint
function NUnit.Framework.Constraints.ConstraintFactory:InstanceOf()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.AssignableFromConstraint
---@return NUnit.Framework.Constraints.AssignableFromConstraint
function NUnit.Framework.Constraints.ConstraintFactory:AssignableFrom()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.AssignableToConstraint
---@return NUnit.Framework.Constraints.AssignableToConstraint
function NUnit.Framework.Constraints.ConstraintFactory:AssignableTo()end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionEquivalentConstraint
function NUnit.Framework.Constraints.ConstraintFactory:EquivalentTo(expected)end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionSubsetConstraint
function NUnit.Framework.Constraints.ConstraintFactory:SubsetOf(expected)end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionSupersetConstraint
function NUnit.Framework.Constraints.ConstraintFactory:SupersetOf(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Constraints.ConstraintFactory:Member(expected)end
---@overload fun(expected:System.String):NUnit.Framework.Constraints.ContainsConstraint
---@param expected System.Object
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Constraints.ConstraintFactory:Contains(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubstringConstraint
function NUnit.Framework.Constraints.ConstraintFactory:StringContaining(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubstringConstraint
function NUnit.Framework.Constraints.ConstraintFactory:ContainsSubstring(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubstringConstraint
function NUnit.Framework.Constraints.ConstraintFactory:DoesNotContain(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:StartWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:StartsWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:StringStarting(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:DoesNotStartWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:EndWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:EndsWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:StringEnding(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Constraints.ConstraintFactory:DoesNotEndWith(expected)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Constraints.ConstraintFactory:Match(pattern)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Constraints.ConstraintFactory:Matches(pattern)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Constraints.ConstraintFactory:StringMatching(pattern)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Constraints.ConstraintFactory:DoesNotMatch(pattern)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SamePathConstraint
function NUnit.Framework.Constraints.ConstraintFactory:SamePath(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubPathConstraint
function NUnit.Framework.Constraints.ConstraintFactory:SubPathOf(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SamePathOrUnderConstraint
function NUnit.Framework.Constraints.ConstraintFactory:SamePathOrUnder(expected)end
---@param from System.IComparable
---@param to System.IComparable
---@return NUnit.Framework.Constraints.RangeConstraint
function NUnit.Framework.Constraints.ConstraintFactory:InRange(from, to)end
---@class NUnit.Framework.Constraints.BinarySerializableConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.BinarySerializableConstraint = {}
---@type NUnit.Framework.Constraints.BinarySerializableConstraint
CS.NUnit.Framework.Constraints.BinarySerializableConstraint = NUnit.Framework.Constraints.BinarySerializableConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.BinarySerializableConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.TrueConstraint : NUnit.Framework.Constraints.Constraint
NUnit.Framework.Constraints.TrueConstraint = {}
---@type NUnit.Framework.Constraints.TrueConstraint
CS.NUnit.Framework.Constraints.TrueConstraint = NUnit.Framework.Constraints.TrueConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.TrueConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.Tolerance : System.Object
---@field public Default NUnit.Framework.Constraints.Tolerance @static  getter
---@field public Exact NUnit.Framework.Constraints.Tolerance @static  getter
---@field public Mode NUnit.Framework.Constraints.ToleranceMode @  getter
---@field public Value System.Object @  getter
---@field public Percent NUnit.Framework.Constraints.Tolerance @  getter
---@field public Ulps NUnit.Framework.Constraints.Tolerance @  getter
---@field public Days NUnit.Framework.Constraints.Tolerance @  getter
---@field public Hours NUnit.Framework.Constraints.Tolerance @  getter
---@field public Minutes NUnit.Framework.Constraints.Tolerance @  getter
---@field public Seconds NUnit.Framework.Constraints.Tolerance @  getter
---@field public Milliseconds NUnit.Framework.Constraints.Tolerance @  getter
---@field public Ticks NUnit.Framework.Constraints.Tolerance @  getter
---@field public IsUnsetOrDefault System.Boolean @  getter
NUnit.Framework.Constraints.Tolerance = {}
---@type NUnit.Framework.Constraints.Tolerance
CS.NUnit.Framework.Constraints.Tolerance = NUnit.Framework.Constraints.Tolerance

---@class NUnit.Framework.Constraints.StartsWithConstraint : NUnit.Framework.Constraints.StringConstraint
NUnit.Framework.Constraints.StartsWithConstraint = {}
---@type NUnit.Framework.Constraints.StartsWithConstraint
CS.NUnit.Framework.Constraints.StartsWithConstraint = NUnit.Framework.Constraints.StartsWithConstraint

---@class NUnit.Framework.Constraints.ThrowsOperator : NUnit.Framework.Constraints.SelfResolvingOperator
NUnit.Framework.Constraints.ThrowsOperator = {}
---@type NUnit.Framework.Constraints.ThrowsOperator
CS.NUnit.Framework.Constraints.ThrowsOperator = NUnit.Framework.Constraints.ThrowsOperator

---@param stack NUnit.Framework.Constraints.ConstraintBuilder.ConstraintStack
---@return System.Void
function NUnit.Framework.Constraints.ThrowsOperator:Reduce(stack)end
---@class NUnit.Framework.Constraints.ConstraintExpression : System.Object
---@field public Not NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public No NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public All NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public Some NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public None NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public Length NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public Count NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public Message NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public InnerException NUnit.Framework.Constraints.ResolvableConstraintExpression @  getter
---@field public With NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public Null NUnit.Framework.Constraints.NullConstraint @  getter
---@field public True NUnit.Framework.Constraints.TrueConstraint @  getter
---@field public False NUnit.Framework.Constraints.FalseConstraint @  getter
---@field public Positive NUnit.Framework.Constraints.GreaterThanConstraint @  getter
---@field public Negative NUnit.Framework.Constraints.LessThanConstraint @  getter
---@field public Zero NUnit.Framework.Constraints.EqualConstraint @  getter
---@field public NaN NUnit.Framework.Constraints.NaNConstraint @  getter
---@field public Empty NUnit.Framework.Constraints.EmptyConstraint @  getter
---@field public Unique NUnit.Framework.Constraints.UniqueItemsConstraint @  getter
---@field public BinarySerializable NUnit.Framework.Constraints.BinarySerializableConstraint @  getter
---@field public XmlSerializable NUnit.Framework.Constraints.XmlSerializableConstraint @  getter
---@field public Ordered NUnit.Framework.Constraints.CollectionOrderedConstraint @  getter
---@field public Exist NUnit.Framework.Constraints.Constraint @  getter
NUnit.Framework.Constraints.ConstraintExpression = {}
---@type NUnit.Framework.Constraints.ConstraintExpression
CS.NUnit.Framework.Constraints.ConstraintExpression = NUnit.Framework.Constraints.ConstraintExpression

---@return System.String
function NUnit.Framework.Constraints.ConstraintExpression:ToString()end
---@overload fun(op:NUnit.Framework.Constraints.SelfResolvingOperator):NUnit.Framework.Constraints.ResolvableConstraintExpression
---@overload fun(constraint:NUnit.Framework.Constraints.Constraint):NUnit.Framework.Constraints.Constraint
---@param op NUnit.Framework.Constraints.ConstraintOperator
---@return NUnit.Framework.Constraints.ConstraintExpression
function NUnit.Framework.Constraints.ConstraintExpression:Append(op)end
---@param expectedCount System.Int32
---@return NUnit.Framework.Constraints.ConstraintExpression
function NUnit.Framework.Constraints.ConstraintExpression:Exactly(expectedCount)end
---@param name System.String
---@return NUnit.Framework.Constraints.ResolvableConstraintExpression
function NUnit.Framework.Constraints.ConstraintExpression:Property(name)end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.ResolvableConstraintExpression
---@return NUnit.Framework.Constraints.ResolvableConstraintExpression
function NUnit.Framework.Constraints.ConstraintExpression:Attribute()end
---@overload fun(predicate:any):NUnit.Framework.Constraints.Constraint
---@overload fun(pattern:System.String):NUnit.Framework.Constraints.RegexConstraint
---@param constraint NUnit.Framework.Constraints.IResolveConstraint
---@return NUnit.Framework.Constraints.Constraint
function NUnit.Framework.Constraints.ConstraintExpression:Matches(constraint)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.EqualConstraint
function NUnit.Framework.Constraints.ConstraintExpression:EqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.SameAsConstraint
function NUnit.Framework.Constraints.ConstraintExpression:SameAs(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanConstraint
function NUnit.Framework.Constraints.ConstraintExpression:GreaterThan(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintExpression:GreaterThanOrEqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.GreaterThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintExpression:AtLeast(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanConstraint
function NUnit.Framework.Constraints.ConstraintExpression:LessThan(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintExpression:LessThanOrEqualTo(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.LessThanOrEqualConstraint
function NUnit.Framework.Constraints.ConstraintExpression:AtMost(expected)end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.ExactTypeConstraint
---@return NUnit.Framework.Constraints.ExactTypeConstraint
function NUnit.Framework.Constraints.ConstraintExpression:TypeOf()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.InstanceOfTypeConstraint
---@return NUnit.Framework.Constraints.InstanceOfTypeConstraint
function NUnit.Framework.Constraints.ConstraintExpression:InstanceOf()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.AssignableFromConstraint
---@return NUnit.Framework.Constraints.AssignableFromConstraint
function NUnit.Framework.Constraints.ConstraintExpression:AssignableFrom()end
---@overload fun(expectedType:System.Type):NUnit.Framework.Constraints.AssignableToConstraint
---@return NUnit.Framework.Constraints.AssignableToConstraint
function NUnit.Framework.Constraints.ConstraintExpression:AssignableTo()end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionEquivalentConstraint
function NUnit.Framework.Constraints.ConstraintExpression:EquivalentTo(expected)end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionSubsetConstraint
function NUnit.Framework.Constraints.ConstraintExpression:SubsetOf(expected)end
---@param expected System.Collections.IEnumerable
---@return NUnit.Framework.Constraints.CollectionSupersetConstraint
function NUnit.Framework.Constraints.ConstraintExpression:SupersetOf(expected)end
---@param expected System.Object
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Constraints.ConstraintExpression:Member(expected)end
---@overload fun(expected:System.String):NUnit.Framework.Constraints.ContainsConstraint
---@param expected System.Object
---@return NUnit.Framework.Constraints.CollectionContainsConstraint
function NUnit.Framework.Constraints.ConstraintExpression:Contains(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.ContainsConstraint
function NUnit.Framework.Constraints.ConstraintExpression:Contain(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubstringConstraint
function NUnit.Framework.Constraints.ConstraintExpression:StringContaining(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubstringConstraint
function NUnit.Framework.Constraints.ConstraintExpression:ContainsSubstring(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Constraints.ConstraintExpression:StartWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Constraints.ConstraintExpression:StartsWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.StartsWithConstraint
function NUnit.Framework.Constraints.ConstraintExpression:StringStarting(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Constraints.ConstraintExpression:EndWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Constraints.ConstraintExpression:EndsWith(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.EndsWithConstraint
function NUnit.Framework.Constraints.ConstraintExpression:StringEnding(expected)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Constraints.ConstraintExpression:Match(pattern)end
---@param pattern System.String
---@return NUnit.Framework.Constraints.RegexConstraint
function NUnit.Framework.Constraints.ConstraintExpression:StringMatching(pattern)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SamePathConstraint
function NUnit.Framework.Constraints.ConstraintExpression:SamePath(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SubPathConstraint
function NUnit.Framework.Constraints.ConstraintExpression:SubPathOf(expected)end
---@param expected System.String
---@return NUnit.Framework.Constraints.SamePathOrUnderConstraint
function NUnit.Framework.Constraints.ConstraintExpression:SamePathOrUnder(expected)end
---@param from System.IComparable
---@param to System.IComparable
---@return NUnit.Framework.Constraints.RangeConstraint
function NUnit.Framework.Constraints.ConstraintExpression:InRange(from, to)end
---@class NUnit.Framework.Constraints.NoneOperator : NUnit.Framework.Constraints.CollectionOperator
NUnit.Framework.Constraints.NoneOperator = {}
---@type NUnit.Framework.Constraints.NoneOperator
CS.NUnit.Framework.Constraints.NoneOperator = NUnit.Framework.Constraints.NoneOperator

---@param constraint NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.NoneOperator:ApplyPrefix(constraint)end
---@class NUnit.Framework.Constraints.ExactCountOperator : NUnit.Framework.Constraints.CollectionOperator
NUnit.Framework.Constraints.ExactCountOperator = {}
---@type NUnit.Framework.Constraints.ExactCountOperator
CS.NUnit.Framework.Constraints.ExactCountOperator = NUnit.Framework.Constraints.ExactCountOperator

---@param constraint NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.ExactCountOperator:ApplyPrefix(constraint)end
---@class NUnit.Framework.Constraints.ReusableConstraint : System.Object
NUnit.Framework.Constraints.ReusableConstraint = {}
---@type NUnit.Framework.Constraints.ReusableConstraint
CS.NUnit.Framework.Constraints.ReusableConstraint = NUnit.Framework.Constraints.ReusableConstraint

---@param c NUnit.Framework.Constraints.Constraint
---@return NUnit.Framework.Constraints.ReusableConstraint
function NUnit.Framework.Constraints.ReusableConstraint.op_Implicit(c)end
---@return System.String
function NUnit.Framework.Constraints.ReusableConstraint:ToString()end
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.ReusableConstraint:Resolve()end
---@class NUnit.Framework.Constraints.PropertyExistsConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.PropertyExistsConstraint = {}
---@type NUnit.Framework.Constraints.PropertyExistsConstraint
CS.NUnit.Framework.Constraints.PropertyExistsConstraint = NUnit.Framework.Constraints.PropertyExistsConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.PropertyExistsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.PropertyConstraint : NUnit.Framework.Constraints.PrefixConstraint
NUnit.Framework.Constraints.PropertyConstraint = {}
---@type NUnit.Framework.Constraints.PropertyConstraint
CS.NUnit.Framework.Constraints.PropertyConstraint = NUnit.Framework.Constraints.PropertyConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.PropertyConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.WithOperator : NUnit.Framework.Constraints.PrefixOperator
NUnit.Framework.Constraints.WithOperator = {}
---@type NUnit.Framework.Constraints.WithOperator
CS.NUnit.Framework.Constraints.WithOperator = NUnit.Framework.Constraints.WithOperator

---@param constraint NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.WithOperator:ApplyPrefix(constraint)end
---@class NUnit.Framework.Constraints.NUnitComparer : System.Object
---@field public Default NUnit.Framework.Constraints.NUnitComparer @static  getter
NUnit.Framework.Constraints.NUnitComparer = {}
---@type NUnit.Framework.Constraints.NUnitComparer
CS.NUnit.Framework.Constraints.NUnitComparer = NUnit.Framework.Constraints.NUnitComparer

---@param x System.Object
---@param y System.Object
---@return System.Int32
function NUnit.Framework.Constraints.NUnitComparer:Compare(x, y)end
---@class NUnit.Framework.Constraints.LessThanOrEqualConstraint : NUnit.Framework.Constraints.ComparisonConstraint
NUnit.Framework.Constraints.LessThanOrEqualConstraint = {}
---@type NUnit.Framework.Constraints.LessThanOrEqualConstraint
CS.NUnit.Framework.Constraints.LessThanOrEqualConstraint = NUnit.Framework.Constraints.LessThanOrEqualConstraint

---@class NUnit.Framework.Constraints.CollectionSupersetConstraint : NUnit.Framework.Constraints.CollectionItemsEqualConstraint
---@field public DisplayName System.String @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.CollectionSupersetConstraint = {}
---@type NUnit.Framework.Constraints.CollectionSupersetConstraint
CS.NUnit.Framework.Constraints.CollectionSupersetConstraint = NUnit.Framework.Constraints.CollectionSupersetConstraint

---@param comparison any
---@return NUnit.Framework.Constraints.CollectionSupersetConstraint
function NUnit.Framework.Constraints.CollectionSupersetConstraint:Using(comparison)end
---@class NUnit.Framework.Constraints.InstanceOfTypeConstraint : NUnit.Framework.Constraints.TypeConstraint
---@field public DisplayName System.String @  getter
NUnit.Framework.Constraints.InstanceOfTypeConstraint = {}
---@type NUnit.Framework.Constraints.InstanceOfTypeConstraint
CS.NUnit.Framework.Constraints.InstanceOfTypeConstraint = NUnit.Framework.Constraints.InstanceOfTypeConstraint

---@class NUnit.Framework.Constraints.GreaterThanConstraint : NUnit.Framework.Constraints.ComparisonConstraint
NUnit.Framework.Constraints.GreaterThanConstraint = {}
---@type NUnit.Framework.Constraints.GreaterThanConstraint
CS.NUnit.Framework.Constraints.GreaterThanConstraint = NUnit.Framework.Constraints.GreaterThanConstraint

---@class NUnit.Framework.Constraints.DictionaryContainsKeyConstraint : NUnit.Framework.Constraints.CollectionContainsConstraint
---@field public DisplayName System.String @  getter
---@field public Description System.String @  getter
NUnit.Framework.Constraints.DictionaryContainsKeyConstraint = {}
---@type NUnit.Framework.Constraints.DictionaryContainsKeyConstraint
CS.NUnit.Framework.Constraints.DictionaryContainsKeyConstraint = NUnit.Framework.Constraints.DictionaryContainsKeyConstraint

---@class NUnit.Framework.Constraints.ContainsConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
---@field public IgnoreCase NUnit.Framework.Constraints.ContainsConstraint @  getter
NUnit.Framework.Constraints.ContainsConstraint = {}
---@type NUnit.Framework.Constraints.ContainsConstraint
CS.NUnit.Framework.Constraints.ContainsConstraint = NUnit.Framework.Constraints.ContainsConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.ContainsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.CollectionTally : System.Object
---@field public Count System.Int32 @  getter
NUnit.Framework.Constraints.CollectionTally = {}
---@type NUnit.Framework.Constraints.CollectionTally
CS.NUnit.Framework.Constraints.CollectionTally = NUnit.Framework.Constraints.CollectionTally

---@overload fun(c:System.Collections.IEnumerable):System.Boolean
---@param o System.Object
---@return System.Boolean
function NUnit.Framework.Constraints.CollectionTally:TryRemove(o)end
---@class NUnit.Framework.Constraints.AllItemsConstraint : NUnit.Framework.Constraints.PrefixConstraint
---@field public DisplayName System.String @  getter
NUnit.Framework.Constraints.AllItemsConstraint = {}
---@type NUnit.Framework.Constraints.AllItemsConstraint
CS.NUnit.Framework.Constraints.AllItemsConstraint = NUnit.Framework.Constraints.AllItemsConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.AllItemsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.SubPathConstraint : NUnit.Framework.Constraints.PathConstraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.SubPathConstraint = {}
---@type NUnit.Framework.Constraints.SubPathConstraint
CS.NUnit.Framework.Constraints.SubPathConstraint = NUnit.Framework.Constraints.SubPathConstraint

---@class NUnit.Framework.Constraints.SomeItemsConstraint : NUnit.Framework.Constraints.PrefixConstraint
---@field public DisplayName System.String @  getter
NUnit.Framework.Constraints.SomeItemsConstraint = {}
---@type NUnit.Framework.Constraints.SomeItemsConstraint
CS.NUnit.Framework.Constraints.SomeItemsConstraint = NUnit.Framework.Constraints.SomeItemsConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.SomeItemsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.SameAsConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.SameAsConstraint = {}
---@type NUnit.Framework.Constraints.SameAsConstraint
CS.NUnit.Framework.Constraints.SameAsConstraint = NUnit.Framework.Constraints.SameAsConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.SameAsConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.RegexConstraint : NUnit.Framework.Constraints.StringConstraint
NUnit.Framework.Constraints.RegexConstraint = {}
---@type NUnit.Framework.Constraints.RegexConstraint
CS.NUnit.Framework.Constraints.RegexConstraint = NUnit.Framework.Constraints.RegexConstraint

---@class NUnit.Framework.Constraints.ConstraintStatus : System.Enum
NUnit.Framework.Constraints.ConstraintStatus = {}
---@type NUnit.Framework.Constraints.ConstraintStatus
CS.NUnit.Framework.Constraints.ConstraintStatus = NUnit.Framework.Constraints.ConstraintStatus

---@return System.Int32 value:0
NUnit.Framework.Constraints.ConstraintStatus.Unknown = 0
---@return System.Int32 value:1
NUnit.Framework.Constraints.ConstraintStatus.Success = 1
---@return System.Int32 value:2
NUnit.Framework.Constraints.ConstraintStatus.Failure = 2
---@return System.Int32 value:3
NUnit.Framework.Constraints.ConstraintStatus.Error = 3

---@class NUnit.Framework.Constraints.SomeOperator : NUnit.Framework.Constraints.CollectionOperator
NUnit.Framework.Constraints.SomeOperator = {}
---@type NUnit.Framework.Constraints.SomeOperator
CS.NUnit.Framework.Constraints.SomeOperator = NUnit.Framework.Constraints.SomeOperator

---@param constraint NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.SomeOperator:ApplyPrefix(constraint)end
---@class NUnit.Framework.Constraints.RangeConstraint : NUnit.Framework.Constraints.Constraint
---@field public Description System.String @  getter
NUnit.Framework.Constraints.RangeConstraint = {}
---@type NUnit.Framework.Constraints.RangeConstraint
CS.NUnit.Framework.Constraints.RangeConstraint = NUnit.Framework.Constraints.RangeConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.RangeConstraint:ApplyTo(actual)end
---@overload fun(comparer:any):NUnit.Framework.Constraints.RangeConstraint
---@overload fun(comparer:any):NUnit.Framework.Constraints.RangeConstraint
---@param comparer System.Collections.IComparer
---@return NUnit.Framework.Constraints.RangeConstraint
function NUnit.Framework.Constraints.RangeConstraint:Using(comparer)end
---@class NUnit.Framework.Constraints.GreaterThanOrEqualConstraint : NUnit.Framework.Constraints.ComparisonConstraint
NUnit.Framework.Constraints.GreaterThanOrEqualConstraint = {}
---@type NUnit.Framework.Constraints.GreaterThanOrEqualConstraint
CS.NUnit.Framework.Constraints.GreaterThanOrEqualConstraint = NUnit.Framework.Constraints.GreaterThanOrEqualConstraint

---@class NUnit.Framework.Constraints.AttributeConstraint : NUnit.Framework.Constraints.PrefixConstraint
NUnit.Framework.Constraints.AttributeConstraint = {}
---@type NUnit.Framework.Constraints.AttributeConstraint
CS.NUnit.Framework.Constraints.AttributeConstraint = NUnit.Framework.Constraints.AttributeConstraint

---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function NUnit.Framework.Constraints.AttributeConstraint:ApplyTo(actual)end
---@class NUnit.Framework.Constraints.ToleranceMode : System.Enum
NUnit.Framework.Constraints.ToleranceMode = {}
---@type NUnit.Framework.Constraints.ToleranceMode
CS.NUnit.Framework.Constraints.ToleranceMode = NUnit.Framework.Constraints.ToleranceMode

---@return System.Int32 value:0
NUnit.Framework.Constraints.ToleranceMode.Unset = 0
---@return System.Int32 value:1
NUnit.Framework.Constraints.ToleranceMode.Linear = 1
---@return System.Int32 value:2
NUnit.Framework.Constraints.ToleranceMode.Percent = 2
---@return System.Int32 value:3
NUnit.Framework.Constraints.ToleranceMode.Ulps = 3

---@class NUnit.Framework.Constraints.ResolvableConstraintExpression : NUnit.Framework.Constraints.ConstraintExpression
---@field public And NUnit.Framework.Constraints.ConstraintExpression @  getter
---@field public Or NUnit.Framework.Constraints.ConstraintExpression @  getter
NUnit.Framework.Constraints.ResolvableConstraintExpression = {}
---@type NUnit.Framework.Constraints.ResolvableConstraintExpression
CS.NUnit.Framework.Constraints.ResolvableConstraintExpression = NUnit.Framework.Constraints.ResolvableConstraintExpression

---@class NUnit.Framework.Constraints.NotOperator : NUnit.Framework.Constraints.PrefixOperator
NUnit.Framework.Constraints.NotOperator = {}
---@type NUnit.Framework.Constraints.NotOperator
CS.NUnit.Framework.Constraints.NotOperator = NUnit.Framework.Constraints.NotOperator

---@param constraint NUnit.Framework.Constraints.IConstraint
---@return NUnit.Framework.Constraints.IConstraint
function NUnit.Framework.Constraints.NotOperator:ApplyPrefix(constraint)end
