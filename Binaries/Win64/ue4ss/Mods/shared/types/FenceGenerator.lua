---@meta

---@class AFenceGenerator_C : AActor
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
---@field ShowPointNumbers boolean
---@field TextOffset FVector
---@field FenceOverride TMap<int32, FMeshOverrideStruct>
local AFenceGenerator_C = {}

---@param PointIndex int32
---@param FenceMesh UStaticMesh
---@param FenceMeshEnd UStaticMesh
---@param FenceMeshStart UStaticMesh
---@param PicketMesh UStaticMesh
function AFenceGenerator_C:GetMeshesData(PointIndex, FenceMesh, FenceMeshEnd, FenceMeshStart, PicketMesh) end
function AFenceGenerator_C:AlignToSurface() end
---@param FenceMesh UStaticMesh
---@param PicketMesh UStaticMesh
---@param FenceMeshEnd UStaticMesh
---@param FenceMeshStart UStaticMesh
function AFenceGenerator_C:BuildFence(FenceMesh, PicketMesh, FenceMeshEnd, FenceMeshStart) end
function AFenceGenerator_C:UserConstructionScript() end
---@param EntryPoint int32
function AFenceGenerator_C:ExecuteUbergraph_FenceGenerator(EntryPoint) end


