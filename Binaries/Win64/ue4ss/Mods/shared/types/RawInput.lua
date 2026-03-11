---@meta

---@class FRawInputDeviceAxisProperties
---@field bEnabled boolean
---@field Key FKey
---@field bInverted boolean
---@field bGamepadStick boolean
---@field Offset float
local FRawInputDeviceAxisProperties = {}



---@class FRawInputDeviceButtonProperties
---@field bEnabled boolean
---@field Key FKey
local FRawInputDeviceButtonProperties = {}



---@class FRawInputDeviceConfiguration
---@field VendorID FString
---@field ProductID FString
---@field AxisProperties TArray<FRawInputDeviceAxisProperties>
---@field ButtonProperties TArray<FRawInputDeviceButtonProperties>
---@field bPreferVendorModule boolean
---@field VendorModuleName FName
local FRawInputDeviceConfiguration = {}



---@class FRegisteredDeviceInfo
---@field Handle int32
---@field VendorID int32
---@field ProductID int32
---@field DeviceName FString
local FRegisteredDeviceInfo = {}



---@class URawInputFunctionLibrary : UBlueprintFunctionLibrary
local URawInputFunctionLibrary = {}

---@return TArray<FRegisteredDeviceInfo>
function URawInputFunctionLibrary:GetRegisteredDevices() end


---@class URawInputSettings : UDeveloperSettings
---@field DeviceConfigurations TArray<FRawInputDeviceConfiguration>
---@field bRegisterDefaultDevice boolean
local URawInputSettings = {}



