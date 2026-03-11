---@meta

---@class FActiveStateData
---@field State UBaseAdaptiveTriggersState
---@field Mode UGSCAdaptiveTriggersMode
local FActiveStateData = {}



---@class FStateArgs
local FStateArgs = {}


---@class UBaseAdaptiveTriggersState : UObject
---@field Priority int32
---@field Side EGSCAdaptiveTriggersSide
local UBaseAdaptiveTriggersState = {}



---@class UGSCAdaptiveTriggersDataAsset : UDataAsset
---@field TriggerToState TMap<FGameplayTag, UBaseAdaptiveTriggersState>
local UGSCAdaptiveTriggersDataAsset = {}



---@class UGSCAdaptiveTriggersMode : UObject
local UGSCAdaptiveTriggersMode = {}


---@class UGSCAdaptiveTriggersMode_Feedback : UGSCAdaptiveTriggersMode
---@field position uint8
---@field Strength uint8
local UGSCAdaptiveTriggersMode_Feedback = {}



---@class UGSCAdaptiveTriggersMode_MultiplePositionFeedback : UGSCAdaptiveTriggersMode
---@field Strength TArray<uint8>
local UGSCAdaptiveTriggersMode_MultiplePositionFeedback = {}



---@class UGSCAdaptiveTriggersMode_MultiplePositionVibration : UGSCAdaptiveTriggersMode
---@field Frequency uint8
---@field Amplitude TArray<uint8>
local UGSCAdaptiveTriggersMode_MultiplePositionVibration = {}



---@class UGSCAdaptiveTriggersMode_Off : UGSCAdaptiveTriggersMode
local UGSCAdaptiveTriggersMode_Off = {}


---@class UGSCAdaptiveTriggersMode_SlopeFeedback : UGSCAdaptiveTriggersMode
---@field StartPosition uint8
---@field EndPosition uint8
---@field StartStrength uint8
---@field EndStrength uint8
local UGSCAdaptiveTriggersMode_SlopeFeedback = {}



---@class UGSCAdaptiveTriggersMode_Vibration : UGSCAdaptiveTriggersMode
---@field position uint8
---@field Amplitude uint8
---@field Frequency uint8
local UGSCAdaptiveTriggersMode_Vibration = {}



---@class UGSCAdaptiveTriggersMode_Weapon : UGSCAdaptiveTriggersMode
---@field StartPosition uint8
---@field EndPosition uint8
---@field Strength uint8
local UGSCAdaptiveTriggersMode_Weapon = {}



---@class UGSCAdaptiveTriggersSettings : UDeveloperSettings
---@field DataAsset TSoftObjectPtr<UGSCAdaptiveTriggersDataAsset>
local UGSCAdaptiveTriggersSettings = {}



---@class UGSCAdaptiveTriggersSubsystem : ULocalPlayerSubsystem
---@field DataAsset UGSCAdaptiveTriggersDataAsset
---@field RequestedStates TArray<FActiveStateData>
---@field LeftState FActiveStateData
---@field RightState FActiveStateData
local UGSCAdaptiveTriggersSubsystem = {}



---@class USimpleAdaptiveTriggersState : UBaseAdaptiveTriggersState
---@field Effect UGSCAdaptiveTriggersMode
local USimpleAdaptiveTriggersState = {}



