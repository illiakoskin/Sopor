---@meta

---@class FModioCreateModFileMemoryParams
---@field ModMemory TArray<uint8>
local FModioCreateModFileMemoryParams = {}



---@class UModioSubmissionExtensionLibrary : UBlueprintFunctionLibrary
local UModioSubmissionExtensionLibrary = {}

---@param Handle FModioModCreationHandle
---@param Params FModioCreateModParams
---@param PngData TArray<uint8>
---@param Callback FK2_SubmitNewModFromMemoryAsyncCallback
function UModioSubmissionExtensionLibrary:K2_SubmitNewModFromMemoryAsync(Handle, Params, PngData, Callback) end
---@param Target UModioSubsystem
---@param Mod FModioModID
---@param Params FModioCreateModFileMemoryParams
function UModioSubmissionExtensionLibrary:K2_SubmitNewModFileForModFromMemory(Target, Mod, Params) end
---@param Mod FModioModID
---@param Params FModioEditModParams
---@param PngData TArray<uint8>
---@param Callback FK2_SubmitModChangesFromMemoryAsyncCallback
function UModioSubmissionExtensionLibrary:K2_SubmitModChangesFromMemoryAsync(Mod, Params, PngData, Callback) end
---@param Target UModioSubsystem
---@param ModId FModioModID
---@param ModData TArray<uint8>
---@return boolean
function UModioSubmissionExtensionLibrary:K2_LoadModFileToMemory(Target, ModId, ModData) end


