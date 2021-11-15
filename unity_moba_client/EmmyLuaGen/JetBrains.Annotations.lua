---@class JetBrains.Annotations.CanBeNullAttribute : System.Attribute
JetBrains.Annotations.CanBeNullAttribute = {}
---@type JetBrains.Annotations.CanBeNullAttribute
CS.JetBrains.Annotations.CanBeNullAttribute = JetBrains.Annotations.CanBeNullAttribute

---@class JetBrains.Annotations.NotNullAttribute : System.Attribute
JetBrains.Annotations.NotNullAttribute = {}
---@type JetBrains.Annotations.NotNullAttribute
CS.JetBrains.Annotations.NotNullAttribute = JetBrains.Annotations.NotNullAttribute

---@class JetBrains.Annotations.StringFormatMethodAttribute : System.Attribute
---@field public FormatParameterName System.String @ setter getter
JetBrains.Annotations.StringFormatMethodAttribute = {}
---@type JetBrains.Annotations.StringFormatMethodAttribute
CS.JetBrains.Annotations.StringFormatMethodAttribute = JetBrains.Annotations.StringFormatMethodAttribute

---@class JetBrains.Annotations.InvokerParameterNameAttribute : System.Attribute
JetBrains.Annotations.InvokerParameterNameAttribute = {}
---@type JetBrains.Annotations.InvokerParameterNameAttribute
CS.JetBrains.Annotations.InvokerParameterNameAttribute = JetBrains.Annotations.InvokerParameterNameAttribute

---@class JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute : System.Attribute
---@field public ParameterName System.String @ setter getter
JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute = {}
---@type JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute
CS.JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute = JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute

---@class JetBrains.Annotations.ContractAnnotationAttribute : System.Attribute
---@field public Contract System.String @ setter getter
---@field public ForceFullStates System.Boolean @ setter getter
JetBrains.Annotations.ContractAnnotationAttribute = {}
---@type JetBrains.Annotations.ContractAnnotationAttribute
CS.JetBrains.Annotations.ContractAnnotationAttribute = JetBrains.Annotations.ContractAnnotationAttribute

---@class JetBrains.Annotations.LocalizationRequiredAttribute : System.Attribute
---@field public Required System.Boolean @ setter getter
JetBrains.Annotations.LocalizationRequiredAttribute = {}
---@type JetBrains.Annotations.LocalizationRequiredAttribute
CS.JetBrains.Annotations.LocalizationRequiredAttribute = JetBrains.Annotations.LocalizationRequiredAttribute

---@class JetBrains.Annotations.CannotApplyEqualityOperatorAttribute : System.Attribute
JetBrains.Annotations.CannotApplyEqualityOperatorAttribute = {}
---@type JetBrains.Annotations.CannotApplyEqualityOperatorAttribute
CS.JetBrains.Annotations.CannotApplyEqualityOperatorAttribute = JetBrains.Annotations.CannotApplyEqualityOperatorAttribute

---@class JetBrains.Annotations.BaseTypeRequiredAttribute : System.Attribute
---@field public BaseType System.Type @ setter getter
JetBrains.Annotations.BaseTypeRequiredAttribute = {}
---@type JetBrains.Annotations.BaseTypeRequiredAttribute
CS.JetBrains.Annotations.BaseTypeRequiredAttribute = JetBrains.Annotations.BaseTypeRequiredAttribute

---@class JetBrains.Annotations.UsedImplicitlyAttribute : System.Attribute
---@field public UseKindFlags JetBrains.Annotations.ImplicitUseKindFlags @ setter getter
---@field public TargetFlags JetBrains.Annotations.ImplicitUseTargetFlags @ setter getter
JetBrains.Annotations.UsedImplicitlyAttribute = {}
---@type JetBrains.Annotations.UsedImplicitlyAttribute
CS.JetBrains.Annotations.UsedImplicitlyAttribute = JetBrains.Annotations.UsedImplicitlyAttribute

