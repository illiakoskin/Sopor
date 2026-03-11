---@meta

---@class FContentPack
---@field Name FName
---@field URL FString
---@field DataLayerName FName
---@field DataLayer TWeakObjectPtr<UDataLayerInstance>
---@field ContentBundleDescriptor TWeakObjectPtr<UContentBundleDescriptor>
---@field bIsActive boolean
local FContentPack = {}



---@class FContentPackSettings
---@field ContentPackName FName
---@field DataLayerName FName
local FContentPackSettings = {}



---@class UAddToContentPackAction : UGameFeatureAction
---@field Settings FContentPackSettings
local UAddToContentPackAction = {}



---@class UContentPacksEngineSubsystem : UEngineSubsystem
local UContentPacksEngineSubsystem = {}


