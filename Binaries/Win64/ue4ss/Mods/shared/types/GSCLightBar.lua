---@meta

---@class FLightBarState
---@field ColorEffect UGSCLightBarColorEffectBase
local FLightBarState = {}



---@class FLightBarStateArgs
local FLightBarStateArgs = {}


---@class UGSCLightBarColorEffectBase : UObject
---@field InTransitionTime float
---@field OutTransitionTime float
local UGSCLightBarColorEffectBase = {}



---@class UGSCLightBarColorEffectDynamic : UGSCLightBarColorEffectBase
---@field bIsLooped boolean
---@field DynamicColor UCurveLinearColor
local UGSCLightBarColorEffectDynamic = {}



---@class UGSCLightBarColorEffectStatic : UGSCLightBarColorEffectBase
---@field StaticColor FLinearColor
---@field bIsLooped boolean
---@field Duration float
local UGSCLightBarColorEffectStatic = {}



---@class UGSCLightBarColorPlayer : UObject
---@field CurrentEffect UGSCLightBarColorEffectBase
local UGSCLightBarColorPlayer = {}



---@class UGSCLightBarDataAsset : UDataAsset
---@field LightBarStates TMap<FGameplayTag, ULightBarStateBase>
local UGSCLightBarDataAsset = {}



---@class UGSCLightBarSettings : UDeveloperSettings
---@field DataAsset TSoftObjectPtr<UGSCLightBarDataAsset>
local UGSCLightBarSettings = {}



---@class UGSCLightBarSubsystem : ULocalPlayerSubsystem
---@field DataAsset UGSCLightBarDataAsset
---@field ActiveStates TArray<FLightBarState>
---@field ColorPlayer UGSCLightBarColorPlayer
local UGSCLightBarSubsystem = {}



---@class ULightBarStateBase : UObject
---@field Priority int32
local ULightBarStateBase = {}



---@class USimpleLightBarStateBase : ULightBarStateBase
---@field LightBarColorEffect UGSCLightBarColorEffectBase
local USimpleLightBarStateBase = {}



