---@meta

---@class ABP_TumbleweedLeaves_Spline_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field [' Ak sound component'] UAkComponent
---@field Spline USplineComponent
---@field NS_TumbleweedFlies UNiagaraComponent
---@field dummy UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field CarMove_cartrack_91E8EF244301465092D8A2ABD34D468F float
---@field CarMove__Direction_91E8EF244301465092D8A2ABD34D468F ETimelineDirection::Type
---@field CarMove UTimelineComponent
---@field TimeToComplete double
local ABP_TumbleweedLeaves_Spline_C = {}

function ABP_TumbleweedLeaves_Spline_C:CarMove__FinishedFunc() end
function ABP_TumbleweedLeaves_Spline_C:CarMove__UpdateFunc() end
function ABP_TumbleweedLeaves_Spline_C:CarVFX() end
function ABP_TumbleweedLeaves_Spline_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_TumbleweedLeaves_Spline_C:ExecuteUbergraph_BP_TumbleweedLeaves_Spline(EntryPoint) end


