---@class System.Reflection.Emit.ExceptionHandler : System.ValueType
---@field public ExceptionTypeToken System.Int32 @  getter
---@field public TryOffset System.Int32 @  getter
---@field public TryLength System.Int32 @  getter
---@field public FilterOffset System.Int32 @  getter
---@field public HandlerOffset System.Int32 @  getter
---@field public HandlerLength System.Int32 @  getter
---@field public Kind System.Reflection.ExceptionHandlingClauseOptions @  getter
System.Reflection.Emit.ExceptionHandler = {}
---@type System.Reflection.Emit.ExceptionHandler
CS.System.Reflection.Emit.ExceptionHandler = System.Reflection.Emit.ExceptionHandler

---@return System.Int32
function System.Reflection.Emit.ExceptionHandler:GetHashCode()end
---@overload fun(other:System.Reflection.Emit.ExceptionHandler):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.ExceptionHandler:Equals(obj)end
---@param left System.Reflection.Emit.ExceptionHandler
---@param right System.Reflection.Emit.ExceptionHandler
---@return System.Boolean
function System.Reflection.Emit.ExceptionHandler.op_Equality(left, right)end
---@param left System.Reflection.Emit.ExceptionHandler
---@param right System.Reflection.Emit.ExceptionHandler
---@return System.Boolean
function System.Reflection.Emit.ExceptionHandler.op_Inequality(left, right)end
---@class System.Reflection.Emit.AssemblyBuilder : System.Reflection.Assembly
---@field public CodeBase System.String @  getter
---@field public EntryPoint System.Reflection.MethodInfo @  getter
---@field public Location System.String @  getter
---@field public ImageRuntimeVersion System.String @  getter
---@field public ReflectionOnly System.Boolean @  getter
---@field public ManifestModule System.Reflection.Module @  getter
---@field public GlobalAssemblyCache System.Boolean @  getter
---@field public IsDynamic System.Boolean @  getter
---@field public FullName System.String @  getter
System.Reflection.Emit.AssemblyBuilder = {}
---@type System.Reflection.Emit.AssemblyBuilder
CS.System.Reflection.Emit.AssemblyBuilder = System.Reflection.Emit.AssemblyBuilder

---@overload fun(name:System.String, fileName:System.String, attribute:System.Reflection.ResourceAttributes):System.Void
---@param name System.String
---@param fileName System.String
---@return System.Void
function System.Reflection.Emit.AssemblyBuilder:AddResourceFile(name, fileName)end
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, assemblyAttributes:System.Collections.Generic.IEnumerable):System.Reflection.Emit.AssemblyBuilder
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@return System.Reflection.Emit.AssemblyBuilder
function System.Reflection.Emit.AssemblyBuilder.DefineDynamicAssembly(name, access)end
---@overload fun(name:System.String, emitSymbolInfo:System.Boolean):System.Reflection.Emit.ModuleBuilder
---@overload fun(name:System.String, fileName:System.String):System.Reflection.Emit.ModuleBuilder
---@overload fun(name:System.String, fileName:System.String, emitSymbolInfo:System.Boolean):System.Reflection.Emit.ModuleBuilder
---@param name System.String
---@return System.Reflection.Emit.ModuleBuilder
function System.Reflection.Emit.AssemblyBuilder:DefineDynamicModule(name)end
---@overload fun(name:System.String, description:System.String, fileName:System.String, attribute:System.Reflection.ResourceAttributes):System.Resources.IResourceWriter
---@param name System.String
---@param description System.String
---@param fileName System.String
---@return System.Resources.IResourceWriter
function System.Reflection.Emit.AssemblyBuilder:DefineResource(name, description, fileName)end
---@overload fun(resourceFileName:System.String):System.Void
---@param resource System.Byte[]
---@return System.Void
function System.Reflection.Emit.AssemblyBuilder:DefineUnmanagedResource(resource)end
---@overload fun(product:System.String, productVersion:System.String, company:System.String, copyright:System.String, trademark:System.String):System.Void
---@return System.Void
function System.Reflection.Emit.AssemblyBuilder:DefineVersionInfoResource()end
---@param name System.String
---@return System.Reflection.Emit.ModuleBuilder
function System.Reflection.Emit.AssemblyBuilder:GetDynamicModule(name)end
---@return System.Type[]
function System.Reflection.Emit.AssemblyBuilder:GetExportedTypes()end
---@param name System.String
---@return System.IO.FileStream
function System.Reflection.Emit.AssemblyBuilder:GetFile(name)end
---@param getResourceModules System.Boolean
---@return System.IO.FileStream[]
function System.Reflection.Emit.AssemblyBuilder:GetFiles(getResourceModules)end
---@param resourceName System.String
---@return System.Reflection.ManifestResourceInfo
function System.Reflection.Emit.AssemblyBuilder:GetManifestResourceInfo(resourceName)end
---@return System.String[]
function System.Reflection.Emit.AssemblyBuilder:GetManifestResourceNames()end
---@overload fun(type:System.Type, name:System.String):System.IO.Stream
---@param name System.String
---@return System.IO.Stream
function System.Reflection.Emit.AssemblyBuilder:GetManifestResourceStream(name)end
---@overload fun(assemblyFileName:System.String, portableExecutableKind:System.Reflection.PortableExecutableKinds, imageFileMachine:System.Reflection.ImageFileMachine):System.Void
---@param assemblyFileName System.String
---@return System.Void
function System.Reflection.Emit.AssemblyBuilder:Save(assemblyFileName)end
---@overload fun(entryMethod:System.Reflection.MethodInfo, fileKind:System.Reflection.Emit.PEFileKinds):System.Void
---@param entryMethod System.Reflection.MethodInfo
---@return System.Void
function System.Reflection.Emit.AssemblyBuilder:SetEntryPoint(entryMethod)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.AssemblyBuilder:SetCustomAttribute(customBuilder)end
---@param name System.String
---@param throwOnError System.Boolean
---@param ignoreCase System.Boolean
---@return System.Type
function System.Reflection.Emit.AssemblyBuilder:GetType(name, throwOnError, ignoreCase)end
---@param name System.String
---@return System.Reflection.Module
function System.Reflection.Emit.AssemblyBuilder:GetModule(name)end
---@param getResourceModules System.Boolean
---@return System.Reflection.Module[]
function System.Reflection.Emit.AssemblyBuilder:GetModules(getResourceModules)end
---@param copiedName System.Boolean
---@return System.Reflection.AssemblyName
function System.Reflection.Emit.AssemblyBuilder:GetName(copiedName)end
---@return System.Reflection.AssemblyName[]
function System.Reflection.Emit.AssemblyBuilder:GetReferencedAssemblies()end
---@param getResourceModules System.Boolean
---@return System.Reflection.Module[]
function System.Reflection.Emit.AssemblyBuilder:GetLoadedModules(getResourceModules)end
---@overload fun(culture:System.Globalization.CultureInfo, version:System.Version):System.Reflection.Assembly
---@param culture System.Globalization.CultureInfo
---@return System.Reflection.Assembly
function System.Reflection.Emit.AssemblyBuilder:GetSatelliteAssembly(culture)end
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.AssemblyBuilder:Equals(obj)end
---@return System.Int32
function System.Reflection.Emit.AssemblyBuilder:GetHashCode()end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.AssemblyBuilder:IsDefined(attributeType, inherit)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.AssemblyBuilder:GetCustomAttributes(inherit)end
---@class System.Reflection.Emit.AssemblyBuilderAccess : System.Enum
System.Reflection.Emit.AssemblyBuilderAccess = {}
---@type System.Reflection.Emit.AssemblyBuilderAccess
CS.System.Reflection.Emit.AssemblyBuilderAccess = System.Reflection.Emit.AssemblyBuilderAccess

---@return System.Int32 value:1
System.Reflection.Emit.AssemblyBuilderAccess.Run = 1
---@return System.Int32 value:2
System.Reflection.Emit.AssemblyBuilderAccess.Save = 2
---@return System.Int32 value:3
System.Reflection.Emit.AssemblyBuilderAccess.RunAndSave = 3

---@class System.Reflection.Emit.ConstructorBuilder : System.Reflection.ConstructorInfo
---@field public CallingConvention System.Reflection.CallingConventions @  getter
---@field public InitLocals System.Boolean @ setter getter
---@field public MethodHandle System.RuntimeMethodHandle @  getter
---@field public Attributes System.Reflection.MethodAttributes @  getter
---@field public ReflectedType System.Type @  getter
---@field public DeclaringType System.Type @  getter
---@field public ReturnType System.Type @  getter
---@field public Name System.String @  getter
---@field public Signature System.String @  getter
---@field public Module System.Reflection.Module @  getter
System.Reflection.Emit.ConstructorBuilder = {}
---@type System.Reflection.Emit.ConstructorBuilder
CS.System.Reflection.Emit.ConstructorBuilder = System.Reflection.Emit.ConstructorBuilder

---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.ConstructorBuilder:GetMethodImplementationFlags()end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.ConstructorBuilder:GetParameters()end
---@overload fun(obj:System.Object, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, parameters:System.Object[], culture:System.Globalization.CultureInfo):System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.ConstructorBuilder:Invoke(invokeAttr, binder, parameters, culture)end
---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
---@return System.Void
function System.Reflection.Emit.ConstructorBuilder:AddDeclarativeSecurity(action, pset)end
---@param iSequence System.Int32
---@param attributes System.Reflection.ParameterAttributes
---@param strParamName System.String
---@return System.Reflection.Emit.ParameterBuilder
function System.Reflection.Emit.ConstructorBuilder:DefineParameter(iSequence, attributes, strParamName)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.ConstructorBuilder:IsDefined(attributeType, inherit)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.ConstructorBuilder:GetCustomAttributes(inherit)end
---@overload fun(streamSize:System.Int32):System.Reflection.Emit.ILGenerator
---@return System.Reflection.Emit.ILGenerator
function System.Reflection.Emit.ConstructorBuilder:GetILGenerator()end
---@param il System.Byte[]
---@param maxStack System.Int32
---@param localSignature System.Byte[]
---@param exceptionHandlers System.Collections.Generic.IEnumerable
---@param tokenFixups System.Collections.Generic.IEnumerable
---@return System.Void
function System.Reflection.Emit.ConstructorBuilder:SetMethodBody(il, maxStack, localSignature, exceptionHandlers, tokenFixups)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.ConstructorBuilder:SetCustomAttribute(customBuilder)end
---@param attributes System.Reflection.MethodImplAttributes
---@return System.Void
function System.Reflection.Emit.ConstructorBuilder:SetImplementationFlags(attributes)end
---@return System.Reflection.Module
function System.Reflection.Emit.ConstructorBuilder:GetModule()end
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ConstructorBuilder:GetToken()end
---@param name System.String
---@param data System.Byte[]
---@return System.Void
function System.Reflection.Emit.ConstructorBuilder:SetSymCustomAttribute(name, data)end
---@return System.String
function System.Reflection.Emit.ConstructorBuilder:ToString()end
---@class System.Reflection.Emit.CustomAttributeBuilder : System.Object
System.Reflection.Emit.CustomAttributeBuilder = {}
---@type System.Reflection.Emit.CustomAttributeBuilder
CS.System.Reflection.Emit.CustomAttributeBuilder = System.Reflection.Emit.CustomAttributeBuilder

