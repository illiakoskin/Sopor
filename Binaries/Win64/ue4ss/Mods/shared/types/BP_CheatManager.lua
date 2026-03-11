---@meta

---@class UBP_CheatManager_C : UCheatManager
local UBP_CheatManager_C = {}

---@param CamID FName
---@param Warmup int32
function UBP_CheatManager_C:Perfcamera(CamID, Warmup) end
function UBP_CheatManager_C:Listperfcapture() end
---@param PerfSplineName FName
---@param DelayBeforeStarting int32
function UBP_CheatManager_C:PerfCapture(PerfSplineName, DelayBeforeStarting) end


