---@meta

---@class ABP_gen_bridge_fence_01_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Spline USplineComponent
---@field DefaultSceneRoot USceneComponent
---@field PicketMesh UStaticMesh
---@field NewVar_0 USplineMeshComponent
---@field FenceMesh_EndOffset double
---@field Collision boolean
---@field FenceMesh UStaticMesh
---@field AutoTangentLength boolean
---@field Fence_Height_Offset double
---@field FenceMesh_End UStaticMesh
---@field ['DifferentEndMesh?'] boolean
---@field ['DrawPickets?'] boolean
---@field ['DrawFirstPicket?'] boolean
---@field Picket_Yaw_Min double
---@field Picket_Yaw_Max double
---@field Picket_Scale_Min FVector
---@field TraceDepth double
---@field ['AlignToSurface?'] boolean
---@field FenceMesh_Start UStaticMesh
---@field ['DifferentStartMesh?'] boolean
---@field NewVar_1 UStaticMeshComponent
---@field MySplineMesh USplineMeshComponent
---@field Picket_Scale_Max FVector
---@field ['DrawFenceMesh?'] boolean
---@field ['DrawLastPicket?'] boolean
---@field UpdateRandomScaleAndYaw boolean
local ABP_gen_bridge_fence_01_C = {}

function ABP_gen_bridge_fence_01_C:AlignToSurface() end
---@param FenceMesh UStaticMesh
---@param PicketMesh UStaticMesh
---@param FenceMeshEnd UStaticMesh
---@param FenceMeshStart UStaticMesh
function ABP_gen_bridge_fence_01_C:BuildFence(FenceMesh, PicketMesh, FenceMeshEnd, FenceMeshStart) end
function ABP_gen_bridge_fence_01_C:UserConstructionScript() end
---@param EntryPoint int32
function ABP_gen_bridge_fence_01_C:ExecuteUbergraph_BP_gen_bridge_fence_01(EntryPoint) end