---@class System.Reflection.Emit.DynamicILInfo : System.Object
---@field public DynamicMethod System.Reflection.Emit.DynamicMethod @  getter
System.Reflection.Emit.DynamicILInfo = {}
---@type System.Reflection.Emit.DynamicILInfo
CS.System.Reflection.Emit.DynamicILInfo = System.Reflection.Emit.DynamicILInfo

---@overload fun(method:System.Reflection.Emit.DynamicMethod):System.Int32
---@overload fun(field:System.RuntimeFieldHandle):System.Int32
---@overload fun(method:System.RuntimeMethodHandle):System.Int32
---@overload fun(type:System.RuntimeTypeHandle):System.Int32
---@overload fun(literal:System.String):System.Int32
---@overload fun(method:System.RuntimeMethodHandle, contextType:System.RuntimeTypeHandle):System.Int32
---@overload fun(field:System.RuntimeFieldHandle, contextType:System.RuntimeTypeHandle):System.Int32
---@param signature System.Byte[]
---@return System.Int32
function System.Reflection.Emit.DynamicILInfo:GetTokenFor(signature)end
---@overload fun(code:System.Byte, codeSize:System.Int32, maxStackSize:System.Int32):System.Void
---@param code System.Byte[]
---@param maxStackSize System.Int32
---@return System.Void
function System.Reflection.Emit.DynamicILInfo:SetCode(code, maxStackSize)end
---@overload fun(exceptions:System.Byte, exceptionsSize:System.Int32):System.Void
---@param exceptions System.Byte[]
---@return System.Void
function System.Reflection.Emit.DynamicILInfo:SetExceptions(exceptions)end
---@overload fun(localSignature:System.Byte, signatureSize:System.Int32):System.Void
---@param localSignature System.Byte[]
---@return System.Void
function System.Reflection.Emit.DynamicILInfo:SetLocalSignature(localSignature)end
---@class System.Reflection.Emit.DynamicMethod : System.Reflection.MethodInfo
---@field public Attributes System.Reflection.MethodAttributes @  getter
---@field public CallingConvention System.Reflection.CallingConventions @  getter
---@field public DeclaringType System.Type @  getter
---@field public InitLocals System.Boolean @ setter getter
---@field public MethodHandle System.RuntimeMethodHandle @  getter
---@field public Module System.Reflection.Module @  getter
---@field public Name System.String @  getter
---@field public ReflectedType System.Type @  getter
---@field public ReturnParameter System.Reflection.ParameterInfo @  getter
---@field public ReturnType System.Type @  getter
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider @  getter
System.Reflection.Emit.DynamicMethod = {}
---@type System.Reflection.Emit.DynamicMethod
CS.System.Reflection.Emit.DynamicMethod = System.Reflection.Emit.DynamicMethod

---@overload fun(delegateType:System.Type, target:System.Object):System.Delegate
---@param delegateType System.Type
---@return System.Delegate
function System.Reflection.Emit.DynamicMethod:CreateDelegate(delegateType)end
---@param position System.Int32
---@param attributes System.Reflection.ParameterAttributes
---@param parameterName System.String
---@return System.Reflection.Emit.ParameterBuilder
function System.Reflection.Emit.DynamicMethod:DefineParameter(position, attributes, parameterName)end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.DynamicMethod:GetBaseDefinition()end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.DynamicMethod:GetCustomAttributes(inherit)end
---@return System.Reflection.Emit.DynamicILInfo
function System.Reflection.Emit.DynamicMethod:GetDynamicILInfo()end
---@overload fun(streamSize:System.Int32):System.Reflection.Emit.ILGenerator
---@return System.Reflection.Emit.ILGenerator
function System.Reflection.Emit.DynamicMethod:GetILGenerator()end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.DynamicMethod:GetMethodImplementationFlags()end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.DynamicMethod:GetParameters()end
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.DynamicMethod:Invoke(obj, invokeAttr, binder, parameters, culture)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.DynamicMethod:IsDefined(attributeType, inherit)end
---@return System.String
function System.Reflection.Emit.DynamicMethod:ToString()end
---@class System.Reflection.Emit.EnumBuilder : System.Reflection.TypeInfo
---@field public Assembly System.Reflection.Assembly @  getter
---@field public AssemblyQualifiedName System.String @  getter
---@field public BaseType System.Type @  getter
---@field public DeclaringType System.Type @  getter
---@field public FullName System.String @  getter
---@field public GUID System.Guid @  getter
---@field public Module System.Reflection.Module @  getter
---@field public Name System.String @  getter
---@field public Namespace System.String @  getter
---@field public ReflectedType System.Type @  getter
---@field public TypeHandle System.RuntimeTypeHandle @  getter
---@field public TypeToken System.Reflection.Emit.TypeToken @  getter
---@field public UnderlyingField System.Reflection.Emit.FieldBuilder @  getter
---@field public UnderlyingSystemType System.Type @  getter
---@field public IsConstructedGenericType System.Boolean @  getter
System.Reflection.Emit.EnumBuilder = {}
---@type System.Reflection.Emit.EnumBuilder
CS.System.Reflection.Emit.EnumBuilder = System.Reflection.Emit.EnumBuilder

