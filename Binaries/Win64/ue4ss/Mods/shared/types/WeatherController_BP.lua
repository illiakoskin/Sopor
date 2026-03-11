---@meta

---@class AWeatherController_BP_C : AWeatherController
---@field UberGraphFrame FPointerToUberGraphFrame
local AWeatherController_BP_C = {}

---@param DeltaSeconds float
function AWeatherController_BP_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function AWeatherController_BP_C:ExecuteUbergraph_WeatherController_BP(EntryPoint) end


