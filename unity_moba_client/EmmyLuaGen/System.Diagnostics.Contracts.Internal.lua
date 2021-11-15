---@class System.Diagnostics.Contracts.Internal.ContractHelper : System.Object
System.Diagnostics.Contracts.Internal.ContractHelper = {}
---@type System.Diagnostics.Contracts.Internal.ContractHelper
CS.System.Diagnostics.Contracts.Internal.ContractHelper = System.Diagnostics.Contracts.Internal.ContractHelper

---@param failureKind System.Diagnostics.Contracts.ContractFailureKind
---@param userMessage System.String
---@param conditionText System.String
---@param innerException System.Exception
---@return System.String
function System.Diagnostics.Contracts.Internal.ContractHelper.RaiseContractFailedEvent(failureKind, userMessage, conditionText, innerException)end
---@param kind System.Diagnostics.Contracts.ContractFailureKind
---@param displayMessage System.String
---@param userMessage System.String
---@param conditionText System.String
---@param innerException System.Exception
---@return System.Void
function System.Diagnostics.Contracts.Internal.ContractHelper.TriggerFailure(kind, displayMessage, userMessage, conditionText, innerException)end