---@return System.Type
function System.Reflection.Emit.EnumBuilder:CreateType()end
---@return System.Reflection.TypeInfo
function System.Reflection.Emit.EnumBuilder:CreateTypeInfo()end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetEnumUnderlyingType()end
---@param literalName System.String
---@param literalValue System.Object
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.EnumBuilder:DefineLiteral(literalName, literalValue)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.EnumBuilder:GetConstructors(bindingAttr)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.EnumBuilder:GetCustomAttributes(inherit)end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetElementType()end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.EnumBuilder:GetEvent(name, bindingAttr)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.EventInfo[]
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.EnumBuilder:GetEvents()end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.EnumBuilder:GetField(name, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.EnumBuilder:GetFields(bindingAttr)end
---@param name System.String
---@param ignoreCase System.Boolean
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetInterface(name, ignoreCase)end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Reflection.Emit.EnumBuilder:GetInterfaceMap(interfaceType)end
---@return System.Type[]
function System.Reflection.Emit.EnumBuilder:GetInterfaces()end
---@param name System.String
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.EnumBuilder:GetMember(name, type, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.EnumBuilder:GetMembers(bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.EnumBuilder:GetMethods(bindingAttr)end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetNestedType(name, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.EnumBuilder:GetNestedTypes(bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.EnumBuilder:GetProperties(bindingAttr)end
---@param name System.String
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.EnumBuilder:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.EnumBuilder:IsDefined(attributeType, inherit)end
---@overload fun(rank:System.Int32):System.Type
---@return System.Type
function System.Reflection.Emit.EnumBuilder:MakeArrayType()end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:MakeByRefType()end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:MakePointerType()end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.EnumBuilder:SetCustomAttribute(customBuilder)end
---@param typeInfo System.Reflection.TypeInfo
---@return System.Boolean
function System.Reflection.Emit.EnumBuilder:IsAssignableFrom(typeInfo)end
---@class System.Reflection.Emit.EventBuilder : System.Object
System.Reflection.Emit.EventBuilder = {}
---@type System.Reflection.Emit.EventBuilder
CS.System.Reflection.Emit.EventBuilder = System.Reflection.Emit.EventBuilder

---@param mdBuilder System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Reflection.Emit.EventBuilder:AddOtherMethod(mdBuilder)end
---@return System.Reflection.Emit.EventToken
function System.Reflection.Emit.EventBuilder:GetEventToken()end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Reflection.Emit.EventBuilder:SetAddOnMethod(mdBuilder)end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Reflection.Emit.EventBuilder:SetRaiseMethod(mdBuilder)end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Reflection.Emit.EventBuilder:SetRemoveOnMethod(mdBuilder)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.EventBuilder:SetCustomAttribute(customBuilder)end
---@class System.Reflection.Emit.EventToken : System.ValueType
---@field public Token System.Int32 @  getter
---@field public Empty System.Reflection.Emit.EventToken
System.Reflection.Emit.EventToken = {}
---@type System.Reflection.Emit.EventToken
CS.System.Reflection.Emit.EventToken = System.Reflection.Emit.EventToken

---@overload fun(obj:System.Reflection.Emit.EventToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.EventToken:Equals(obj)end
---@param a System.Reflection.Emit.EventToken
---@param b System.Reflection.Emit.EventToken
---@return System.Boolean
function System.Reflection.Emit.EventToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.EventToken
---@param b System.Reflection.Emit.EventToken
---@return System.Boolean
function System.Reflection.Emit.EventToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.EventToken:GetHashCode()end
---@class System.Reflection.Emit.FieldBuilder : System.Reflection.FieldInfo
---@field public Attributes System.Reflection.FieldAttributes @  getter
---@field public DeclaringType System.Type @  getter
---@field public FieldHandle System.RuntimeFieldHandle @  getter
---@field public FieldType System.Type @  getter
---@field public Name System.String @  getter
---@field public ReflectedType System.Type @  getter
---@field public Module System.Reflection.Module @  getter
System.Reflection.Emit.FieldBuilder = {}
---@type System.Reflection.Emit.FieldBuilder
CS.System.Reflection.Emit.FieldBuilder = System.Reflection.Emit.FieldBuilder

---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.FieldBuilder:GetCustomAttributes(inherit)end
---@return System.Reflection.Emit.FieldToken
function System.Reflection.Emit.FieldBuilder:GetToken()end
---@param obj System.Object
---@return System.Object
function System.Reflection.Emit.FieldBuilder:GetValue(obj)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.FieldBuilder:IsDefined(attributeType, inherit)end
---@param defaultValue System.Object
---@return System.Void
function System.Reflection.Emit.FieldBuilder:SetConstant(defaultValue)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.FieldBuilder:SetCustomAttribute(customBuilder)end
---@param unmanagedMarshal System.Reflection.Emit.UnmanagedMarshal
---@return System.Void
function System.Reflection.Emit.FieldBuilder:SetMarshal(unmanagedMarshal)end
---@param iOffset System.Int32
---@return System.Void
function System.Reflection.Emit.FieldBuilder:SetOffset(iOffset)end
---@param obj System.Object
---@param val System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param culture System.Globalization.CultureInfo
---@return System.Void
function System.Reflection.Emit.FieldBuilder:SetValue(obj, val, invokeAttr, binder, culture)end
---@class System.Reflection.Emit.FieldToken : System.ValueType
---@field public Token System.Int32 @  getter
---@field public Empty System.Reflection.Emit.FieldToken
System.Reflection.Emit.FieldToken = {}
---@type System.Reflection.Emit.FieldToken
CS.System.Reflection.Emit.FieldToken = System.Reflection.Emit.FieldToken

---@overload fun(obj:System.Reflection.Emit.FieldToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.FieldToken:Equals(obj)end
---@param a System.Reflection.Emit.FieldToken
---@param b System.Reflection.Emit.FieldToken
---@return System.Boolean
function System.Reflection.Emit.FieldToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.FieldToken
---@param b System.Reflection.Emit.FieldToken
---@return System.Boolean
function System.Reflection.Emit.FieldToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.FieldToken:GetHashCode()end
---@class System.Reflection.Emit.FlowControl : System.Enum
System.Reflection.Emit.FlowControl = {}
---@type System.Reflection.Emit.FlowControl
CS.System.Reflection.Emit.FlowControl = System.Reflection.Emit.FlowControl

---@return System.Int32 value:0
System.Reflection.Emit.FlowControl.Branch = 0
---@return System.Int32 value:1
System.Reflection.Emit.FlowControl.Break = 1
---@return System.Int32 value:2
System.Reflection.Emit.FlowControl.Call = 2
---@return System.Int32 value:3
System.Reflection.Emit.FlowControl.Cond_Branch = 3
---@return System.Int32 value:4
System.Reflection.Emit.FlowControl.Meta = 4
---@return System.Int32 value:5
System.Reflection.Emit.FlowControl.Next = 5
---@return System.Int32 value:6
System.Reflection.Emit.FlowControl.Phi = 6
---@return System.Int32 value:7
System.Reflection.Emit.FlowControl.Return = 7
---@return System.Int32 value:8
System.Reflection.Emit.FlowControl.Throw = 8

---@class System.Reflection.Emit.GenericTypeParameterBuilder : System.Reflection.TypeInfo
---@field public UnderlyingSystemType System.Type @  getter
---@field public Assembly System.Reflection.Assembly @  getter
---@field public AssemblyQualifiedName System.String @  getter
---@field public BaseType System.Type @  getter
---@field public FullName System.String @  getter
---@field public GUID System.Guid @  getter
---@field public Name System.String @  getter
---@field public Namespace System.String @  getter
---@field public Module System.Reflection.Module @  getter
---@field public DeclaringType System.Type @  getter
---@field public ReflectedType System.Type @  getter
---@field public TypeHandle System.RuntimeTypeHandle @  getter
---@field public ContainsGenericParameters System.Boolean @  getter
---@field public IsGenericParameter System.Boolean @  getter
---@field public IsGenericType System.Boolean @  getter
---@field public IsGenericTypeDefinition System.Boolean @  getter
---@field public GenericParameterAttributes System.Reflection.GenericParameterAttributes @  getter
---@field public GenericParameterPosition System.Int32 @  getter
---@field public DeclaringMethod System.Reflection.MethodBase @  getter
System.Reflection.Emit.GenericTypeParameterBuilder = {}
---@type System.Reflection.Emit.GenericTypeParameterBuilder
CS.System.Reflection.Emit.GenericTypeParameterBuilder = System.Reflection.Emit.GenericTypeParameterBuilder

---@param baseTypeConstraint System.Type
---@return System.Void
function System.Reflection.Emit.GenericTypeParameterBuilder:SetBaseTypeConstraint(baseTypeConstraint)end
---@param interfaceConstraints System.Type[]
---@return System.Void
function System.Reflection.Emit.GenericTypeParameterBuilder:SetInterfaceConstraints(interfaceConstraints)end
---@param genericParameterAttributes System.Reflection.GenericParameterAttributes
---@return System.Void
function System.Reflection.Emit.GenericTypeParameterBuilder:SetGenericParameterAttributes(genericParameterAttributes)end
---@param c System.Type
---@return System.Boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsSubclassOf(c)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetConstructors(bindingAttr)end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.GenericTypeParameterBuilder:GetEvent(name, bindingAttr)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.EventInfo[]
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetEvents()end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.GenericTypeParameterBuilder:GetField(name, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetFields(bindingAttr)end
---@param name System.String
---@param ignoreCase System.Boolean
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetInterface(name, ignoreCase)end
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetInterfaces()end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetMembers(bindingAttr)end
---@param name System.String
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetMember(name, type, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetMethods(bindingAttr)end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetNestedType(name, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetNestedTypes(bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetProperties(bindingAttr)end
---@overload fun(typeInfo:System.Reflection.TypeInfo):System.Boolean
---@param c System.Type
---@return System.Boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsAssignableFrom(c)end
---@param o System.Object
---@return System.Boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsInstanceOfType(o)end
---@param name System.String
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.GenericTypeParameterBuilder:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters)end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetElementType()end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsDefined(attributeType, inherit)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetCustomAttributes(inherit)end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Reflection.Emit.GenericTypeParameterBuilder:GetInterfaceMap(interfaceType)end
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetGenericArguments()end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetGenericTypeDefinition()end
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetGenericParameterConstraints()end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.GenericTypeParameterBuilder:SetCustomAttribute(customBuilder)end
---@return System.String
function System.Reflection.Emit.GenericTypeParameterBuilder:ToString()end
---@param o System.Object
---@return System.Boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:Equals(o)end
---@return System.Int32
function System.Reflection.Emit.GenericTypeParameterBuilder:GetHashCode()end
---@overload fun(rank:System.Int32):System.Type
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakeArrayType()end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakeByRefType()end
---@param typeArguments System.Type[]
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakeGenericType(typeArguments)end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakePointerType()end
---@class System.Reflection.Emit.ILGenerator : System.Object
---@field public ILOffset System.Int32 @  getter
System.Reflection.Emit.ILGenerator = {}
---@type System.Reflection.Emit.ILGenerator
CS.System.Reflection.Emit.ILGenerator = System.Reflection.Emit.ILGenerator

---@param exceptionType System.Type
---@return System.Void
function System.Reflection.Emit.ILGenerator:BeginCatchBlock(exceptionType)end
---@return System.Void
function System.Reflection.Emit.ILGenerator:BeginExceptFilterBlock()end
---@return System.Reflection.Emit.Label
function System.Reflection.Emit.ILGenerator:BeginExceptionBlock()end
---@return System.Void
function System.Reflection.Emit.ILGenerator:BeginFaultBlock()end
---@return System.Void
function System.Reflection.Emit.ILGenerator:BeginFinallyBlock()end
---@return System.Void
function System.Reflection.Emit.ILGenerator:BeginScope()end
---@overload fun(localType:System.Type, pinned:System.Boolean):System.Reflection.Emit.LocalBuilder
---@param localType System.Type
---@return System.Reflection.Emit.LocalBuilder
function System.Reflection.Emit.ILGenerator:DeclareLocal(localType)end
---@return System.Reflection.Emit.Label
function System.Reflection.Emit.ILGenerator:DefineLabel()end
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:System.Byte):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:System.Double):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:System.Int16):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:System.Int32):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:System.Int64):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:System.SByte):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:System.Single):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, con:System.Reflection.ConstructorInfo):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, field:System.Reflection.FieldInfo):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, label:System.Reflection.Emit.Label):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, labels:System.Reflection.Emit.Label[]):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, _local:System.Reflection.Emit.LocalBuilder):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, meth:System.Reflection.MethodInfo):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, signature:System.Reflection.Emit.SignatureHelper):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, str:System.String):System.Void
---@overload fun(opcode:System.Reflection.Emit.OpCode, cls:System.Type):System.Void
---@param opcode System.Reflection.Emit.OpCode
---@return System.Void
function System.Reflection.Emit.ILGenerator:Emit(opcode)end
---@param opcode System.Reflection.Emit.OpCode
---@param methodInfo System.Reflection.MethodInfo
---@param optionalParameterTypes System.Type[]
---@return System.Void
function System.Reflection.Emit.ILGenerator:EmitCall(opcode, methodInfo, optionalParameterTypes)end
---@overload fun(opcode:System.Reflection.Emit.OpCode, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[], optionalParameterTypes:System.Type[]):System.Void
---@param opcode System.Reflection.Emit.OpCode
---@param unmanagedCallConv System.Runtime.InteropServices.CallingConvention
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Void
function System.Reflection.Emit.ILGenerator:EmitCalli(opcode, unmanagedCallConv, returnType, parameterTypes)end
---@overload fun(localBuilder:System.Reflection.Emit.LocalBuilder):System.Void
---@overload fun(value:System.String):System.Void
---@param fld System.Reflection.FieldInfo
---@return System.Void
function System.Reflection.Emit.ILGenerator:EmitWriteLine(fld)end
---@return System.Void
function System.Reflection.Emit.ILGenerator:EndExceptionBlock()end
---@return System.Void
function System.Reflection.Emit.ILGenerator:EndScope()end
---@param loc System.Reflection.Emit.Label
---@return System.Void
function System.Reflection.Emit.ILGenerator:MarkLabel(loc)end
---@param document System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param startLine System.Int32
---@param startColumn System.Int32
---@param endLine System.Int32
---@param endColumn System.Int32
---@return System.Void
function System.Reflection.Emit.ILGenerator:MarkSequencePoint(document, startLine, startColumn, endLine, endColumn)end
---@param excType System.Type
---@return System.Void
function System.Reflection.Emit.ILGenerator:ThrowException(excType)end
---@param usingNamespace System.String
---@return System.Void
function System.Reflection.Emit.ILGenerator:UsingNamespace(usingNamespace)end
---@class System.Reflection.Emit.Label : System.ValueType
System.Reflection.Emit.Label = {}
---@type System.Reflection.Emit.Label
CS.System.Reflection.Emit.Label = System.Reflection.Emit.Label

---@overload fun(obj:System.Reflection.Emit.Label):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.Label:Equals(obj)end
---@param a System.Reflection.Emit.Label
---@param b System.Reflection.Emit.Label
---@return System.Boolean
function System.Reflection.Emit.Label.op_Equality(a, b)end
---@param a System.Reflection.Emit.Label
---@param b System.Reflection.Emit.Label
---@return System.Boolean
function System.Reflection.Emit.Label.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.Label:GetHashCode()end
---@class System.Reflection.Emit.LocalBuilder : System.Reflection.LocalVariableInfo
---@field public LocalType System.Type @  getter
---@field public IsPinned System.Boolean @  getter
---@field public LocalIndex System.Int32 @  getter
System.Reflection.Emit.LocalBuilder = {}
---@type System.Reflection.Emit.LocalBuilder
CS.System.Reflection.Emit.LocalBuilder = System.Reflection.Emit.LocalBuilder

---@overload fun(name:System.String, startOffset:System.Int32, endOffset:System.Int32):System.Void
---@param name System.String
---@return System.Void
function System.Reflection.Emit.LocalBuilder:SetLocalSymInfo(name)end
---@class System.Reflection.Emit.MethodBuilder : System.Reflection.MethodInfo
---@field public ContainsGenericParameters System.Boolean @  getter
---@field public InitLocals System.Boolean @ setter getter
---@field public MethodHandle System.RuntimeMethodHandle @  getter
---@field public ReturnType System.Type @  getter
---@field public ReflectedType System.Type @  getter
---@field public DeclaringType System.Type @  getter
---@field public Name System.String @  getter
---@field public Attributes System.Reflection.MethodAttributes @  getter
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider @  getter
---@field public CallingConvention System.Reflection.CallingConventions @  getter
---@field public Signature System.String @  getter
---@field public IsGenericMethodDefinition System.Boolean @  getter
---@field public IsGenericMethod System.Boolean @  getter
---@field public Module System.Reflection.Module @  getter
---@field public ReturnParameter System.Reflection.ParameterInfo @  getter
System.Reflection.Emit.MethodBuilder = {}
---@type System.Reflection.Emit.MethodBuilder
CS.System.Reflection.Emit.MethodBuilder = System.Reflection.Emit.MethodBuilder

