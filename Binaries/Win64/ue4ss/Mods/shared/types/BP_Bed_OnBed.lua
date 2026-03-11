---@meta

---@class ABP_Bed_OnBed_C : ABP_Bed_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Arrow UArrowComponent
local ABP_Bed_OnBed_C = {}

function ABP_Bed_OnBed_C:InteractOn() end
function ABP_Bed_OnBed_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Bed_OnBed_C:ExecuteUbergraph_BP_Bed_OnBed(EntryPoint) end


