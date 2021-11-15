---@class System.CodeDom.CodeObject : System.Object
---@field public UserData System.Collections.IDictionary @  getter
System.CodeDom.CodeObject = {}
---@type System.CodeDom.CodeObject
CS.System.CodeDom.CodeObject = System.CodeDom.CodeObject

---@class System.CodeDom.CodeTypeReferenceOptions : System.Enum
System.CodeDom.CodeTypeReferenceOptions = {}
---@type System.CodeDom.CodeTypeReferenceOptions
CS.System.CodeDom.CodeTypeReferenceOptions = System.CodeDom.CodeTypeReferenceOptions

---@return System.Int32 value:1
System.CodeDom.CodeTypeReferenceOptions.GlobalReference = 1

---@class System.CodeDom.CodeTypeReference : System.CodeDom.CodeObject
---@field public ArrayElementType System.CodeDom.CodeTypeReference @ setter getter
---@field public ArrayRank System.Int32 @ setter getter
---@field public BaseType System.String @ setter getter
---@field public Options System.CodeDom.CodeTypeReferenceOptions @ setter getter
---@field public TypeArguments System.CodeDom.CodeTypeReferenceCollection @  getter
System.CodeDom.CodeTypeReference = {}
---@type System.CodeDom.CodeTypeReference
CS.System.CodeDom.CodeTypeReference = System.CodeDom.CodeTypeReference

---@class System.CodeDom.CodeTypeReferenceCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeTypeReference @ setter getter
System.CodeDom.CodeTypeReferenceCollection = {}
---@type System.CodeDom.CodeTypeReferenceCollection
CS.System.CodeDom.CodeTypeReferenceCollection = System.CodeDom.CodeTypeReferenceCollection