---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.MethodBuilder:GetToken()end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodBuilder:GetBaseDefinition()end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.MethodBuilder:GetMethodImplementationFlags()end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.MethodBuilder:GetParameters()end
---@return System.Reflection.Module
function System.Reflection.Emit.MethodBuilder:GetModule()end
---@param il System.Byte[]
---@param count System.Int32
---@return System.Void
function System.Reflection.Emit.MethodBuilder:CreateMethodBody(il, count)end
---@param il System.Byte[]
---@param maxStack System.Int32
---@param localSignature System.Byte[]
---@param exceptionHandlers System.Collections.Generic.IEnumerable
---@param tokenFixups System.Collections.Generic.IEnumerable
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetMethodBody(il, maxStack, localSignature, exceptionHandlers, tokenFixups)end
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.MethodBuilder:Invoke(obj, invokeAttr, binder, parameters, culture)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.MethodBuilder:IsDefined(attributeType, inherit)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.MethodBuilder:GetCustomAttributes(inherit)end
---@overload fun(size:System.Int32):System.Reflection.Emit.ILGenerator
---@return System.Reflection.Emit.ILGenerator
function System.Reflection.Emit.MethodBuilder:GetILGenerator()end
---@param position System.Int32
---@param attributes System.Reflection.ParameterAttributes
---@param strParamName System.String
---@return System.Reflection.Emit.ParameterBuilder
function System.Reflection.Emit.MethodBuilder:DefineParameter(position, attributes, strParamName)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetCustomAttribute(customBuilder)end
---@param attributes System.Reflection.MethodImplAttributes
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetImplementationFlags(attributes)end
---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
---@return System.Void
function System.Reflection.Emit.MethodBuilder:AddDeclarativeSecurity(action, pset)end
---@param unmanagedMarshal System.Reflection.Emit.UnmanagedMarshal
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetMarshal(unmanagedMarshal)end
---@param name System.String
---@param data System.Byte[]
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetSymCustomAttribute(name, data)end
---@return System.String
function System.Reflection.Emit.MethodBuilder:ToString()end
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.MethodBuilder:Equals(obj)end
---@return System.Int32
function System.Reflection.Emit.MethodBuilder:GetHashCode()end
---@param typeArguments System.Type[]
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodBuilder:MakeGenericMethod(typeArguments)end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodBuilder:GetGenericMethodDefinition()end
---@return System.Type[]
function System.Reflection.Emit.MethodBuilder:GetGenericArguments()end
---@param names System.String[]
---@return System.Reflection.Emit.GenericTypeParameterBuilder[]
function System.Reflection.Emit.MethodBuilder:DefineGenericParameters(names)end
---@param returnType System.Type
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetReturnType(returnType)end
---@param parameterTypes System.Type[]
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetParameters(parameterTypes)end
---@param returnType System.Type
---@param returnTypeRequiredCustomModifiers System.Type[]
---@param returnTypeOptionalCustomModifiers System.Type[]
---@param parameterTypes System.Type[]
---@param parameterTypeRequiredCustomModifiers System.Type[][]
---@param parameterTypeOptionalCustomModifiers System.Type[][]
---@return System.Void
function System.Reflection.Emit.MethodBuilder:SetSignature(returnType, returnTypeRequiredCustomModifiers, returnTypeOptionalCustomModifiers, parameterTypes, parameterTypeRequiredCustomModifiers, parameterTypeOptionalCustomModifiers)end
---@class System.Reflection.Emit.MethodRental : System.Object
---@field public JitImmediate System.Int32
---@field public JitOnDemand System.Int32
System.Reflection.Emit.MethodRental = {}
---@type System.Reflection.Emit.MethodRental
CS.System.Reflection.Emit.MethodRental = System.Reflection.Emit.MethodRental

---@param cls System.Type
---@param methodtoken System.Int32
---@param rgIL System.IntPtr
---@param methodSize System.Int32
---@param flags System.Int32
---@return System.Void
function System.Reflection.Emit.MethodRental.SwapMethodBody(cls, methodtoken, rgIL, methodSize, flags)end
---@class System.Reflection.Emit.MethodToken : System.ValueType
---@field public Token System.Int32 @  getter
---@field public Empty System.Reflection.Emit.MethodToken
System.Reflection.Emit.MethodToken = {}
---@type System.Reflection.Emit.MethodToken
CS.System.Reflection.Emit.MethodToken = System.Reflection.Emit.MethodToken

---@overload fun(obj:System.Reflection.Emit.MethodToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.MethodToken:Equals(obj)end
---@param a System.Reflection.Emit.MethodToken
---@param b System.Reflection.Emit.MethodToken
---@return System.Boolean
function System.Reflection.Emit.MethodToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.MethodToken
---@param b System.Reflection.Emit.MethodToken
---@return System.Boolean
function System.Reflection.Emit.MethodToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.MethodToken:GetHashCode()end
---@class System.Reflection.Emit.ModuleBuilder : System.Reflection.Module
---@field public FullyQualifiedName System.String @  getter
---@field public Assembly System.Reflection.Assembly @  getter
---@field public Name System.String @  getter
---@field public ScopeName System.String @  getter
---@field public ModuleVersionId System.Guid @  getter
---@field public MetadataToken System.Int32 @  getter
System.Reflection.Emit.ModuleBuilder = {}
---@type System.Reflection.Emit.ModuleBuilder
CS.System.Reflection.Emit.ModuleBuilder = System.Reflection.Emit.ModuleBuilder

---@return System.Boolean
function System.Reflection.Emit.ModuleBuilder:IsTransient()end
---@return System.Void
function System.Reflection.Emit.ModuleBuilder:CreateGlobalFunctions()end
---@param name System.String
---@param data System.Byte[]
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.ModuleBuilder:DefineInitializedData(name, data, attributes)end
---@param name System.String
---@param size System.Int32
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.ModuleBuilder:DefineUninitializedData(name, size, attributes)end
---@overload fun(name:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[]):System.Reflection.Emit.MethodBuilder
---@overload fun(name:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, requiredReturnTypeCustomModifiers:System.Type[], optionalReturnTypeCustomModifiers:System.Type[], parameterTypes:System.Type[], requiredParameterTypeCustomModifiers:System.Type[][], optionalParameterTypeCustomModifiers:System.Type[][]):System.Reflection.Emit.MethodBuilder
---@param name System.String
---@param attributes System.Reflection.MethodAttributes
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.ModuleBuilder:DefineGlobalMethod(name, attributes, returnType, parameterTypes)end
---@overload fun(name:System.String, dllName:System.String, entryName:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[], nativeCallConv:System.Runtime.InteropServices.CallingConvention, nativeCharSet:System.Runtime.InteropServices.CharSet):System.Reflection.Emit.MethodBuilder
---@param name System.String
---@param dllName System.String
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param nativeCallConv System.Runtime.InteropServices.CallingConvention
---@param nativeCharSet System.Runtime.InteropServices.CharSet
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.ModuleBuilder:DefinePInvokeMethod(name, dllName, attributes, callingConvention, returnType, parameterTypes, nativeCallConv, nativeCharSet)end
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, typesize:System.Int32):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, interfaces:System.Type[]):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, packsize:System.Reflection.Emit.PackingSize):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, packingSize:System.Reflection.Emit.PackingSize, typesize:System.Int32):System.Reflection.Emit.TypeBuilder
---@param name System.String
---@return System.Reflection.Emit.TypeBuilder
function System.Reflection.Emit.ModuleBuilder:DefineType(name)end
---@param arrayClass System.Type
---@param methodName System.String
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.ModuleBuilder:GetArrayMethod(arrayClass, methodName, callingConvention, returnType, parameterTypes)end
---@param name System.String
---@param visibility System.Reflection.TypeAttributes
---@param underlyingType System.Type
---@return System.Reflection.Emit.EnumBuilder
function System.Reflection.Emit.ModuleBuilder:DefineEnum(name, visibility, underlyingType)end
---@overload fun(className:System.String, ignoreCase:System.Boolean):System.Type
---@overload fun(className:System.String, throwOnError:System.Boolean, ignoreCase:System.Boolean):System.Type
---@param className System.String
---@return System.Type
function System.Reflection.Emit.ModuleBuilder:GetType(className)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.ModuleBuilder:SetCustomAttribute(customBuilder)end
---@return System.Diagnostics.SymbolStore.ISymbolWriter
function System.Reflection.Emit.ModuleBuilder:GetSymWriter()end
---@param url System.String
---@param language System.Guid
---@param languageVendor System.Guid
---@param documentType System.Guid
---@return System.Diagnostics.SymbolStore.ISymbolDocumentWriter
function System.Reflection.Emit.ModuleBuilder:DefineDocument(url, language, languageVendor, documentType)end
---@return System.Type[]
function System.Reflection.Emit.ModuleBuilder:GetTypes()end
---@overload fun(name:System.String, description:System.String, attribute:System.Reflection.ResourceAttributes):System.Resources.IResourceWriter
---@param name System.String
---@param description System.String
---@return System.Resources.IResourceWriter
function System.Reflection.Emit.ModuleBuilder:DefineResource(name, description)end
---@overload fun(resourceFileName:System.String):System.Void
---@param resource System.Byte[]
---@return System.Void
function System.Reflection.Emit.ModuleBuilder:DefineUnmanagedResource(resource)end
---@param name System.String
---@param stream System.IO.Stream
---@param attribute System.Reflection.ResourceAttributes
---@return System.Void
function System.Reflection.Emit.ModuleBuilder:DefineManifestResource(name, stream, attribute)end
---@param name System.String
---@param data System.Byte[]
---@return System.Void
function System.Reflection.Emit.ModuleBuilder:SetSymCustomAttribute(name, data)end
---@param entryPoint System.Reflection.MethodInfo
---@return System.Void
function System.Reflection.Emit.ModuleBuilder:SetUserEntryPoint(entryPoint)end
---@overload fun(method:System.Reflection.MethodInfo, optionalParameterTypes:System.Collections.Generic.IEnumerable):System.Reflection.Emit.MethodToken
---@param method System.Reflection.MethodInfo
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ModuleBuilder:GetMethodToken(method)end
---@param arrayClass System.Type
---@param methodName System.String
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ModuleBuilder:GetArrayMethodToken(arrayClass, methodName, callingConvention, returnType, parameterTypes)end
---@overload fun(constructor:System.Reflection.ConstructorInfo, optionalParameterTypes:System.Collections.Generic.IEnumerable):System.Reflection.Emit.MethodToken
---@param con System.Reflection.ConstructorInfo
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ModuleBuilder:GetConstructorToken(con)end
---@param field System.Reflection.FieldInfo
---@return System.Reflection.Emit.FieldToken
function System.Reflection.Emit.ModuleBuilder:GetFieldToken(field)end
---@overload fun(sigBytes:System.Byte[], sigLength:System.Int32):System.Reflection.Emit.SignatureToken
---@param sigHelper System.Reflection.Emit.SignatureHelper
---@return System.Reflection.Emit.SignatureToken
function System.Reflection.Emit.ModuleBuilder:GetSignatureToken(sigHelper)end
---@param str System.String
---@return System.Reflection.Emit.StringToken
function System.Reflection.Emit.ModuleBuilder:GetStringConstant(str)end
---@overload fun(name:System.String):System.Reflection.Emit.TypeToken
---@param type System.Type
---@return System.Reflection.Emit.TypeToken
function System.Reflection.Emit.ModuleBuilder:GetTypeToken(type)end
---@return System.Boolean
function System.Reflection.Emit.ModuleBuilder:IsResource()end
---@param metadataToken System.Int32
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.ModuleBuilder:ResolveField(metadataToken, genericTypeArguments, genericMethodArguments)end
---@param metadataToken System.Int32
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MemberInfo
function System.Reflection.Emit.ModuleBuilder:ResolveMember(metadataToken, genericTypeArguments, genericMethodArguments)end
---@param metadataToken System.Int32
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MethodBase
function System.Reflection.Emit.ModuleBuilder:ResolveMethod(metadataToken, genericTypeArguments, genericMethodArguments)end
---@param metadataToken System.Int32
---@return System.String
function System.Reflection.Emit.ModuleBuilder:ResolveString(metadataToken)end
---@param metadataToken System.Int32
---@return System.Byte[]
function System.Reflection.Emit.ModuleBuilder:ResolveSignature(metadataToken)end
---@param metadataToken System.Int32
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Type
function System.Reflection.Emit.ModuleBuilder:ResolveType(metadataToken, genericTypeArguments, genericMethodArguments)end
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.ModuleBuilder:Equals(obj)end
---@return System.Int32
function System.Reflection.Emit.ModuleBuilder:GetHashCode()end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.ModuleBuilder:IsDefined(attributeType, inherit)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.ModuleBuilder:GetCustomAttributes(inherit)end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.ModuleBuilder:GetField(name, bindingAttr)end
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.ModuleBuilder:GetFields(bindingFlags)end
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.ModuleBuilder:GetMethods(bindingFlags)end
---@class System.Reflection.Emit.OpCode : System.ValueType
---@field public Name System.String @  getter
---@field public Size System.Int32 @  getter
---@field public OpCodeType System.Reflection.Emit.OpCodeType @  getter
---@field public OperandType System.Reflection.Emit.OperandType @  getter
---@field public FlowControl System.Reflection.Emit.FlowControl @  getter
---@field public StackBehaviourPop System.Reflection.Emit.StackBehaviour @  getter
---@field public StackBehaviourPush System.Reflection.Emit.StackBehaviour @  getter
---@field public Value System.Int16 @  getter
System.Reflection.Emit.OpCode = {}
---@type System.Reflection.Emit.OpCode
CS.System.Reflection.Emit.OpCode = System.Reflection.Emit.OpCode

