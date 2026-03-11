---@meta

---@class ABP_WorldMapScene_C : AWorldMapScene
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Map UStaticMeshComponent
---@field SceneCaptureComponent2D USceneCaptureComponent2D
---@field DefaultSceneRoot USceneComponent
local ABP_WorldMapScene_C = {}

---@param InScale float
function ABP_WorldMapScene_C:SetScale(InScale) end
---@param bIsEnabled boolean
function ABP_WorldMapScene_C:SetCaptureEveryFrame(bIsEnabled) end
---@param InUV FVector
function ABP_WorldMapScene_C:SetMouseUV(InUV) end
---@param InBrightness float
function ABP_WorldMapScene_C:SetNotSelectedAreaBrightness(InBrightness) end
---@param InOffset FVector2D
function ABP_WorldMapScene_C:SetOffset(InOffset) end
---@param EntryPoint int32
function ABP_WorldMapScene_C:ExecuteUbergraph_BP_WorldMapScene(EntryPoint) end


