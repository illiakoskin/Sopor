---@meta

---@class ABP_L_AmbientLight_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SM_Emissive UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field StaticMeshes TArray<UStaticMesh>
---@field Type E_AmLightMeshType::Type
---@field Color FColor
---@field Multiply double
---@field Power double
---@field ['Use Temperature'] boolean
---@field Temperature double
---@field TemperatureState double
local ABP_L_AmbientLight_C = {}

function ABP_L_AmbientLight_C:UserConstructionScript() end
function ABP_L_AmbientLight_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_L_AmbientLight_C:ExecuteUbergraph_BP_L_AmbientLight(EntryPoint) end