---@return System.Int32
function System.Reflection.Emit.OpCode:GetHashCode()end
---@overload fun(obj:System.Reflection.Emit.OpCode):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.OpCode:Equals(obj)end
---@return System.String
function System.Reflection.Emit.OpCode:ToString()end
---@param a System.Reflection.Emit.OpCode
---@param b System.Reflection.Emit.OpCode
---@return System.Boolean
function System.Reflection.Emit.OpCode.op_Equality(a, b)end
---@param a System.Reflection.Emit.OpCode
---@param b System.Reflection.Emit.OpCode
---@return System.Boolean
function System.Reflection.Emit.OpCode.op_Inequality(a, b)end
---@class System.Reflection.Emit.OpCodeType : System.Enum
System.Reflection.Emit.OpCodeType = {}
---@type System.Reflection.Emit.OpCodeType
CS.System.Reflection.Emit.OpCodeType = System.Reflection.Emit.OpCodeType

---@return System.Int32 value:0
System.Reflection.Emit.OpCodeType.Annotation = 0
---@return System.Int32 value:1
System.Reflection.Emit.OpCodeType.Macro = 1
---@return System.Int32 value:2
System.Reflection.Emit.OpCodeType.Nternal = 2
---@return System.Int32 value:3
System.Reflection.Emit.OpCodeType.Objmodel = 3
---@return System.Int32 value:4
System.Reflection.Emit.OpCodeType.Prefix = 4
---@return System.Int32 value:5
System.Reflection.Emit.OpCodeType.Primitive = 5

---@class System.Reflection.Emit.OpCodes : System.Object
---@field public Nop System.Reflection.Emit.OpCode
---@field public Break System.Reflection.Emit.OpCode
---@field public Ldarg_0 System.Reflection.Emit.OpCode
---@field public Ldarg_1 System.Reflection.Emit.OpCode
---@field public Ldarg_2 System.Reflection.Emit.OpCode
---@field public Ldarg_3 System.Reflection.Emit.OpCode
---@field public Ldloc_0 System.Reflection.Emit.OpCode
---@field public Ldloc_1 System.Reflection.Emit.OpCode
---@field public Ldloc_2 System.Reflection.Emit.OpCode
---@field public Ldloc_3 System.Reflection.Emit.OpCode
---@field public Stloc_0 System.Reflection.Emit.OpCode
---@field public Stloc_1 System.Reflection.Emit.OpCode
---@field public Stloc_2 System.Reflection.Emit.OpCode
---@field public Stloc_3 System.Reflection.Emit.OpCode
---@field public Ldarg_S System.Reflection.Emit.OpCode
---@field public Ldarga_S System.Reflection.Emit.OpCode
---@field public Starg_S System.Reflection.Emit.OpCode
---@field public Ldloc_S System.Reflection.Emit.OpCode
---@field public Ldloca_S System.Reflection.Emit.OpCode
---@field public Stloc_S System.Reflection.Emit.OpCode
---@field public Ldnull System.Reflection.Emit.OpCode
---@field public Ldc_I4_M1 System.Reflection.Emit.OpCode
---@field public Ldc_I4_0 System.Reflection.Emit.OpCode
---@field public Ldc_I4_1 System.Reflection.Emit.OpCode
---@field public Ldc_I4_2 System.Reflection.Emit.OpCode
---@field public Ldc_I4_3 System.Reflection.Emit.OpCode
---@field public Ldc_I4_4 System.Reflection.Emit.OpCode
---@field public Ldc_I4_5 System.Reflection.Emit.OpCode
---@field public Ldc_I4_6 System.Reflection.Emit.OpCode
---@field public Ldc_I4_7 System.Reflection.Emit.OpCode
---@field public Ldc_I4_8 System.Reflection.Emit.OpCode
---@field public Ldc_I4_S System.Reflection.Emit.OpCode
---@field public Ldc_I4 System.Reflection.Emit.OpCode
---@field public Ldc_I8 System.Reflection.Emit.OpCode
---@field public Ldc_R4 System.Reflection.Emit.OpCode
---@field public Ldc_R8 System.Reflection.Emit.OpCode
---@field public Dup System.Reflection.Emit.OpCode
---@field public Pop System.Reflection.Emit.OpCode
---@field public Jmp System.Reflection.Emit.OpCode
---@field public Call System.Reflection.Emit.OpCode
---@field public Calli System.Reflection.Emit.OpCode
---@field public Ret System.Reflection.Emit.OpCode
---@field public Br_S System.Reflection.Emit.OpCode
---@field public Brfalse_S System.Reflection.Emit.OpCode
---@field public Brtrue_S System.Reflection.Emit.OpCode
---@field public Beq_S System.Reflection.Emit.OpCode
---@field public Bge_S System.Reflection.Emit.OpCode
---@field public Bgt_S System.Reflection.Emit.OpCode
---@field public Ble_S System.Reflection.Emit.OpCode
---@field public Blt_S System.Reflection.Emit.OpCode
---@field public Bne_Un_S System.Reflection.Emit.OpCode
---@field public Bge_Un_S System.Reflection.Emit.OpCode
---@field public Bgt_Un_S System.Reflection.Emit.OpCode
---@field public Ble_Un_S System.Reflection.Emit.OpCode
---@field public Blt_Un_S System.Reflection.Emit.OpCode
---@field public Br System.Reflection.Emit.OpCode
---@field public Brfalse System.Reflection.Emit.OpCode
---@field public Brtrue System.Reflection.Emit.OpCode
---@field public Beq System.Reflection.Emit.OpCode
---@field public Bge System.Reflection.Emit.OpCode
---@field public Bgt System.Reflection.Emit.OpCode
---@field public Ble System.Reflection.Emit.OpCode
---@field public Blt System.Reflection.Emit.OpCode
---@field public Bne_Un System.Reflection.Emit.OpCode
---@field public Bge_Un System.Reflection.Emit.OpCode
---@field public Bgt_Un System.Reflection.Emit.OpCode
---@field public Ble_Un System.Reflection.Emit.OpCode
---@field public Blt_Un System.Reflection.Emit.OpCode
---@field public Switch System.Reflection.Emit.OpCode
---@field public Ldind_I1 System.Reflection.Emit.OpCode
---@field public Ldind_U1 System.Reflection.Emit.OpCode
---@field public Ldind_I2 System.Reflection.Emit.OpCode
---@field public Ldind_U2 System.Reflection.Emit.OpCode
---@field public Ldind_I4 System.Reflection.Emit.OpCode
---@field public Ldind_U4 System.Reflection.Emit.OpCode
---@field public Ldind_I8 System.Reflection.Emit.OpCode
---@field public Ldind_I System.Reflection.Emit.OpCode
---@field public Ldind_R4 System.Reflection.Emit.OpCode
---@field public Ldind_R8 System.Reflection.Emit.OpCode
---@field public Ldind_Ref System.Reflection.Emit.OpCode
---@field public Stind_Ref System.Reflection.Emit.OpCode
---@field public Stind_I1 System.Reflection.Emit.OpCode
---@field public Stind_I2 System.Reflection.Emit.OpCode
---@field public Stind_I4 System.Reflection.Emit.OpCode
---@field public Stind_I8 System.Reflection.Emit.OpCode
---@field public Stind_R4 System.Reflection.Emit.OpCode
---@field public Stind_R8 System.Reflection.Emit.OpCode
---@field public Add System.Reflection.Emit.OpCode
---@field public Sub System.Reflection.Emit.OpCode
---@field public Mul System.Reflection.Emit.OpCode
---@field public Div System.Reflection.Emit.OpCode
---@field public Div_Un System.Reflection.Emit.OpCode
---@field public Rem System.Reflection.Emit.OpCode
---@field public Rem_Un System.Reflection.Emit.OpCode
---@field public And System.Reflection.Emit.OpCode
---@field public Or System.Reflection.Emit.OpCode
---@field public Xor System.Reflection.Emit.OpCode
---@field public Shl System.Reflection.Emit.OpCode
---@field public Shr System.Reflection.Emit.OpCode
---@field public Shr_Un System.Reflection.Emit.OpCode
---@field public Neg System.Reflection.Emit.OpCode
---@field public Not System.Reflection.Emit.OpCode
---@field public Conv_I1 System.Reflection.Emit.OpCode
---@field public Conv_I2 System.Reflection.Emit.OpCode
---@field public Conv_I4 System.Reflection.Emit.OpCode
---@field public Conv_I8 System.Reflection.Emit.OpCode
---@field public Conv_R4 System.Reflection.Emit.OpCode
---@field public Conv_R8 System.Reflection.Emit.OpCode
---@field public Conv_U4 System.Reflection.Emit.OpCode
---@field public Conv_U8 System.Reflection.Emit.OpCode
---@field public Callvirt System.Reflection.Emit.OpCode
---@field public Cpobj System.Reflection.Emit.OpCode
---@field public Ldobj System.Reflection.Emit.OpCode
---@field public Ldstr System.Reflection.Emit.OpCode
---@field public Newobj System.Reflection.Emit.OpCode
---@field public Castclass System.Reflection.Emit.OpCode
---@field public Isinst System.Reflection.Emit.OpCode
---@field public Conv_R_Un System.Reflection.Emit.OpCode
---@field public Unbox System.Reflection.Emit.OpCode
---@field public Throw System.Reflection.Emit.OpCode
---@field public Ldfld System.Reflection.Emit.OpCode
---@field public Ldflda System.Reflection.Emit.OpCode
---@field public Stfld System.Reflection.Emit.OpCode
---@field public Ldsfld System.Reflection.Emit.OpCode
---@field public Ldsflda System.Reflection.Emit.OpCode
---@field public Stsfld System.Reflection.Emit.OpCode
---@field public Stobj System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I1_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I2_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I4_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I8_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U1_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U2_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U4_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U8_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I_Un System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U_Un System.Reflection.Emit.OpCode
---@field public Box System.Reflection.Emit.OpCode
---@field public Newarr System.Reflection.Emit.OpCode
---@field public Ldlen System.Reflection.Emit.OpCode
---@field public Ldelema System.Reflection.Emit.OpCode
---@field public Ldelem_I1 System.Reflection.Emit.OpCode
---@field public Ldelem_U1 System.Reflection.Emit.OpCode
---@field public Ldelem_I2 System.Reflection.Emit.OpCode
---@field public Ldelem_U2 System.Reflection.Emit.OpCode
---@field public Ldelem_I4 System.Reflection.Emit.OpCode
---@field public Ldelem_U4 System.Reflection.Emit.OpCode
---@field public Ldelem_I8 System.Reflection.Emit.OpCode
---@field public Ldelem_I System.Reflection.Emit.OpCode
---@field public Ldelem_R4 System.Reflection.Emit.OpCode
---@field public Ldelem_R8 System.Reflection.Emit.OpCode
---@field public Ldelem_Ref System.Reflection.Emit.OpCode
---@field public Stelem_I System.Reflection.Emit.OpCode
---@field public Stelem_I1 System.Reflection.Emit.OpCode
---@field public Stelem_I2 System.Reflection.Emit.OpCode
---@field public Stelem_I4 System.Reflection.Emit.OpCode
---@field public Stelem_I8 System.Reflection.Emit.OpCode
---@field public Stelem_R4 System.Reflection.Emit.OpCode
---@field public Stelem_R8 System.Reflection.Emit.OpCode
---@field public Stelem_Ref System.Reflection.Emit.OpCode
---@field public Ldelem System.Reflection.Emit.OpCode
---@field public Stelem System.Reflection.Emit.OpCode
---@field public Unbox_Any System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I1 System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U1 System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I2 System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U2 System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I4 System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U4 System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I8 System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U8 System.Reflection.Emit.OpCode
---@field public Refanyval System.Reflection.Emit.OpCode
---@field public Ckfinite System.Reflection.Emit.OpCode
---@field public Mkrefany System.Reflection.Emit.OpCode
---@field public Ldtoken System.Reflection.Emit.OpCode
---@field public Conv_U2 System.Reflection.Emit.OpCode
---@field public Conv_U1 System.Reflection.Emit.OpCode
---@field public Conv_I System.Reflection.Emit.OpCode
---@field public Conv_Ovf_I System.Reflection.Emit.OpCode
---@field public Conv_Ovf_U System.Reflection.Emit.OpCode
---@field public Add_Ovf System.Reflection.Emit.OpCode
---@field public Add_Ovf_Un System.Reflection.Emit.OpCode
---@field public Mul_Ovf System.Reflection.Emit.OpCode
---@field public Mul_Ovf_Un System.Reflection.Emit.OpCode
---@field public Sub_Ovf System.Reflection.Emit.OpCode
---@field public Sub_Ovf_Un System.Reflection.Emit.OpCode
---@field public Endfinally System.Reflection.Emit.OpCode
---@field public Leave System.Reflection.Emit.OpCode
---@field public Leave_S System.Reflection.Emit.OpCode
---@field public Stind_I System.Reflection.Emit.OpCode
---@field public Conv_U System.Reflection.Emit.OpCode
---@field public Prefix7 System.Reflection.Emit.OpCode
---@field public Prefix6 System.Reflection.Emit.OpCode
---@field public Prefix5 System.Reflection.Emit.OpCode
---@field public Prefix4 System.Reflection.Emit.OpCode
---@field public Prefix3 System.Reflection.Emit.OpCode
---@field public Prefix2 System.Reflection.Emit.OpCode
---@field public Prefix1 System.Reflection.Emit.OpCode
---@field public Prefixref System.Reflection.Emit.OpCode
---@field public Arglist System.Reflection.Emit.OpCode
---@field public Ceq System.Reflection.Emit.OpCode
---@field public Cgt System.Reflection.Emit.OpCode
---@field public Cgt_Un System.Reflection.Emit.OpCode
---@field public Clt System.Reflection.Emit.OpCode
---@field public Clt_Un System.Reflection.Emit.OpCode
---@field public Ldftn System.Reflection.Emit.OpCode
---@field public Ldvirtftn System.Reflection.Emit.OpCode
---@field public Ldarg System.Reflection.Emit.OpCode
---@field public Ldarga System.Reflection.Emit.OpCode
---@field public Starg System.Reflection.Emit.OpCode
---@field public Ldloc System.Reflection.Emit.OpCode
---@field public Ldloca System.Reflection.Emit.OpCode
---@field public Stloc System.Reflection.Emit.OpCode
---@field public Localloc System.Reflection.Emit.OpCode
---@field public Endfilter System.Reflection.Emit.OpCode
---@field public Unaligned System.Reflection.Emit.OpCode
---@field public Volatile System.Reflection.Emit.OpCode
---@field public Tailcall System.Reflection.Emit.OpCode
---@field public Initobj System.Reflection.Emit.OpCode
---@field public Constrained System.Reflection.Emit.OpCode
---@field public Cpblk System.Reflection.Emit.OpCode
---@field public Initblk System.Reflection.Emit.OpCode
---@field public Rethrow System.Reflection.Emit.OpCode
---@field public Sizeof System.Reflection.Emit.OpCode
---@field public Refanytype System.Reflection.Emit.OpCode
---@field public Readonly System.Reflection.Emit.OpCode
System.Reflection.Emit.OpCodes = {}
---@type System.Reflection.Emit.OpCodes
CS.System.Reflection.Emit.OpCodes = System.Reflection.Emit.OpCodes

