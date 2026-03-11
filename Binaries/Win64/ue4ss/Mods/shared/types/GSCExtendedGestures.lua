---@meta

---@class UDirectionalGestureInputTrigger : UInputTrigger
---@field GestureDirection FVector2D
---@field GestureDirectionEnum EDirectionalGestureDirection
---@field TouchKey uint8
---@field GestureTimeout float
---@field GestureAcceptanceAngle float
---@field GestureAcceptanceLimit float
---@field GestureAcceptanceThreshold float
---@field GestureSidewaysInvalidationLimit float
local UDirectionalGestureInputTrigger = {}



---@class UGSCExtendedGesturesUtils : UBlueprintFunctionLibrary
local UGSCExtendedGesturesUtils = {}

---@return FVector2D
function UGSCExtendedGesturesUtils:GetGesturesInterfaceExtends() end


---@class UInputTriggerTouchInBounds : UInputTrigger
---@field TouchKey uint8
---@field TouchInboundsType ETouchInboundsType
---@field InputBounds FBox2D
local UInputTriggerTouchInBounds = {}



