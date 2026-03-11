---@meta

---@class ABP_mod_stairs_02_C : AActor
---@field RailingsMeshMain_L UHierarchicalInstancedStaticMeshComponent
---@field RailingsMeshMain_R UHierarchicalInstancedStaticMeshComponent
---@field FirstMesh UStaticMeshComponent
---@field LastMesh UStaticMeshComponent
---@field MainMesh UHierarchicalInstancedStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field ['Height - Meters'] int32
---@field StairsWidth int32
---@field Add_Half_Width boolean
---@field StairsType int32
---@field RailingsLeft_On boolean
---@field RailingsRight_On boolean
---@field RailingsType metal_mod_stairs_02_types::Type
---@field RailingMesh_Bottom_Type_R int32
---@field RailingMesh_Bottom_Type_L int32
---@field RailingsMesh_Top_Connect_R boolean
---@field RailingsType_TopMesh_R int32
---@field RailingsMesh_Top_Connect_L boolean
---@field RailingsType_TopMesh_L int32
---@field RandomDestructScale double
---@field RailingsMesh_Main UStaticMesh
---@field RailingsMesh_First UStaticMesh
---@field RailingsMesh_Last UStaticMesh
---@field Stairs_MainMesh_Half UStaticMesh
---@field Stairs_MainMesh UStaticMesh
---@field Stairs_FirstMesh UStaticMesh
---@field Stairs_LastMesh UStaticMesh
---@field RelativeAddToNextMesh_Height FVector
---@field RelativeAddToNextMesh_First FVector
---@field RelativeAddToNextMesh_RailingsL FVector
---@field RelativeAddToNextMesh_RailingsR FVector
---@field RelativeAddToNextMesh_RailingsL_Bottom FVector
---@field RelativeAddToNextMesh_RailingsL_Top FVector
---@field RelativeAddToNextMesh_RailingsR_Bottom FVector
---@field RelativeAddToNextMesh_RailingsR_Top FVector
---@field RailingsMesh_Main_R UStaticMesh
---@field RailingsMesh_First_R UStaticMesh
---@field RailingsMesh_Last_R UStaticMesh
---@field RailingsMesh_Main_R_half UStaticMesh
---@field RailingsMesh_Main_half UStaticMesh
---@field Color float
---@field SpawnedActors TArray<AStaticMeshActor>
local ABP_mod_stairs_02_C = {}

---@param StaticMesh UStaticMesh
---@param Transforms FTransform
---@param Left boolean
function ABP_mod_stairs_02_C:SpawnInstancedRailingActor(StaticMesh, Transforms, Left) end
---@param StaticMesh UStaticMesh
---@param Transforms FTransform
function ABP_mod_stairs_02_C:SpawnInstancedMainActor(StaticMesh, Transforms) end
function ABP_mod_stairs_02_C:SpawnStaticMeshActorsFromBP() end
function ABP_mod_stairs_02_C:UserConstructionScript() end


