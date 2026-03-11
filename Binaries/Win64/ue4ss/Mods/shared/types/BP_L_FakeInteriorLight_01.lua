---@meta

---@class ABP_L_FakeInteriorLight_01_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SM_mod_fake_interior_02 UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Color FColor
---@field Distance double
---@field Power double
---@field ['Use Temperature'] boolean
---@field Temperature double
---@field TemperatureState double
local ABP_L_FakeInteriorLight_01_C = {}

function ABP_L_FakeInteriorLight_01_C:UserConstructionScript() end
function ABP_L_FakeInteriorLight_01_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_L_FakeInteriorLight_01_C:ExecuteUbergraph_BP_L_FakeInteriorLight_01(EntryPoint) end


