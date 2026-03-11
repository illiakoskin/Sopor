---@meta

---@class UPlatformProviderFunctionLibrary : UBlueprintFunctionLibrary
local UPlatformProviderFunctionLibrary = {}

function UPlatformProviderFunctionLibrary:ShowPlayGoInstallationProgress() end
---@return boolean
function UPlatformProviderFunctionLibrary:IsPlayGoPackage() end
---@return boolean
function UPlatformProviderFunctionLibrary:IsPlayGoInstallationInProgress() end
---@return boolean
function UPlatformProviderFunctionLibrary:IsInitialChunkOnlyBuild() end


