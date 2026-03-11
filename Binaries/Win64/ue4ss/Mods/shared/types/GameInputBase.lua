---@meta

---@class FGameInputControllerAxisData
---@field KeyName FName
---@field DeadZone float
---@field Scalar float
---@field bIsPackedPositveAndNegative boolean
local FGameInputControllerAxisData = {}



---@class FGameInputDeviceConfiguration
---@field DeviceIdentifier FGameInputDeviceIdentifier
---@field bOverrideHardwareDeviceIdString boolean
---@field OverriddenHardwareDeviceId FString
---@field bProcessControllerButtons boolean
---@field bProcessControllerSwitchState boolean
---@field bProcessControllerAxis boolean
---@field ControllerButtonMappingData TMap<uint32, FName>
---@field ControllerAxisMappingData TMap<uint32, FGameInputControllerAxisData>
---@field bProcessRawReportData boolean
---@field RawReportReadingId uint32
---@field RawReportMappingData TMap<int32, FGameInputRawDeviceReportData>
local FGameInputDeviceConfiguration = {}



---@class FGameInputDeviceIdentifier
---@field VendorID uint16
---@field ProductID uint16
local FGameInputDeviceIdentifier = {}



---@class FGameInputRawDeviceReportData
---@field KeyName FName
---@field TranslationBehavior ERawDeviceReportTranslationBehavior
---@field AnalogDeadzone uint8
---@field Scalar float
---@field ButtonBitMaskMappings TMap<int32, FName>
---@field LowerBitAxisIndex uint8
---@field HigherBitAxisIndex uint8
local FGameInputRawDeviceReportData = {}



---@class UGameInputDeveloperSettings : UObject
---@field DeviceConfigurations TArray<FGameInputDeviceConfiguration>
---@field PlatformSpecificSettings FPerPlatformSettings
---@field bDoNotProcessDuplicateCapabilitiesForSingleUser boolean
local UGameInputDeveloperSettings = {}



---@class UGameInputPlatformSettings : UPlatformSettings
---@field bProcessController boolean
---@field bProcessRawInput boolean
---@field bSpecialDevicesRequireExplicitDeviceConfiguration boolean
---@field bProcessGamepad boolean
---@field bProcessKeyboard boolean
---@field bProcessMouse boolean
---@field bProcessRacingWheel boolean
---@field RacingWheelDeadzone float
local UGameInputPlatformSettings = {}