---@param inst System.Reflection.Emit.OpCode
---@return System.Boolean
function System.Reflection.Emit.OpCodes.TakesSingleByteArgument(inst)end
---@class System.Reflection.Emit.OperandType : System.Enum
System.Reflection.Emit.OperandType = {}
---@type System.Reflection.Emit.OperandType
CS.System.Reflection.Emit.OperandType = System.Reflection.Emit.OperandType

---@return System.Int32 value:0
System.Reflection.Emit.OperandType.InlineBrTarget = 0
---@return System.Int32 value:1
System.Reflection.Emit.OperandType.InlineField = 1
---@return System.Int32 value:2
System.Reflection.Emit.OperandType.InlineI = 2
---@return System.Int32 value:3
System.Reflection.Emit.OperandType.InlineI8 = 3
---@return System.Int32 value:4
System.Reflection.Emit.OperandType.InlineMethod = 4
---@return System.Int32 value:5
System.Reflection.Emit.OperandType.InlineNone = 5
---@return System.Int32 value:6
System.Reflection.Emit.OperandType.InlinePhi = 6
---@return System.Int32 value:7
System.Reflection.Emit.OperandType.InlineR = 7
---@return System.Int32 value:9
System.Reflection.Emit.OperandType.InlineSig = 9
---@return System.Int32 value:10
System.Reflection.Emit.OperandType.InlineString = 10
---@return System.Int32 value:11
System.Reflection.Emit.OperandType.InlineSwitch = 11
---@return System.Int32 value:12
System.Reflection.Emit.OperandType.InlineTok = 12
---@return System.Int32 value:13
System.Reflection.Emit.OperandType.InlineType = 13
---@return System.Int32 value:14
System.Reflection.Emit.OperandType.InlineVar = 14
---@return System.Int32 value:15
System.Reflection.Emit.OperandType.ShortInlineBrTarget = 15
---@return System.Int32 value:16
System.Reflection.Emit.OperandType.ShortInlineI = 16
---@return System.Int32 value:17
System.Reflection.Emit.OperandType.ShortInlineR = 17

---@class System.Reflection.Emit.PEFileKinds : System.Enum
System.Reflection.Emit.PEFileKinds = {}
---@type System.Reflection.Emit.PEFileKinds
CS.System.Reflection.Emit.PEFileKinds = System.Reflection.Emit.PEFileKinds

---@return System.Int32 value:1
System.Reflection.Emit.PEFileKinds.Dll = 1
---@return System.Int32 value:2
System.Reflection.Emit.PEFileKinds.ConsoleApplication = 2

---@class System.Reflection.Emit.PackingSize : System.Enum
System.Reflection.Emit.PackingSize = {}
---@type System.Reflection.Emit.PackingSize
CS.System.Reflection.Emit.PackingSize = System.Reflection.Emit.PackingSize

---@return System.Int32 value:0
System.Reflection.Emit.PackingSize.Unspecified = 0
---@return System.Int32 value:1
System.Reflection.Emit.PackingSize.Size1 = 1
---@return System.Int32 value:2
System.Reflection.Emit.PackingSize.Size2 = 2
---@return System.Int32 value:4
System.Reflection.Emit.PackingSize.Size4 = 4
---@return System.Int32 value:8
System.Reflection.Emit.PackingSize.Size8 = 8

---@class System.Reflection.Emit.ParameterBuilder : System.Object
---@field public Attributes System.Int32 @  getter
---@field public IsIn System.Boolean @  getter
---@field public IsOut System.Boolean @  getter
---@field public IsOptional System.Boolean @  getter
---@field public Name System.String @  getter
---@field public Position System.Int32 @  getter
System.Reflection.Emit.ParameterBuilder = {}
---@type System.Reflection.Emit.ParameterBuilder
CS.System.Reflection.Emit.ParameterBuilder = System.Reflection.Emit.ParameterBuilder

---@return System.Reflection.Emit.ParameterToken
function System.Reflection.Emit.ParameterBuilder:GetToken()end
---@param defaultValue System.Object
---@return System.Void
function System.Reflection.Emit.ParameterBuilder:SetConstant(defaultValue)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.ParameterBuilder:SetCustomAttribute(customBuilder)end
---@param unmanagedMarshal System.Reflection.Emit.UnmanagedMarshal
---@return System.Void
function System.Reflection.Emit.ParameterBuilder:SetMarshal(unmanagedMarshal)end
---@class System.Reflection.Emit.ParameterToken : System.ValueType
---@field public Token System.Int32 @  getter
---@field public Empty System.Reflection.Emit.ParameterToken
System.Reflection.Emit.ParameterToken = {}
---@type System.Reflection.Emit.ParameterToken
CS.System.Reflection.Emit.ParameterToken = System.Reflection.Emit.ParameterToken

