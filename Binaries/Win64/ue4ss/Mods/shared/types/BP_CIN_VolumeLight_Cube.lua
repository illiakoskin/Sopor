---@meta

---@class ABP_CIN_VolumeLight_Cube_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field WindDirection FVector
---@field Speed double
---@field VolumetricFogSize FVector
---@field DiffuseColor_Volumetric FLinearColor
---@field Density double
---@field Height_Min double
---@field Height_Max double
---@field Height_Power double
---@field Contrast double
local ABP_CIN_VolumeLight_Cube_C = {}

function ABP_CIN_VolumeLight_Cube_C:UserConstructionScript() end
---@param EntryPoint int32
function ABP_CIN_VolumeLight_Cube_C:ExecuteUbergraph_BP_CIN_VolumeLight_Cube(EntryPoint) end