---@overload fun(value:System.String):System.Void
---@overload fun(value:System.Type):System.Void
---@param value System.CodeDom.CodeTypeReference
---@return System.Int32
function System.CodeDom.CodeTypeReferenceCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeTypeReferenceCollection):System.Void
---@param value System.CodeDom.CodeTypeReference[]
---@return System.Void
function System.CodeDom.CodeTypeReferenceCollection:AddRange(value)end
---@param value System.CodeDom.CodeTypeReference
---@return System.Boolean
function System.CodeDom.CodeTypeReferenceCollection:Contains(value)end
---@param array System.CodeDom.CodeTypeReference[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeTypeReferenceCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeTypeReference
---@return System.Int32
function System.CodeDom.CodeTypeReferenceCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeTypeReference
---@return System.Void
function System.CodeDom.CodeTypeReferenceCollection:Insert(index, value)end
---@param value System.CodeDom.CodeTypeReference
---@return System.Void
function System.CodeDom.CodeTypeReferenceCollection:Remove(value)end
---@class System.CodeDom.CodeArgumentReferenceExpression : System.CodeDom.CodeExpression
---@field public ParameterName System.String @ setter getter
System.CodeDom.CodeArgumentReferenceExpression = {}
---@type System.CodeDom.CodeArgumentReferenceExpression
CS.System.CodeDom.CodeArgumentReferenceExpression = System.CodeDom.CodeArgumentReferenceExpression

---@class System.CodeDom.CodeArrayCreateExpression : System.CodeDom.CodeExpression
---@field public CreateType System.CodeDom.CodeTypeReference @ setter getter
---@field public Initializers System.CodeDom.CodeExpressionCollection @  getter
---@field public Size System.Int32 @ setter getter
---@field public SizeExpression System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeArrayCreateExpression = {}
---@type System.CodeDom.CodeArrayCreateExpression
CS.System.CodeDom.CodeArrayCreateExpression = System.CodeDom.CodeArrayCreateExpression

---@class System.CodeDom.CodeArrayIndexerExpression : System.CodeDom.CodeExpression
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public Indices System.CodeDom.CodeExpressionCollection @  getter
System.CodeDom.CodeArrayIndexerExpression = {}
---@type System.CodeDom.CodeArrayIndexerExpression
CS.System.CodeDom.CodeArrayIndexerExpression = System.CodeDom.CodeArrayIndexerExpression

---@class System.CodeDom.CodeAssignStatement : System.CodeDom.CodeStatement
---@field public Left System.CodeDom.CodeExpression @ setter getter
---@field public Right System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeAssignStatement = {}
---@type System.CodeDom.CodeAssignStatement
CS.System.CodeDom.CodeAssignStatement = System.CodeDom.CodeAssignStatement

---@class System.CodeDom.CodeAttachEventStatement : System.CodeDom.CodeStatement
---@field public Event System.CodeDom.CodeEventReferenceExpression @ setter getter
---@field public Listener System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeAttachEventStatement = {}
---@type System.CodeDom.CodeAttachEventStatement
CS.System.CodeDom.CodeAttachEventStatement = System.CodeDom.CodeAttachEventStatement

---@class System.CodeDom.CodeAttributeArgument : System.Object
---@field public Name System.String @ setter getter
---@field public Value System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeAttributeArgument = {}
---@type System.CodeDom.CodeAttributeArgument
CS.System.CodeDom.CodeAttributeArgument = System.CodeDom.CodeAttributeArgument

---@class System.CodeDom.CodeAttributeArgumentCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeAttributeArgument @ setter getter
System.CodeDom.CodeAttributeArgumentCollection = {}
---@type System.CodeDom.CodeAttributeArgumentCollection
CS.System.CodeDom.CodeAttributeArgumentCollection = System.CodeDom.CodeAttributeArgumentCollection

---@param value System.CodeDom.CodeAttributeArgument
---@return System.Int32
function System.CodeDom.CodeAttributeArgumentCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeAttributeArgumentCollection):System.Void
---@param value System.CodeDom.CodeAttributeArgument[]
---@return System.Void
function System.CodeDom.CodeAttributeArgumentCollection:AddRange(value)end
---@param value System.CodeDom.CodeAttributeArgument
---@return System.Boolean
function System.CodeDom.CodeAttributeArgumentCollection:Contains(value)end
---@param array System.CodeDom.CodeAttributeArgument[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeAttributeArgumentCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeAttributeArgument
---@return System.Int32
function System.CodeDom.CodeAttributeArgumentCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeAttributeArgument
---@return System.Void
function System.CodeDom.CodeAttributeArgumentCollection:Insert(index, value)end
---@param value System.CodeDom.CodeAttributeArgument
---@return System.Void
function System.CodeDom.CodeAttributeArgumentCollection:Remove(value)end
---@class System.CodeDom.CodeAttributeDeclaration : System.Object
---@field public Name System.String @ setter getter
---@field public Arguments System.CodeDom.CodeAttributeArgumentCollection @  getter
---@field public AttributeType System.CodeDom.CodeTypeReference @  getter
System.CodeDom.CodeAttributeDeclaration = {}
---@type System.CodeDom.CodeAttributeDeclaration
CS.System.CodeDom.CodeAttributeDeclaration = System.CodeDom.CodeAttributeDeclaration

---@class System.CodeDom.CodeAttributeDeclarationCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeAttributeDeclaration @ setter getter
System.CodeDom.CodeAttributeDeclarationCollection = {}
---@type System.CodeDom.CodeAttributeDeclarationCollection
CS.System.CodeDom.CodeAttributeDeclarationCollection = System.CodeDom.CodeAttributeDeclarationCollection

---@param value System.CodeDom.CodeAttributeDeclaration
---@return System.Int32
function System.CodeDom.CodeAttributeDeclarationCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeAttributeDeclarationCollection):System.Void
---@param value System.CodeDom.CodeAttributeDeclaration[]
---@return System.Void
function System.CodeDom.CodeAttributeDeclarationCollection:AddRange(value)end
---@param value System.CodeDom.CodeAttributeDeclaration
---@return System.Boolean
function System.CodeDom.CodeAttributeDeclarationCollection:Contains(value)end
---@param array System.CodeDom.CodeAttributeDeclaration[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeAttributeDeclarationCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeAttributeDeclaration
---@return System.Int32
function System.CodeDom.CodeAttributeDeclarationCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeAttributeDeclaration
---@return System.Void
function System.CodeDom.CodeAttributeDeclarationCollection:Insert(index, value)end
---@param value System.CodeDom.CodeAttributeDeclaration
---@return System.Void
function System.CodeDom.CodeAttributeDeclarationCollection:Remove(value)end
---@class System.CodeDom.CodeBaseReferenceExpression : System.CodeDom.CodeExpression
System.CodeDom.CodeBaseReferenceExpression = {}
---@type System.CodeDom.CodeBaseReferenceExpression
CS.System.CodeDom.CodeBaseReferenceExpression = System.CodeDom.CodeBaseReferenceExpression

---@class System.CodeDom.CodeBinaryOperatorExpression : System.CodeDom.CodeExpression
---@field public Right System.CodeDom.CodeExpression @ setter getter
---@field public Left System.CodeDom.CodeExpression @ setter getter
---@field public Operator System.CodeDom.CodeBinaryOperatorType @ setter getter
System.CodeDom.CodeBinaryOperatorExpression = {}
---@type System.CodeDom.CodeBinaryOperatorExpression
CS.System.CodeDom.CodeBinaryOperatorExpression = System.CodeDom.CodeBinaryOperatorExpression

---@class System.CodeDom.CodeBinaryOperatorType : System.Enum
System.CodeDom.CodeBinaryOperatorType = {}
---@type System.CodeDom.CodeBinaryOperatorType
CS.System.CodeDom.CodeBinaryOperatorType = System.CodeDom.CodeBinaryOperatorType

---@return System.Int32 value:0
System.CodeDom.CodeBinaryOperatorType.Add = 0
---@return System.Int32 value:1
System.CodeDom.CodeBinaryOperatorType.Subtract = 1
---@return System.Int32 value:2
System.CodeDom.CodeBinaryOperatorType.Multiply = 2
---@return System.Int32 value:3
System.CodeDom.CodeBinaryOperatorType.Divide = 3
---@return System.Int32 value:4
System.CodeDom.CodeBinaryOperatorType.Modulus = 4
---@return System.Int32 value:5
System.CodeDom.CodeBinaryOperatorType.Assign = 5
---@return System.Int32 value:6
System.CodeDom.CodeBinaryOperatorType.IdentityInequality = 6
---@return System.Int32 value:7
System.CodeDom.CodeBinaryOperatorType.IdentityEquality = 7
---@return System.Int32 value:8
System.CodeDom.CodeBinaryOperatorType.ValueEquality = 8
---@return System.Int32 value:9
System.CodeDom.CodeBinaryOperatorType.BitwiseOr = 9
---@return System.Int32 value:10
System.CodeDom.CodeBinaryOperatorType.BitwiseAnd = 10
---@return System.Int32 value:11
System.CodeDom.CodeBinaryOperatorType.BooleanOr = 11
---@return System.Int32 value:12
System.CodeDom.CodeBinaryOperatorType.BooleanAnd = 12
---@return System.Int32 value:13
System.CodeDom.CodeBinaryOperatorType.LessThan = 13
---@return System.Int32 value:14
System.CodeDom.CodeBinaryOperatorType.LessThanOrEqual = 14
---@return System.Int32 value:15
System.CodeDom.CodeBinaryOperatorType.GreaterThan = 15
---@return System.Int32 value:16
System.CodeDom.CodeBinaryOperatorType.GreaterThanOrEqual = 16

---@class System.CodeDom.CodeCastExpression : System.CodeDom.CodeExpression
---@field public TargetType System.CodeDom.CodeTypeReference @ setter getter
---@field public Expression System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeCastExpression = {}
---@type System.CodeDom.CodeCastExpression
CS.System.CodeDom.CodeCastExpression = System.CodeDom.CodeCastExpression

---@class System.CodeDom.CodeCatchClause : System.Object
---@field public LocalName System.String @ setter getter
---@field public CatchExceptionType System.CodeDom.CodeTypeReference @ setter getter
---@field public Statements System.CodeDom.CodeStatementCollection @  getter
System.CodeDom.CodeCatchClause = {}
---@type System.CodeDom.CodeCatchClause
CS.System.CodeDom.CodeCatchClause = System.CodeDom.CodeCatchClause

---@class System.CodeDom.CodeCatchClauseCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeCatchClause @ setter getter
System.CodeDom.CodeCatchClauseCollection = {}
---@type System.CodeDom.CodeCatchClauseCollection
CS.System.CodeDom.CodeCatchClauseCollection = System.CodeDom.CodeCatchClauseCollection

---@param value System.CodeDom.CodeCatchClause
---@return System.Int32
function System.CodeDom.CodeCatchClauseCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeCatchClauseCollection):System.Void
---@param value System.CodeDom.CodeCatchClause[]
---@return System.Void
function System.CodeDom.CodeCatchClauseCollection:AddRange(value)end
---@param value System.CodeDom.CodeCatchClause
---@return System.Boolean
function System.CodeDom.CodeCatchClauseCollection:Contains(value)end
---@param array System.CodeDom.CodeCatchClause[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeCatchClauseCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeCatchClause
---@return System.Int32
function System.CodeDom.CodeCatchClauseCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeCatchClause
---@return System.Void
function System.CodeDom.CodeCatchClauseCollection:Insert(index, value)end
---@param value System.CodeDom.CodeCatchClause
---@return System.Void
function System.CodeDom.CodeCatchClauseCollection:Remove(value)end
---@class System.CodeDom.CodeChecksumPragma : System.CodeDom.CodeDirective
---@field public FileName System.String @ setter getter
---@field public ChecksumAlgorithmId System.Guid @ setter getter
---@field public ChecksumData System.Byte[] @ setter getter
System.CodeDom.CodeChecksumPragma = {}
---@type System.CodeDom.CodeChecksumPragma
CS.System.CodeDom.CodeChecksumPragma = System.CodeDom.CodeChecksumPragma

---@class System.CodeDom.CodeComment : System.CodeDom.CodeObject
---@field public DocComment System.Boolean @ setter getter
---@field public Text System.String @ setter getter
System.CodeDom.CodeComment = {}
---@type System.CodeDom.CodeComment
CS.System.CodeDom.CodeComment = System.CodeDom.CodeComment

---@class System.CodeDom.CodeCommentStatement : System.CodeDom.CodeStatement
---@field public Comment System.CodeDom.CodeComment @ setter getter
System.CodeDom.CodeCommentStatement = {}
---@type System.CodeDom.CodeCommentStatement
CS.System.CodeDom.CodeCommentStatement = System.CodeDom.CodeCommentStatement

---@class System.CodeDom.CodeCommentStatementCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeCommentStatement @ setter getter
System.CodeDom.CodeCommentStatementCollection = {}
---@type System.CodeDom.CodeCommentStatementCollection
CS.System.CodeDom.CodeCommentStatementCollection = System.CodeDom.CodeCommentStatementCollection

---@param value System.CodeDom.CodeCommentStatement
---@return System.Int32
function System.CodeDom.CodeCommentStatementCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeCommentStatementCollection):System.Void
---@param value System.CodeDom.CodeCommentStatement[]
---@return System.Void
function System.CodeDom.CodeCommentStatementCollection:AddRange(value)end
---@param value System.CodeDom.CodeCommentStatement
---@return System.Boolean
function System.CodeDom.CodeCommentStatementCollection:Contains(value)end
---@param array System.CodeDom.CodeCommentStatement[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeCommentStatementCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeCommentStatement
---@return System.Int32
function System.CodeDom.CodeCommentStatementCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeCommentStatement
---@return System.Void
function System.CodeDom.CodeCommentStatementCollection:Insert(index, value)end
---@param value System.CodeDom.CodeCommentStatement
---@return System.Void
function System.CodeDom.CodeCommentStatementCollection:Remove(value)end
---@class System.CodeDom.CodeCompileUnit : System.CodeDom.CodeObject
---@field public Namespaces System.CodeDom.CodeNamespaceCollection @  getter
---@field public ReferencedAssemblies System.Collections.Specialized.StringCollection @  getter
---@field public AssemblyCustomAttributes System.CodeDom.CodeAttributeDeclarationCollection @  getter
---@field public StartDirectives System.CodeDom.CodeDirectiveCollection @  getter
---@field public EndDirectives System.CodeDom.CodeDirectiveCollection @  getter
System.CodeDom.CodeCompileUnit = {}
---@type System.CodeDom.CodeCompileUnit
CS.System.CodeDom.CodeCompileUnit = System.CodeDom.CodeCompileUnit

---@class System.CodeDom.CodeConditionStatement : System.CodeDom.CodeStatement
---@field public Condition System.CodeDom.CodeExpression @ setter getter
---@field public TrueStatements System.CodeDom.CodeStatementCollection @  getter
---@field public FalseStatements System.CodeDom.CodeStatementCollection @  getter
System.CodeDom.CodeConditionStatement = {}
---@type System.CodeDom.CodeConditionStatement
CS.System.CodeDom.CodeConditionStatement = System.CodeDom.CodeConditionStatement

---@class System.CodeDom.CodeConstructor : System.CodeDom.CodeMemberMethod
---@field public BaseConstructorArgs System.CodeDom.CodeExpressionCollection @  getter
---@field public ChainedConstructorArgs System.CodeDom.CodeExpressionCollection @  getter
System.CodeDom.CodeConstructor = {}
---@type System.CodeDom.CodeConstructor
CS.System.CodeDom.CodeConstructor = System.CodeDom.CodeConstructor

---@class System.CodeDom.CodeDefaultValueExpression : System.CodeDom.CodeExpression
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
System.CodeDom.CodeDefaultValueExpression = {}
---@type System.CodeDom.CodeDefaultValueExpression
CS.System.CodeDom.CodeDefaultValueExpression = System.CodeDom.CodeDefaultValueExpression

---@class System.CodeDom.CodeDelegateCreateExpression : System.CodeDom.CodeExpression
---@field public DelegateType System.CodeDom.CodeTypeReference @ setter getter
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public MethodName System.String @ setter getter
System.CodeDom.CodeDelegateCreateExpression = {}
---@type System.CodeDom.CodeDelegateCreateExpression
CS.System.CodeDom.CodeDelegateCreateExpression = System.CodeDom.CodeDelegateCreateExpression

---@class System.CodeDom.CodeDelegateInvokeExpression : System.CodeDom.CodeExpression
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public Parameters System.CodeDom.CodeExpressionCollection @  getter
System.CodeDom.CodeDelegateInvokeExpression = {}
---@type System.CodeDom.CodeDelegateInvokeExpression
CS.System.CodeDom.CodeDelegateInvokeExpression = System.CodeDom.CodeDelegateInvokeExpression

---@class System.CodeDom.CodeDirectionExpression : System.CodeDom.CodeExpression
---@field public Expression System.CodeDom.CodeExpression @ setter getter
---@field public Direction System.CodeDom.FieldDirection @ setter getter
System.CodeDom.CodeDirectionExpression = {}
---@type System.CodeDom.CodeDirectionExpression
CS.System.CodeDom.CodeDirectionExpression = System.CodeDom.CodeDirectionExpression

---@class System.CodeDom.CodeDirective : System.CodeDom.CodeObject
System.CodeDom.CodeDirective = {}
---@type System.CodeDom.CodeDirective
CS.System.CodeDom.CodeDirective = System.CodeDom.CodeDirective

---@class System.CodeDom.CodeDirectiveCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeDirective @ setter getter
System.CodeDom.CodeDirectiveCollection = {}
---@type System.CodeDom.CodeDirectiveCollection
CS.System.CodeDom.CodeDirectiveCollection = System.CodeDom.CodeDirectiveCollection

---@param value System.CodeDom.CodeDirective
---@return System.Int32
function System.CodeDom.CodeDirectiveCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeDirectiveCollection):System.Void
---@param value System.CodeDom.CodeDirective[]
---@return System.Void
function System.CodeDom.CodeDirectiveCollection:AddRange(value)end
---@param value System.CodeDom.CodeDirective
---@return System.Boolean
function System.CodeDom.CodeDirectiveCollection:Contains(value)end
---@param array System.CodeDom.CodeDirective[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeDirectiveCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeDirective
---@return System.Int32
function System.CodeDom.CodeDirectiveCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeDirective
---@return System.Void
function System.CodeDom.CodeDirectiveCollection:Insert(index, value)end
---@param value System.CodeDom.CodeDirective
---@return System.Void
function System.CodeDom.CodeDirectiveCollection:Remove(value)end
---@class System.CodeDom.CodeEntryPointMethod : System.CodeDom.CodeMemberMethod
System.CodeDom.CodeEntryPointMethod = {}
---@type System.CodeDom.CodeEntryPointMethod
CS.System.CodeDom.CodeEntryPointMethod = System.CodeDom.CodeEntryPointMethod

---@class System.CodeDom.CodeEventReferenceExpression : System.CodeDom.CodeExpression
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public EventName System.String @ setter getter
System.CodeDom.CodeEventReferenceExpression = {}
---@type System.CodeDom.CodeEventReferenceExpression
CS.System.CodeDom.CodeEventReferenceExpression = System.CodeDom.CodeEventReferenceExpression

---@class System.CodeDom.CodeExpression : System.CodeDom.CodeObject
System.CodeDom.CodeExpression = {}
---@type System.CodeDom.CodeExpression
CS.System.CodeDom.CodeExpression = System.CodeDom.CodeExpression

---@class System.CodeDom.CodeExpressionCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeExpressionCollection = {}
---@type System.CodeDom.CodeExpressionCollection
CS.System.CodeDom.CodeExpressionCollection = System.CodeDom.CodeExpressionCollection

---@param value System.CodeDom.CodeExpression
---@return System.Int32
function System.CodeDom.CodeExpressionCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeExpressionCollection):System.Void
---@param value System.CodeDom.CodeExpression[]
---@return System.Void
function System.CodeDom.CodeExpressionCollection:AddRange(value)end
---@param value System.CodeDom.CodeExpression
---@return System.Boolean
function System.CodeDom.CodeExpressionCollection:Contains(value)end
---@param array System.CodeDom.CodeExpression[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeExpressionCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeExpression
---@return System.Int32
function System.CodeDom.CodeExpressionCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeExpression
---@return System.Void
function System.CodeDom.CodeExpressionCollection:Insert(index, value)end
---@param value System.CodeDom.CodeExpression
---@return System.Void
function System.CodeDom.CodeExpressionCollection:Remove(value)end
---@class System.CodeDom.CodeExpressionStatement : System.CodeDom.CodeStatement
---@field public Expression System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeExpressionStatement = {}
---@type System.CodeDom.CodeExpressionStatement
CS.System.CodeDom.CodeExpressionStatement = System.CodeDom.CodeExpressionStatement

---@class System.CodeDom.CodeFieldReferenceExpression : System.CodeDom.CodeExpression
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public FieldName System.String @ setter getter
System.CodeDom.CodeFieldReferenceExpression = {}
---@type System.CodeDom.CodeFieldReferenceExpression
CS.System.CodeDom.CodeFieldReferenceExpression = System.CodeDom.CodeFieldReferenceExpression

---@class System.CodeDom.CodeGotoStatement : System.CodeDom.CodeStatement
---@field public Label System.String @ setter getter
System.CodeDom.CodeGotoStatement = {}
---@type System.CodeDom.CodeGotoStatement
CS.System.CodeDom.CodeGotoStatement = System.CodeDom.CodeGotoStatement

---@class System.CodeDom.CodeIndexerExpression : System.CodeDom.CodeExpression
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public Indices System.CodeDom.CodeExpressionCollection @  getter
System.CodeDom.CodeIndexerExpression = {}
---@type System.CodeDom.CodeIndexerExpression
CS.System.CodeDom.CodeIndexerExpression = System.CodeDom.CodeIndexerExpression

---@class System.CodeDom.CodeIterationStatement : System.CodeDom.CodeStatement
---@field public InitStatement System.CodeDom.CodeStatement @ setter getter
---@field public TestExpression System.CodeDom.CodeExpression @ setter getter
---@field public IncrementStatement System.CodeDom.CodeStatement @ setter getter
---@field public Statements System.CodeDom.CodeStatementCollection @  getter
System.CodeDom.CodeIterationStatement = {}
---@type System.CodeDom.CodeIterationStatement
CS.System.CodeDom.CodeIterationStatement = System.CodeDom.CodeIterationStatement

---@class System.CodeDom.CodeLabeledStatement : System.CodeDom.CodeStatement
---@field public Label System.String @ setter getter
---@field public Statement System.CodeDom.CodeStatement @ setter getter
System.CodeDom.CodeLabeledStatement = {}
---@type System.CodeDom.CodeLabeledStatement
CS.System.CodeDom.CodeLabeledStatement = System.CodeDom.CodeLabeledStatement

---@class System.CodeDom.CodeLinePragma : System.Object
---@field public FileName System.String @ setter getter
---@field public LineNumber System.Int32 @ setter getter
System.CodeDom.CodeLinePragma = {}
---@type System.CodeDom.CodeLinePragma
CS.System.CodeDom.CodeLinePragma = System.CodeDom.CodeLinePragma

---@class System.CodeDom.CodeMemberEvent : System.CodeDom.CodeTypeMember
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
---@field public PrivateImplementationType System.CodeDom.CodeTypeReference @ setter getter
---@field public ImplementationTypes System.CodeDom.CodeTypeReferenceCollection @  getter
System.CodeDom.CodeMemberEvent = {}
---@type System.CodeDom.CodeMemberEvent
CS.System.CodeDom.CodeMemberEvent = System.CodeDom.CodeMemberEvent

---@class System.CodeDom.CodeMemberField : System.CodeDom.CodeTypeMember
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
---@field public InitExpression System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeMemberField = {}
---@type System.CodeDom.CodeMemberField
CS.System.CodeDom.CodeMemberField = System.CodeDom.CodeMemberField

---@class System.CodeDom.CodeMemberMethod : System.CodeDom.CodeTypeMember
---@field public ReturnType System.CodeDom.CodeTypeReference @ setter getter
---@field public Statements System.CodeDom.CodeStatementCollection @  getter
---@field public Parameters System.CodeDom.CodeParameterDeclarationExpressionCollection @  getter
---@field public PrivateImplementationType System.CodeDom.CodeTypeReference @ setter getter
---@field public ImplementationTypes System.CodeDom.CodeTypeReferenceCollection @  getter
---@field public ReturnTypeCustomAttributes System.CodeDom.CodeAttributeDeclarationCollection @  getter
---@field public TypeParameters System.CodeDom.CodeTypeParameterCollection @  getter
System.CodeDom.CodeMemberMethod = {}
---@type System.CodeDom.CodeMemberMethod
CS.System.CodeDom.CodeMemberMethod = System.CodeDom.CodeMemberMethod

---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeMemberMethod:add_PopulateParameters(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeMemberMethod:remove_PopulateParameters(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeMemberMethod:add_PopulateStatements(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeMemberMethod:remove_PopulateStatements(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeMemberMethod:add_PopulateImplementationTypes(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeMemberMethod:remove_PopulateImplementationTypes(value)end
---@class System.CodeDom.CodeMemberProperty : System.CodeDom.CodeTypeMember
---@field public PrivateImplementationType System.CodeDom.CodeTypeReference @ setter getter
---@field public ImplementationTypes System.CodeDom.CodeTypeReferenceCollection @  getter
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
---@field public HasGet System.Boolean @ setter getter
---@field public HasSet System.Boolean @ setter getter
---@field public GetStatements System.CodeDom.CodeStatementCollection @  getter
---@field public SetStatements System.CodeDom.CodeStatementCollection @  getter
---@field public Parameters System.CodeDom.CodeParameterDeclarationExpressionCollection @  getter
System.CodeDom.CodeMemberProperty = {}
---@type System.CodeDom.CodeMemberProperty
CS.System.CodeDom.CodeMemberProperty = System.CodeDom.CodeMemberProperty

---@class System.CodeDom.CodeMethodInvokeExpression : System.CodeDom.CodeExpression
---@field public Method System.CodeDom.CodeMethodReferenceExpression @ setter getter
---@field public Parameters System.CodeDom.CodeExpressionCollection @  getter
System.CodeDom.CodeMethodInvokeExpression = {}
---@type System.CodeDom.CodeMethodInvokeExpression
CS.System.CodeDom.CodeMethodInvokeExpression = System.CodeDom.CodeMethodInvokeExpression

---@class System.CodeDom.CodeMethodReturnStatement : System.CodeDom.CodeStatement
---@field public Expression System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeMethodReturnStatement = {}
---@type System.CodeDom.CodeMethodReturnStatement
CS.System.CodeDom.CodeMethodReturnStatement = System.CodeDom.CodeMethodReturnStatement

---@class System.CodeDom.CodeNamespace : System.CodeDom.CodeObject
---@field public Types System.CodeDom.CodeTypeDeclarationCollection @  getter
---@field public Imports System.CodeDom.CodeNamespaceImportCollection @  getter
---@field public Name System.String @ setter getter
---@field public Comments System.CodeDom.CodeCommentStatementCollection @  getter
System.CodeDom.CodeNamespace = {}
---@type System.CodeDom.CodeNamespace
CS.System.CodeDom.CodeNamespace = System.CodeDom.CodeNamespace

---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeNamespace:add_PopulateComments(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeNamespace:remove_PopulateComments(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeNamespace:add_PopulateImports(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeNamespace:remove_PopulateImports(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeNamespace:add_PopulateTypes(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeNamespace:remove_PopulateTypes(value)end
---@class System.CodeDom.CodeNamespaceCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeNamespace @ setter getter
System.CodeDom.CodeNamespaceCollection = {}
---@type System.CodeDom.CodeNamespaceCollection
CS.System.CodeDom.CodeNamespaceCollection = System.CodeDom.CodeNamespaceCollection

---@param value System.CodeDom.CodeNamespace
---@return System.Int32
function System.CodeDom.CodeNamespaceCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeNamespaceCollection):System.Void
---@param value System.CodeDom.CodeNamespace[]
---@return System.Void
function System.CodeDom.CodeNamespaceCollection:AddRange(value)end
---@param value System.CodeDom.CodeNamespace
---@return System.Boolean
function System.CodeDom.CodeNamespaceCollection:Contains(value)end
---@param array System.CodeDom.CodeNamespace[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeNamespaceCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeNamespace
---@return System.Int32
function System.CodeDom.CodeNamespaceCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeNamespace
---@return System.Void
function System.CodeDom.CodeNamespaceCollection:Insert(index, value)end
---@param value System.CodeDom.CodeNamespace
---@return System.Void
function System.CodeDom.CodeNamespaceCollection:Remove(value)end
---@class System.CodeDom.CodeNamespaceImport : System.CodeDom.CodeObject
---@field public LinePragma System.CodeDom.CodeLinePragma @ setter getter
---@field public Namespace System.String @ setter getter
System.CodeDom.CodeNamespaceImport = {}
---@type System.CodeDom.CodeNamespaceImport
CS.System.CodeDom.CodeNamespaceImport = System.CodeDom.CodeNamespaceImport

---@class System.CodeDom.CodeNamespaceImportCollection : System.Object
---@field public Item System.CodeDom.CodeNamespaceImport @ setter getter
---@field public Count System.Int32 @  getter
System.CodeDom.CodeNamespaceImportCollection = {}
---@type System.CodeDom.CodeNamespaceImportCollection
CS.System.CodeDom.CodeNamespaceImportCollection = System.CodeDom.CodeNamespaceImportCollection

---@param value System.CodeDom.CodeNamespaceImport
---@return System.Void
function System.CodeDom.CodeNamespaceImportCollection:Add(value)end
---@param value System.CodeDom.CodeNamespaceImport[]
---@return System.Void
function System.CodeDom.CodeNamespaceImportCollection:AddRange(value)end
---@return System.Void
function System.CodeDom.CodeNamespaceImportCollection:Clear()end
---@return System.Collections.IEnumerator
function System.CodeDom.CodeNamespaceImportCollection:GetEnumerator()end
---@class System.CodeDom.CodeObjectCreateExpression : System.CodeDom.CodeExpression
---@field public CreateType System.CodeDom.CodeTypeReference @ setter getter
---@field public Parameters System.CodeDom.CodeExpressionCollection @  getter
System.CodeDom.CodeObjectCreateExpression = {}
---@type System.CodeDom.CodeObjectCreateExpression
CS.System.CodeDom.CodeObjectCreateExpression = System.CodeDom.CodeObjectCreateExpression

---@class System.CodeDom.CodeParameterDeclarationExpression : System.CodeDom.CodeExpression
---@field public CustomAttributes System.CodeDom.CodeAttributeDeclarationCollection @ setter getter
---@field public Direction System.CodeDom.FieldDirection @ setter getter
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
---@field public Name System.String @ setter getter
System.CodeDom.CodeParameterDeclarationExpression = {}
---@type System.CodeDom.CodeParameterDeclarationExpression
CS.System.CodeDom.CodeParameterDeclarationExpression = System.CodeDom.CodeParameterDeclarationExpression

---@class System.CodeDom.CodeParameterDeclarationExpressionCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeParameterDeclarationExpression @ setter getter
System.CodeDom.CodeParameterDeclarationExpressionCollection = {}
---@type System.CodeDom.CodeParameterDeclarationExpressionCollection
CS.System.CodeDom.CodeParameterDeclarationExpressionCollection = System.CodeDom.CodeParameterDeclarationExpressionCollection

---@param value System.CodeDom.CodeParameterDeclarationExpression
---@return System.Int32
function System.CodeDom.CodeParameterDeclarationExpressionCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeParameterDeclarationExpressionCollection):System.Void
---@param value System.CodeDom.CodeParameterDeclarationExpression[]
---@return System.Void
function System.CodeDom.CodeParameterDeclarationExpressionCollection:AddRange(value)end
---@param value System.CodeDom.CodeParameterDeclarationExpression
---@return System.Boolean
function System.CodeDom.CodeParameterDeclarationExpressionCollection:Contains(value)end
---@param array System.CodeDom.CodeParameterDeclarationExpression[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeParameterDeclarationExpressionCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeParameterDeclarationExpression
---@return System.Int32
function System.CodeDom.CodeParameterDeclarationExpressionCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeParameterDeclarationExpression
---@return System.Void
function System.CodeDom.CodeParameterDeclarationExpressionCollection:Insert(index, value)end
---@param value System.CodeDom.CodeParameterDeclarationExpression
---@return System.Void
function System.CodeDom.CodeParameterDeclarationExpressionCollection:Remove(value)end
---@class System.CodeDom.CodePrimitiveExpression : System.CodeDom.CodeExpression
---@field public Value System.Object @ setter getter
System.CodeDom.CodePrimitiveExpression = {}
---@type System.CodeDom.CodePrimitiveExpression
CS.System.CodeDom.CodePrimitiveExpression = System.CodeDom.CodePrimitiveExpression

---@class System.CodeDom.CodePropertyReferenceExpression : System.CodeDom.CodeExpression
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public PropertyName System.String @ setter getter
System.CodeDom.CodePropertyReferenceExpression = {}
---@type System.CodeDom.CodePropertyReferenceExpression
CS.System.CodeDom.CodePropertyReferenceExpression = System.CodeDom.CodePropertyReferenceExpression

---@class System.CodeDom.CodePropertySetValueReferenceExpression : System.CodeDom.CodeExpression
System.CodeDom.CodePropertySetValueReferenceExpression = {}
---@type System.CodeDom.CodePropertySetValueReferenceExpression
CS.System.CodeDom.CodePropertySetValueReferenceExpression = System.CodeDom.CodePropertySetValueReferenceExpression

---@class System.CodeDom.CodeRegionDirective : System.CodeDom.CodeDirective
---@field public RegionText System.String @ setter getter
---@field public RegionMode System.CodeDom.CodeRegionMode @ setter getter
System.CodeDom.CodeRegionDirective = {}
---@type System.CodeDom.CodeRegionDirective
CS.System.CodeDom.CodeRegionDirective = System.CodeDom.CodeRegionDirective

---@class System.CodeDom.CodeRegionMode : System.Enum
System.CodeDom.CodeRegionMode = {}
---@type System.CodeDom.CodeRegionMode
CS.System.CodeDom.CodeRegionMode = System.CodeDom.CodeRegionMode

---@return System.Int32 value:0
System.CodeDom.CodeRegionMode.None = 0
---@return System.Int32 value:1
System.CodeDom.CodeRegionMode.Start = 1
---@return System.Int32 value:2
System.CodeDom.CodeRegionMode.End = 2

---@class System.CodeDom.CodeRemoveEventStatement : System.CodeDom.CodeStatement
---@field public Event System.CodeDom.CodeEventReferenceExpression @ setter getter
---@field public Listener System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeRemoveEventStatement = {}
---@type System.CodeDom.CodeRemoveEventStatement
CS.System.CodeDom.CodeRemoveEventStatement = System.CodeDom.CodeRemoveEventStatement

---@class System.CodeDom.CodeSnippetCompileUnit : System.CodeDom.CodeCompileUnit
---@field public Value System.String @ setter getter
---@field public LinePragma System.CodeDom.CodeLinePragma @ setter getter
System.CodeDom.CodeSnippetCompileUnit = {}
---@type System.CodeDom.CodeSnippetCompileUnit
CS.System.CodeDom.CodeSnippetCompileUnit = System.CodeDom.CodeSnippetCompileUnit

---@class System.CodeDom.CodeSnippetExpression : System.CodeDom.CodeExpression
---@field public Value System.String @ setter getter
System.CodeDom.CodeSnippetExpression = {}
---@type System.CodeDom.CodeSnippetExpression
CS.System.CodeDom.CodeSnippetExpression = System.CodeDom.CodeSnippetExpression

---@class System.CodeDom.CodeSnippetStatement : System.CodeDom.CodeStatement
---@field public Value System.String @ setter getter
System.CodeDom.CodeSnippetStatement = {}
---@type System.CodeDom.CodeSnippetStatement
CS.System.CodeDom.CodeSnippetStatement = System.CodeDom.CodeSnippetStatement

---@class System.CodeDom.CodeSnippetTypeMember : System.CodeDom.CodeTypeMember
---@field public Text System.String @ setter getter
System.CodeDom.CodeSnippetTypeMember = {}
---@type System.CodeDom.CodeSnippetTypeMember
CS.System.CodeDom.CodeSnippetTypeMember = System.CodeDom.CodeSnippetTypeMember

---@class System.CodeDom.CodeStatement : System.CodeDom.CodeObject
---@field public LinePragma System.CodeDom.CodeLinePragma @ setter getter
---@field public StartDirectives System.CodeDom.CodeDirectiveCollection @  getter
---@field public EndDirectives System.CodeDom.CodeDirectiveCollection @  getter
System.CodeDom.CodeStatement = {}
---@type System.CodeDom.CodeStatement
CS.System.CodeDom.CodeStatement = System.CodeDom.CodeStatement

---@class System.CodeDom.CodeStatementCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeStatement @ setter getter
System.CodeDom.CodeStatementCollection = {}
---@type System.CodeDom.CodeStatementCollection
CS.System.CodeDom.CodeStatementCollection = System.CodeDom.CodeStatementCollection

---@overload fun(value:System.CodeDom.CodeExpression):System.Int32
---@param value System.CodeDom.CodeStatement
---@return System.Int32
function System.CodeDom.CodeStatementCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeStatementCollection):System.Void
---@param value System.CodeDom.CodeStatement[]
---@return System.Void
function System.CodeDom.CodeStatementCollection:AddRange(value)end
---@param value System.CodeDom.CodeStatement
---@return System.Boolean
function System.CodeDom.CodeStatementCollection:Contains(value)end
---@param array System.CodeDom.CodeStatement[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeStatementCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeStatement
---@return System.Int32
function System.CodeDom.CodeStatementCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeStatement
---@return System.Void
function System.CodeDom.CodeStatementCollection:Insert(index, value)end
---@param value System.CodeDom.CodeStatement
---@return System.Void
function System.CodeDom.CodeStatementCollection:Remove(value)end
---@class System.CodeDom.CodeThisReferenceExpression : System.CodeDom.CodeExpression
System.CodeDom.CodeThisReferenceExpression = {}
---@type System.CodeDom.CodeThisReferenceExpression
CS.System.CodeDom.CodeThisReferenceExpression = System.CodeDom.CodeThisReferenceExpression

---@class System.CodeDom.CodeThrowExceptionStatement : System.CodeDom.CodeStatement
---@field public ToThrow System.CodeDom.CodeExpression @ setter getter
System.CodeDom.CodeThrowExceptionStatement = {}
---@type System.CodeDom.CodeThrowExceptionStatement
CS.System.CodeDom.CodeThrowExceptionStatement = System.CodeDom.CodeThrowExceptionStatement

---@class System.CodeDom.CodeTryCatchFinallyStatement : System.CodeDom.CodeStatement
---@field public TryStatements System.CodeDom.CodeStatementCollection @  getter
---@field public CatchClauses System.CodeDom.CodeCatchClauseCollection @  getter
---@field public FinallyStatements System.CodeDom.CodeStatementCollection @  getter
System.CodeDom.CodeTryCatchFinallyStatement = {}
---@type System.CodeDom.CodeTryCatchFinallyStatement
CS.System.CodeDom.CodeTryCatchFinallyStatement = System.CodeDom.CodeTryCatchFinallyStatement

---@class System.CodeDom.CodeTypeConstructor : System.CodeDom.CodeMemberMethod
System.CodeDom.CodeTypeConstructor = {}
---@type System.CodeDom.CodeTypeConstructor
CS.System.CodeDom.CodeTypeConstructor = System.CodeDom.CodeTypeConstructor

---@class System.CodeDom.CodeTypeDeclaration : System.CodeDom.CodeTypeMember
---@field public TypeAttributes System.Reflection.TypeAttributes @ setter getter
---@field public BaseTypes System.CodeDom.CodeTypeReferenceCollection @  getter
---@field public IsClass System.Boolean @ setter getter
---@field public IsStruct System.Boolean @ setter getter
---@field public IsEnum System.Boolean @ setter getter
---@field public IsInterface System.Boolean @ setter getter
---@field public IsPartial System.Boolean @ setter getter
---@field public Members System.CodeDom.CodeTypeMemberCollection @  getter
---@field public TypeParameters System.CodeDom.CodeTypeParameterCollection @  getter
System.CodeDom.CodeTypeDeclaration = {}
---@type System.CodeDom.CodeTypeDeclaration
CS.System.CodeDom.CodeTypeDeclaration = System.CodeDom.CodeTypeDeclaration

---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeTypeDeclaration:add_PopulateBaseTypes(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeTypeDeclaration:remove_PopulateBaseTypes(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeTypeDeclaration:add_PopulateMembers(value)end
---@param value System.EventHandler
---@return System.Void
function System.CodeDom.CodeTypeDeclaration:remove_PopulateMembers(value)end
---@class System.CodeDom.CodeTypeDeclarationCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeTypeDeclaration @ setter getter
System.CodeDom.CodeTypeDeclarationCollection = {}
---@type System.CodeDom.CodeTypeDeclarationCollection
CS.System.CodeDom.CodeTypeDeclarationCollection = System.CodeDom.CodeTypeDeclarationCollection

---@param value System.CodeDom.CodeTypeDeclaration
---@return System.Int32
function System.CodeDom.CodeTypeDeclarationCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeTypeDeclarationCollection):System.Void
---@param value System.CodeDom.CodeTypeDeclaration[]
---@return System.Void
function System.CodeDom.CodeTypeDeclarationCollection:AddRange(value)end
---@param value System.CodeDom.CodeTypeDeclaration
---@return System.Boolean
function System.CodeDom.CodeTypeDeclarationCollection:Contains(value)end
---@param array System.CodeDom.CodeTypeDeclaration[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeTypeDeclarationCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeTypeDeclaration
---@return System.Int32
function System.CodeDom.CodeTypeDeclarationCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeTypeDeclaration
---@return System.Void
function System.CodeDom.CodeTypeDeclarationCollection:Insert(index, value)end
---@param value System.CodeDom.CodeTypeDeclaration
---@return System.Void
function System.CodeDom.CodeTypeDeclarationCollection:Remove(value)end
---@class System.CodeDom.CodeTypeDelegate : System.CodeDom.CodeTypeDeclaration
---@field public ReturnType System.CodeDom.CodeTypeReference @ setter getter
---@field public Parameters System.CodeDom.CodeParameterDeclarationExpressionCollection @  getter
System.CodeDom.CodeTypeDelegate = {}
---@type System.CodeDom.CodeTypeDelegate
CS.System.CodeDom.CodeTypeDelegate = System.CodeDom.CodeTypeDelegate

---@class System.CodeDom.CodeTypeMember : System.CodeDom.CodeObject
---@field public Name System.String @ setter getter
---@field public Attributes System.CodeDom.MemberAttributes @ setter getter
---@field public CustomAttributes System.CodeDom.CodeAttributeDeclarationCollection @ setter getter
---@field public LinePragma System.CodeDom.CodeLinePragma @ setter getter
---@field public Comments System.CodeDom.CodeCommentStatementCollection @  getter
---@field public StartDirectives System.CodeDom.CodeDirectiveCollection @  getter
---@field public EndDirectives System.CodeDom.CodeDirectiveCollection @  getter
System.CodeDom.CodeTypeMember = {}
---@type System.CodeDom.CodeTypeMember
CS.System.CodeDom.CodeTypeMember = System.CodeDom.CodeTypeMember

---@class System.CodeDom.CodeTypeMemberCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeTypeMember @ setter getter
System.CodeDom.CodeTypeMemberCollection = {}
---@type System.CodeDom.CodeTypeMemberCollection
CS.System.CodeDom.CodeTypeMemberCollection = System.CodeDom.CodeTypeMemberCollection

---@param value System.CodeDom.CodeTypeMember
---@return System.Int32
function System.CodeDom.CodeTypeMemberCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeTypeMemberCollection):System.Void
---@param value System.CodeDom.CodeTypeMember[]
---@return System.Void
function System.CodeDom.CodeTypeMemberCollection:AddRange(value)end
---@param value System.CodeDom.CodeTypeMember
---@return System.Boolean
function System.CodeDom.CodeTypeMemberCollection:Contains(value)end
---@param array System.CodeDom.CodeTypeMember[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeTypeMemberCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeTypeMember
---@return System.Int32
function System.CodeDom.CodeTypeMemberCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeTypeMember
---@return System.Void
function System.CodeDom.CodeTypeMemberCollection:Insert(index, value)end
---@param value System.CodeDom.CodeTypeMember
---@return System.Void
function System.CodeDom.CodeTypeMemberCollection:Remove(value)end
---@class System.CodeDom.CodeTypeOfExpression : System.CodeDom.CodeExpression
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
System.CodeDom.CodeTypeOfExpression = {}
---@type System.CodeDom.CodeTypeOfExpression
CS.System.CodeDom.CodeTypeOfExpression = System.CodeDom.CodeTypeOfExpression

---@class System.CodeDom.CodeTypeParameter : System.CodeDom.CodeObject
---@field public Name System.String @ setter getter
---@field public Constraints System.CodeDom.CodeTypeReferenceCollection @  getter
---@field public CustomAttributes System.CodeDom.CodeAttributeDeclarationCollection @  getter
---@field public HasConstructorConstraint System.Boolean @ setter getter
System.CodeDom.CodeTypeParameter = {}
---@type System.CodeDom.CodeTypeParameter
CS.System.CodeDom.CodeTypeParameter = System.CodeDom.CodeTypeParameter

---@class System.CodeDom.CodeTypeParameterCollection : System.Collections.CollectionBase
---@field public Item System.CodeDom.CodeTypeParameter @ setter getter
System.CodeDom.CodeTypeParameterCollection = {}
---@type System.CodeDom.CodeTypeParameterCollection
CS.System.CodeDom.CodeTypeParameterCollection = System.CodeDom.CodeTypeParameterCollection

---@overload fun(value:System.String):System.Void
---@param value System.CodeDom.CodeTypeParameter
---@return System.Int32
function System.CodeDom.CodeTypeParameterCollection:Add(value)end
---@overload fun(value:System.CodeDom.CodeTypeParameterCollection):System.Void
---@param value System.CodeDom.CodeTypeParameter[]
---@return System.Void
function System.CodeDom.CodeTypeParameterCollection:AddRange(value)end
---@param value System.CodeDom.CodeTypeParameter
---@return System.Boolean
function System.CodeDom.CodeTypeParameterCollection:Contains(value)end
---@param array System.CodeDom.CodeTypeParameter[]
---@param index System.Int32
---@return System.Void
function System.CodeDom.CodeTypeParameterCollection:CopyTo(array, index)end
---@param value System.CodeDom.CodeTypeParameter
---@return System.Int32
function System.CodeDom.CodeTypeParameterCollection:IndexOf(value)end
---@param index System.Int32
---@param value System.CodeDom.CodeTypeParameter
---@return System.Void
function System.CodeDom.CodeTypeParameterCollection:Insert(index, value)end
---@param value System.CodeDom.CodeTypeParameter
---@return System.Void
function System.CodeDom.CodeTypeParameterCollection:Remove(value)end
---@class System.CodeDom.CodeTypeReferenceExpression : System.CodeDom.CodeExpression
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
System.CodeDom.CodeTypeReferenceExpression = {}
---@type System.CodeDom.CodeTypeReferenceExpression
CS.System.CodeDom.CodeTypeReferenceExpression = System.CodeDom.CodeTypeReferenceExpression

---@class System.CodeDom.CodeVariableDeclarationStatement : System.CodeDom.CodeStatement
---@field public InitExpression System.CodeDom.CodeExpression @ setter getter
---@field public Name System.String @ setter getter
---@field public Type System.CodeDom.CodeTypeReference @ setter getter
System.CodeDom.CodeVariableDeclarationStatement = {}
---@type System.CodeDom.CodeVariableDeclarationStatement
CS.System.CodeDom.CodeVariableDeclarationStatement = System.CodeDom.CodeVariableDeclarationStatement

---@class System.CodeDom.CodeVariableReferenceExpression : System.CodeDom.CodeExpression
---@field public VariableName System.String @ setter getter
System.CodeDom.CodeVariableReferenceExpression = {}
---@type System.CodeDom.CodeVariableReferenceExpression
CS.System.CodeDom.CodeVariableReferenceExpression = System.CodeDom.CodeVariableReferenceExpression

---@class System.CodeDom.FieldDirection : System.Enum
System.CodeDom.FieldDirection = {}
---@type System.CodeDom.FieldDirection
CS.System.CodeDom.FieldDirection = System.CodeDom.FieldDirection

---@return System.Int32 value:0
System.CodeDom.FieldDirection.In = 0
---@return System.Int32 value:1
System.CodeDom.FieldDirection.Out = 1
---@return System.Int32 value:2
System.CodeDom.FieldDirection.Ref = 2

---@class System.CodeDom.MemberAttributes : System.Enum
System.CodeDom.MemberAttributes = {}
---@type System.CodeDom.MemberAttributes
CS.System.CodeDom.MemberAttributes = System.CodeDom.MemberAttributes

---@return System.Int32 value:1
System.CodeDom.MemberAttributes.Abstract = 1
---@return System.Int32 value:2
System.CodeDom.MemberAttributes.Final = 2
---@return System.Int32 value:3
System.CodeDom.MemberAttributes.Static = 3
---@return System.Int32 value:4
System.CodeDom.MemberAttributes.Override = 4
---@return System.Int32 value:5
System.CodeDom.MemberAttributes.Const = 5
---@return System.Int32 value:15
System.CodeDom.MemberAttributes.ScopeMask = 15

---@class System.CodeDom.CodeMethodReferenceExpression : System.CodeDom.CodeExpression
---@field public TargetObject System.CodeDom.CodeExpression @ setter getter
---@field public MethodName System.String @ setter getter
---@field public TypeArguments System.CodeDom.CodeTypeReferenceCollection @  getter
System.CodeDom.CodeMethodReferenceExpression = {}
---@type System.CodeDom.CodeMethodReferenceExpression
CS.System.CodeDom.CodeMethodReferenceExpression = System.CodeDom.CodeMethodReferenceExpression