---@overload fun(obj:System.Reflection.Emit.ParameterToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.ParameterToken:Equals(obj)end
---@param a System.Reflection.Emit.ParameterToken
---@param b System.Reflection.Emit.ParameterToken
---@return System.Boolean
function System.Reflection.Emit.ParameterToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.ParameterToken
---@param b System.Reflection.Emit.ParameterToken
---@return System.Boolean
function System.Reflection.Emit.ParameterToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.ParameterToken:GetHashCode()end
---@class System.Reflection.Emit.PropertyBuilder : System.Reflection.PropertyInfo
---@field public Attributes System.Reflection.PropertyAttributes @  getter
---@field public CanRead System.Boolean @  getter
---@field public CanWrite System.Boolean @  getter
---@field public DeclaringType System.Type @  getter
---@field public Name System.String @  getter
---@field public PropertyToken System.Reflection.Emit.PropertyToken @  getter
---@field public PropertyType System.Type @  getter
---@field public ReflectedType System.Type @  getter
---@field public Module System.Reflection.Module @  getter
System.Reflection.Emit.PropertyBuilder = {}
---@type System.Reflection.Emit.PropertyBuilder
CS.System.Reflection.Emit.PropertyBuilder = System.Reflection.Emit.PropertyBuilder

---@param mdBuilder System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Reflection.Emit.PropertyBuilder:AddOtherMethod(mdBuilder)end
---@param nonPublic System.Boolean
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.PropertyBuilder:GetAccessors(nonPublic)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.PropertyBuilder:GetCustomAttributes(inherit)end
---@param nonPublic System.Boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.PropertyBuilder:GetGetMethod(nonPublic)end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.PropertyBuilder:GetIndexParameters()end
---@param nonPublic System.Boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.PropertyBuilder:GetSetMethod(nonPublic)end
---@overload fun(obj:System.Object, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:System.Object[], culture:System.Globalization.CultureInfo):System.Object
---@param obj System.Object
---@param index System.Object[]
---@return System.Object
function System.Reflection.Emit.PropertyBuilder:GetValue(obj, index)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.PropertyBuilder:IsDefined(attributeType, inherit)end
---@param defaultValue System.Object
---@return System.Void
function System.Reflection.Emit.PropertyBuilder:SetConstant(defaultValue)end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.PropertyBuilder:SetCustomAttribute(customBuilder)end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Reflection.Emit.PropertyBuilder:SetGetMethod(mdBuilder)end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
---@return System.Void
function System.Reflection.Emit.PropertyBuilder:SetSetMethod(mdBuilder)end
---@overload fun(obj:System.Object, value:System.Object, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, index:System.Object[], culture:System.Globalization.CultureInfo):System.Void
---@param obj System.Object
---@param value System.Object
---@param index System.Object[]
---@return System.Void
function System.Reflection.Emit.PropertyBuilder:SetValue(obj, value, index)end
---@class System.Reflection.Emit.PropertyToken : System.ValueType
---@field public Token System.Int32 @  getter
---@field public Empty System.Reflection.Emit.PropertyToken
System.Reflection.Emit.PropertyToken = {}
---@type System.Reflection.Emit.PropertyToken
CS.System.Reflection.Emit.PropertyToken = System.Reflection.Emit.PropertyToken

---@overload fun(obj:System.Reflection.Emit.PropertyToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.PropertyToken:Equals(obj)end
---@param a System.Reflection.Emit.PropertyToken
---@param b System.Reflection.Emit.PropertyToken
---@return System.Boolean
function System.Reflection.Emit.PropertyToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.PropertyToken
---@param b System.Reflection.Emit.PropertyToken
---@return System.Boolean
function System.Reflection.Emit.PropertyToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.PropertyToken:GetHashCode()end
---@class System.Reflection.Emit.SignatureHelper : System.Object
System.Reflection.Emit.SignatureHelper = {}
---@type System.Reflection.Emit.SignatureHelper
CS.System.Reflection.Emit.SignatureHelper = System.Reflection.Emit.SignatureHelper

---@param mod System.Reflection.Module
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetFieldSigHelper(mod)end
---@overload fun(mod:System.Reflection.Module):System.Reflection.Emit.SignatureHelper
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetLocalVarSigHelper()end
---@overload fun(unmanagedCallingConvention:System.Runtime.InteropServices.CallingConvention, returnType:System.Type):System.Reflection.Emit.SignatureHelper
---@overload fun(mod:System.Reflection.Module, callingConvention:System.Reflection.CallingConventions, returnType:System.Type):System.Reflection.Emit.SignatureHelper
---@overload fun(mod:System.Reflection.Module, unmanagedCallConv:System.Runtime.InteropServices.CallingConvention, returnType:System.Type):System.Reflection.Emit.SignatureHelper
---@overload fun(mod:System.Reflection.Module, returnType:System.Type, parameterTypes:System.Type[]):System.Reflection.Emit.SignatureHelper
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetMethodSigHelper(callingConvention, returnType)end
---@overload fun(mod:System.Reflection.Module, returnType:System.Type, requiredReturnTypeCustomModifiers:System.Type[], optionalReturnTypeCustomModifiers:System.Type[], parameterTypes:System.Type[], requiredParameterTypeCustomModifiers:System.Type[][], optionalParameterTypeCustomModifiers:System.Type[][]):System.Reflection.Emit.SignatureHelper
---@overload fun(mod:System.Reflection.Module, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, requiredReturnTypeCustomModifiers:System.Type[], optionalReturnTypeCustomModifiers:System.Type[], parameterTypes:System.Type[], requiredParameterTypeCustomModifiers:System.Type[][], optionalParameterTypeCustomModifiers:System.Type[][]):System.Reflection.Emit.SignatureHelper
---@param mod System.Reflection.Module
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetPropertySigHelper(mod, returnType, parameterTypes)end
---@param arguments System.Type[]
---@param requiredCustomModifiers System.Type[][]
---@param optionalCustomModifiers System.Type[][]
---@return System.Void
function System.Reflection.Emit.SignatureHelper:AddArguments(arguments, requiredCustomModifiers, optionalCustomModifiers)end
---@overload fun(argument:System.Type, pinned:System.Boolean):System.Void
---@overload fun(argument:System.Type, requiredCustomModifiers:System.Type[], optionalCustomModifiers:System.Type[]):System.Void
---@param clsArgument System.Type
---@return System.Void
function System.Reflection.Emit.SignatureHelper:AddArgument(clsArgument)end
---@return System.Void
function System.Reflection.Emit.SignatureHelper:AddSentinel()end
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.SignatureHelper:Equals(obj)end
---@return System.Int32
function System.Reflection.Emit.SignatureHelper:GetHashCode()end
---@return System.Byte[]
function System.Reflection.Emit.SignatureHelper:GetSignature()end
---@return System.String
function System.Reflection.Emit.SignatureHelper:ToString()end
---@class System.Reflection.Emit.SignatureToken : System.ValueType
---@field public Token System.Int32 @  getter
---@field public Empty System.Reflection.Emit.SignatureToken
System.Reflection.Emit.SignatureToken = {}
---@type System.Reflection.Emit.SignatureToken
CS.System.Reflection.Emit.SignatureToken = System.Reflection.Emit.SignatureToken

---@overload fun(obj:System.Reflection.Emit.SignatureToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.SignatureToken:Equals(obj)end
---@param a System.Reflection.Emit.SignatureToken
---@param b System.Reflection.Emit.SignatureToken
---@return System.Boolean
function System.Reflection.Emit.SignatureToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.SignatureToken
---@param b System.Reflection.Emit.SignatureToken
---@return System.Boolean
function System.Reflection.Emit.SignatureToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.SignatureToken:GetHashCode()end
---@class System.Reflection.Emit.StackBehaviour : System.Enum
System.Reflection.Emit.StackBehaviour = {}
---@type System.Reflection.Emit.StackBehaviour
CS.System.Reflection.Emit.StackBehaviour = System.Reflection.Emit.StackBehaviour

---@return System.Int32 value:0
System.Reflection.Emit.StackBehaviour.Pop0 = 0
---@return System.Int32 value:1
System.Reflection.Emit.StackBehaviour.Pop1 = 1
---@return System.Int32 value:2
System.Reflection.Emit.StackBehaviour.Pop1_pop1 = 2
---@return System.Int32 value:3
System.Reflection.Emit.StackBehaviour.Popi = 3
---@return System.Int32 value:4
System.Reflection.Emit.StackBehaviour.Popi_pop1 = 4
---@return System.Int32 value:5
System.Reflection.Emit.StackBehaviour.Popi_popi = 5
---@return System.Int32 value:6
System.Reflection.Emit.StackBehaviour.Popi_popi8 = 6
---@return System.Int32 value:7
System.Reflection.Emit.StackBehaviour.Popi_popi_popi = 7
---@return System.Int32 value:8
System.Reflection.Emit.StackBehaviour.Popi_popr4 = 8
---@return System.Int32 value:9
System.Reflection.Emit.StackBehaviour.Popi_popr8 = 9
---@return System.Int32 value:10
System.Reflection.Emit.StackBehaviour.Popref = 10
---@return System.Int32 value:11
System.Reflection.Emit.StackBehaviour.Popref_pop1 = 11
---@return System.Int32 value:12
System.Reflection.Emit.StackBehaviour.Popref_popi = 12
---@return System.Int32 value:13
System.Reflection.Emit.StackBehaviour.Popref_popi_popi = 13
---@return System.Int32 value:14
System.Reflection.Emit.StackBehaviour.Popref_popi_popi8 = 14
---@return System.Int32 value:15
System.Reflection.Emit.StackBehaviour.Popref_popi_popr4 = 15
---@return System.Int32 value:16
System.Reflection.Emit.StackBehaviour.Popref_popi_popr8 = 16
---@return System.Int32 value:17
System.Reflection.Emit.StackBehaviour.Popref_popi_popref = 17
---@return System.Int32 value:18
System.Reflection.Emit.StackBehaviour.Push0 = 18
---@return System.Int32 value:19
System.Reflection.Emit.StackBehaviour.Push1 = 19
---@return System.Int32 value:20
System.Reflection.Emit.StackBehaviour.Push1_push1 = 20
---@return System.Int32 value:21
System.Reflection.Emit.StackBehaviour.Pushi = 21
---@return System.Int32 value:22
System.Reflection.Emit.StackBehaviour.Pushi8 = 22
---@return System.Int32 value:23
System.Reflection.Emit.StackBehaviour.Pushr4 = 23
---@return System.Int32 value:24
System.Reflection.Emit.StackBehaviour.Pushr8 = 24
---@return System.Int32 value:25
System.Reflection.Emit.StackBehaviour.Pushref = 25
---@return System.Int32 value:26
System.Reflection.Emit.StackBehaviour.Varpop = 26
---@return System.Int32 value:27
System.Reflection.Emit.StackBehaviour.Varpush = 27
---@return System.Int32 value:28
System.Reflection.Emit.StackBehaviour.Popref_popi_pop1 = 28

---@class System.Reflection.Emit.StringToken : System.ValueType
---@field public Token System.Int32 @  getter
System.Reflection.Emit.StringToken = {}
---@type System.Reflection.Emit.StringToken
CS.System.Reflection.Emit.StringToken = System.Reflection.Emit.StringToken

---@overload fun(obj:System.Reflection.Emit.StringToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.StringToken:Equals(obj)end
---@param a System.Reflection.Emit.StringToken
---@param b System.Reflection.Emit.StringToken
---@return System.Boolean
function System.Reflection.Emit.StringToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.StringToken
---@param b System.Reflection.Emit.StringToken
---@return System.Boolean
function System.Reflection.Emit.StringToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.StringToken:GetHashCode()end
---@class System.Reflection.Emit.TypeBuilder : System.Reflection.TypeInfo
---@field public Assembly System.Reflection.Assembly @  getter
---@field public AssemblyQualifiedName System.String @  getter
---@field public BaseType System.Type @  getter
---@field public DeclaringType System.Type @  getter
---@field public UnderlyingSystemType System.Type @  getter
---@field public FullName System.String @  getter
---@field public GUID System.Guid @  getter
---@field public Module System.Reflection.Module @  getter
---@field public Name System.String @  getter
---@field public Namespace System.String @  getter
---@field public PackingSize System.Reflection.Emit.PackingSize @  getter
---@field public Size System.Int32 @  getter
---@field public ReflectedType System.Type @  getter
---@field public TypeHandle System.RuntimeTypeHandle @  getter
---@field public TypeToken System.Reflection.Emit.TypeToken @  getter
---@field public ContainsGenericParameters System.Boolean @  getter
---@field public IsGenericParameter System.Boolean @  getter
---@field public GenericParameterAttributes System.Reflection.GenericParameterAttributes @  getter
---@field public IsGenericTypeDefinition System.Boolean @  getter
---@field public IsGenericType System.Boolean @  getter
---@field public GenericParameterPosition System.Int32 @  getter
---@field public DeclaringMethod System.Reflection.MethodBase @  getter
---@field public IsConstructedGenericType System.Boolean @  getter
---@field public UnspecifiedTypeSize System.Int32
System.Reflection.Emit.TypeBuilder = {}
---@type System.Reflection.Emit.TypeBuilder
CS.System.Reflection.Emit.TypeBuilder = System.Reflection.Emit.TypeBuilder

---@param c System.Type
---@return System.Boolean
function System.Reflection.Emit.TypeBuilder:IsSubclassOf(c)end
---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
---@return System.Void
function System.Reflection.Emit.TypeBuilder:AddDeclarativeSecurity(action, pset)end
---@param interfaceType System.Type
---@return System.Void
function System.Reflection.Emit.TypeBuilder:AddInterfaceImplementation(interfaceType)end
---@param attributeType System.Type
---@param inherit System.Boolean
---@return System.Boolean
function System.Reflection.Emit.TypeBuilder:IsDefined(attributeType, inherit)end
---@overload fun(attributeType:System.Type, inherit:System.Boolean):System.Object[]
---@param inherit System.Boolean
---@return System.Object[]
function System.Reflection.Emit.TypeBuilder:GetCustomAttributes(inherit)end
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, typeSize:System.Int32):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, interfaces:System.Type[]):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, packSize:System.Reflection.Emit.PackingSize):System.Reflection.Emit.TypeBuilder
---@overload fun(name:System.String, attr:System.Reflection.TypeAttributes, parent:System.Type, packSize:System.Reflection.Emit.PackingSize, typeSize:System.Int32):System.Reflection.Emit.TypeBuilder
---@param name System.String
---@return System.Reflection.Emit.TypeBuilder
function System.Reflection.Emit.TypeBuilder:DefineNestedType(name)end
---@overload fun(attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, parameterTypes:System.Type[], requiredCustomModifiers:System.Type[][], optionalCustomModifiers:System.Type[][]):System.Reflection.Emit.ConstructorBuilder
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.ConstructorBuilder
function System.Reflection.Emit.TypeBuilder:DefineConstructor(attributes, callingConvention, parameterTypes)end
---@param attributes System.Reflection.MethodAttributes
---@return System.Reflection.Emit.ConstructorBuilder
function System.Reflection.Emit.TypeBuilder:DefineDefaultConstructor(attributes)end
---@overload fun(name:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions):System.Reflection.Emit.MethodBuilder
---@overload fun(name:System.String, attributes:System.Reflection.MethodAttributes, returnType:System.Type, parameterTypes:System.Type[]):System.Reflection.Emit.MethodBuilder
---@overload fun(name:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[]):System.Reflection.Emit.MethodBuilder
---@overload fun(name:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][]):System.Reflection.Emit.MethodBuilder
---@param name System.String
---@param attributes System.Reflection.MethodAttributes
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.TypeBuilder:DefineMethod(name, attributes)end
---@overload fun(name:System.String, dllName:System.String, entryName:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[], nativeCallConv:System.Runtime.InteropServices.CallingConvention, nativeCharSet:System.Runtime.InteropServices.CharSet):System.Reflection.Emit.MethodBuilder
---@overload fun(name:System.String, dllName:System.String, entryName:System.String, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][], nativeCallConv:System.Runtime.InteropServices.CallingConvention, nativeCharSet:System.Runtime.InteropServices.CharSet):System.Reflection.Emit.MethodBuilder
---@param name System.String
---@param dllName System.String
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param nativeCallConv System.Runtime.InteropServices.CallingConvention
---@param nativeCharSet System.Runtime.InteropServices.CharSet
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.TypeBuilder:DefinePInvokeMethod(name, dllName, attributes, callingConvention, returnType, parameterTypes, nativeCallConv, nativeCharSet)end
---@param methodInfoBody System.Reflection.MethodInfo
---@param methodInfoDeclaration System.Reflection.MethodInfo
---@return System.Void
function System.Reflection.Emit.TypeBuilder:DefineMethodOverride(methodInfoBody, methodInfoDeclaration)end
---@overload fun(fieldName:System.String, type:System.Type, requiredCustomModifiers:System.Type[], optionalCustomModifiers:System.Type[], attributes:System.Reflection.FieldAttributes):System.Reflection.Emit.FieldBuilder
---@param fieldName System.String
---@param type System.Type
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.TypeBuilder:DefineField(fieldName, type, attributes)end
---@overload fun(name:System.String, attributes:System.Reflection.PropertyAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[]):System.Reflection.Emit.PropertyBuilder
---@overload fun(name:System.String, attributes:System.Reflection.PropertyAttributes, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][]):System.Reflection.Emit.PropertyBuilder
---@overload fun(name:System.String, attributes:System.Reflection.PropertyAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][]):System.Reflection.Emit.PropertyBuilder
---@param name System.String
---@param attributes System.Reflection.PropertyAttributes
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.PropertyBuilder
function System.Reflection.Emit.TypeBuilder:DefineProperty(name, attributes, returnType, parameterTypes)end
---@return System.Reflection.Emit.ConstructorBuilder
function System.Reflection.Emit.TypeBuilder:DefineTypeInitializer()end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:CreateType()end
---@return System.Reflection.TypeInfo
function System.Reflection.Emit.TypeBuilder:CreateTypeInfo()end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.TypeBuilder:GetConstructors(bindingAttr)end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetElementType()end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.TypeBuilder:GetEvent(name, bindingAttr)end
---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.EventInfo[]
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.TypeBuilder:GetEvents()end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.TypeBuilder:GetField(name, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.TypeBuilder:GetFields(bindingAttr)end
---@param name System.String
---@param ignoreCase System.Boolean
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetInterface(name, ignoreCase)end
---@return System.Type[]
function System.Reflection.Emit.TypeBuilder:GetInterfaces()end
---@param name System.String
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.TypeBuilder:GetMember(name, type, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.TypeBuilder:GetMembers(bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.TypeBuilder:GetMethods(bindingAttr)end
---@param name System.String
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetNestedType(name, bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.TypeBuilder:GetNestedTypes(bindingAttr)end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.TypeBuilder:GetProperties(bindingAttr)end
---@param name System.String
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.TypeBuilder:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters)end
---@overload fun(rank:System.Int32):System.Type
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakeArrayType()end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakeByRefType()end
---@param typeArguments System.Type[]
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakeGenericType(typeArguments)end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakePointerType()end
---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:System.Byte[]):System.Void
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
---@return System.Void
function System.Reflection.Emit.TypeBuilder:SetCustomAttribute(customBuilder)end
---@param name System.String
---@param attributes System.Reflection.EventAttributes
---@param eventtype System.Type
---@return System.Reflection.Emit.EventBuilder
function System.Reflection.Emit.TypeBuilder:DefineEvent(name, attributes, eventtype)end
---@param name System.String
---@param data System.Byte[]
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.TypeBuilder:DefineInitializedData(name, data, attributes)end
---@param name System.String
---@param size System.Int32
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.TypeBuilder:DefineUninitializedData(name, size, attributes)end
---@param parent System.Type
---@return System.Void
function System.Reflection.Emit.TypeBuilder:SetParent(parent)end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Reflection.Emit.TypeBuilder:GetInterfaceMap(interfaceType)end
---@return System.String
function System.Reflection.Emit.TypeBuilder:ToString()end
---@overload fun(typeInfo:System.Reflection.TypeInfo):System.Boolean
---@param c System.Type
---@return System.Boolean
function System.Reflection.Emit.TypeBuilder:IsAssignableFrom(c)end
---@return System.Boolean
function System.Reflection.Emit.TypeBuilder:IsCreated()end
---@return System.Type[]
function System.Reflection.Emit.TypeBuilder:GetGenericArguments()end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetGenericTypeDefinition()end
---@param names System.String[]
---@return System.Reflection.Emit.GenericTypeParameterBuilder[]
function System.Reflection.Emit.TypeBuilder:DefineGenericParameters(names)end
---@param type System.Type
---@param constructor System.Reflection.ConstructorInfo
---@return System.Reflection.ConstructorInfo
function System.Reflection.Emit.TypeBuilder.GetConstructor(type, constructor)end
---@param type System.Type
---@param method System.Reflection.MethodInfo
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.TypeBuilder.GetMethod(type, method)end
---@param type System.Type
---@param field System.Reflection.FieldInfo
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.TypeBuilder.GetField(type, field)end
---@class System.Reflection.Emit.TypeToken : System.ValueType
---@field public Token System.Int32 @  getter
---@field public Empty System.Reflection.Emit.TypeToken
System.Reflection.Emit.TypeToken = {}
---@type System.Reflection.Emit.TypeToken
CS.System.Reflection.Emit.TypeToken = System.Reflection.Emit.TypeToken

---@overload fun(obj:System.Reflection.Emit.TypeToken):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Reflection.Emit.TypeToken:Equals(obj)end
---@param a System.Reflection.Emit.TypeToken
---@param b System.Reflection.Emit.TypeToken
---@return System.Boolean
function System.Reflection.Emit.TypeToken.op_Equality(a, b)end
---@param a System.Reflection.Emit.TypeToken
---@param b System.Reflection.Emit.TypeToken
---@return System.Boolean
function System.Reflection.Emit.TypeToken.op_Inequality(a, b)end
---@return System.Int32
function System.Reflection.Emit.TypeToken:GetHashCode()end
---@class System.Reflection.Emit.UnmanagedMarshal : System.Object
---@field public BaseType System.Runtime.InteropServices.UnmanagedType @  getter
---@field public ElementCount System.Int32 @  getter
---@field public GetUnmanagedType System.Runtime.InteropServices.UnmanagedType @  getter
---@field public IIDGuid System.Guid @  getter
System.Reflection.Emit.UnmanagedMarshal = {}
---@type System.Reflection.Emit.UnmanagedMarshal
CS.System.Reflection.Emit.UnmanagedMarshal = System.Reflection.Emit.UnmanagedMarshal

---@param elemCount System.Int32
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineByValArray(elemCount)end
---@param elemCount System.Int32
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineByValTStr(elemCount)end
---@param elemType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineLPArray(elemType)end
---@param elemType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineSafeArray(elemType)end
---@param unmanagedType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineUnmanagedMarshal(unmanagedType)end
