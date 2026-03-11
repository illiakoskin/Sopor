---@meta

---@class UGamepadCursorSettings : UDeveloperSettings
---@field AnalogCursorAccelerationCurve FRuntimeFloatCurve
---@field MaxAnalogCursorSpeed float
---@field MaxAnalogCursorSpeedWhenHovered float
---@field AnalogCursorDragCoefficient float
---@field AnalogCursorDragCoefficientWhenHovered float
---@field MinAnalogCursorSpeed float
---@field AnalogCursorDeadZone float
---@field AnalogCursorAccelerationMultiplier float
---@field AnalogCursorSize float
---@field bUseEngineAnalogCursor boolean
---@field bAnalogCursorNoAcceleration boolean
local UGamepadCursorSettings = {}



---@class UVirtualCursorFunctionLibrary : UBlueprintFunctionLibrary
local UVirtualCursorFunctionLibrary = {}

---@return boolean
function UVirtualCursorFunctionLibrary:IsCursorOverInteractableWidget() end
---@param PC APlayerController
function UVirtualCursorFunctionLibrary:EnableVirtualCursor(PC) end
---@param PC APlayerController
function UVirtualCursorFunctionLibrary:DisableVirtualCursor(PC) end