---@class JetBrains.Annotations.MeansImplicitUseAttribute : System.Attribute
---@field public UseKindFlags JetBrains.Annotations.ImplicitUseKindFlags @ setter getter
---@field public TargetFlags JetBrains.Annotations.ImplicitUseTargetFlags @ setter getter
JetBrains.Annotations.MeansImplicitUseAttribute = {}
---@type JetBrains.Annotations.MeansImplicitUseAttribute
CS.JetBrains.Annotations.MeansImplicitUseAttribute = JetBrains.Annotations.MeansImplicitUseAttribute

---@class JetBrains.Annotations.ImplicitUseKindFlags : System.Enum
JetBrains.Annotations.ImplicitUseKindFlags = {}
---@type JetBrains.Annotations.ImplicitUseKindFlags
CS.JetBrains.Annotations.ImplicitUseKindFlags = JetBrains.Annotations.ImplicitUseKindFlags

---@return System.Int32 value:1
JetBrains.Annotations.ImplicitUseKindFlags.Access = 1
---@return System.Int32 value:2
JetBrains.Annotations.ImplicitUseKindFlags.Assign = 2
---@return System.Int32 value:4
JetBrains.Annotations.ImplicitUseKindFlags.InstantiatedWithFixedConstructorSignature = 4

---@class JetBrains.Annotations.ImplicitUseTargetFlags : System.Enum
JetBrains.Annotations.ImplicitUseTargetFlags = {}
---@type JetBrains.Annotations.ImplicitUseTargetFlags
CS.JetBrains.Annotations.ImplicitUseTargetFlags = JetBrains.Annotations.ImplicitUseTargetFlags

---@return System.Int32 value:1
JetBrains.Annotations.ImplicitUseTargetFlags.Itself = 1
---@return System.Int32 value:2
JetBrains.Annotations.ImplicitUseTargetFlags.Members = 2
---@return System.Int32 value:3
JetBrains.Annotations.ImplicitUseTargetFlags.WithMembers = 3

---@class JetBrains.Annotations.PublicAPIAttribute : System.Attribute
---@field public Comment System.String @ setter getter
JetBrains.Annotations.PublicAPIAttribute = {}
---@type JetBrains.Annotations.PublicAPIAttribute
CS.JetBrains.Annotations.PublicAPIAttribute = JetBrains.Annotations.PublicAPIAttribute

---@class JetBrains.Annotations.InstantHandleAttribute : System.Attribute
JetBrains.Annotations.InstantHandleAttribute = {}
---@type JetBrains.Annotations.InstantHandleAttribute
CS.JetBrains.Annotations.InstantHandleAttribute = JetBrains.Annotations.InstantHandleAttribute

---@class JetBrains.Annotations.PureAttribute : System.Attribute
JetBrains.Annotations.PureAttribute = {}
---@type JetBrains.Annotations.PureAttribute
CS.JetBrains.Annotations.PureAttribute = JetBrains.Annotations.PureAttribute

---@class JetBrains.Annotations.PathReferenceAttribute : System.Attribute
---@field public BasePath System.String @ setter getter
JetBrains.Annotations.PathReferenceAttribute = {}
---@type JetBrains.Annotations.PathReferenceAttribute
CS.JetBrains.Annotations.PathReferenceAttribute = JetBrains.Annotations.PathReferenceAttribute

---@class JetBrains.Annotations.NoEnumerationAttribute : System.Attribute
JetBrains.Annotations.NoEnumerationAttribute = {}
---@type JetBrains.Annotations.NoEnumerationAttribute
CS.JetBrains.Annotations.NoEnumerationAttribute = JetBrains.Annotations.NoEnumerationAttribute

---@class JetBrains.Annotations.AssertionMethodAttribute : System.Attribute
JetBrains.Annotations.AssertionMethodAttribute = {}
---@type JetBrains.Annotations.AssertionMethodAttribute
CS.JetBrains.Annotations.AssertionMethodAttribute = JetBrains.Annotations.AssertionMethodAttribute

---@class JetBrains.Annotations.LinqTunnelAttribute : System.Attribute
JetBrains.Annotations.LinqTunnelAttribute = {}
---@type JetBrains.Annotations.LinqTunnelAttribute
CS.JetBrains.Annotations.LinqTunnelAttribute = JetBrains.Annotations.LinqTunnelAttribute

