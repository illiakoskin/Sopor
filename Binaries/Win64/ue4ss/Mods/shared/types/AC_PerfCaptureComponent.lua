---@meta

---@class UAC_PerfCaptureComponent_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PerfCaptureID FName
---@field PerfCaptureSpline ABP_PerfCapture_Spline_C
---@field SplineLength float
---@field SplineLocationWorld FVector
---@field SplineRotationWorld FRotator
---@field Speed double
---@field ['AccumulatedDelta Seconds'] float
---@field DistanceAlongSpline double
---@field DelayBeforeStarting float
---@field ['Player Gravity Scale'] float
---@field AssetRegistry TScriptInterface<IAssetRegistry>
---@field SplineDataAssetsPath FName
---@field ['Asset DataArray'] TArray<FAssetData>
---@field ['Filtered Array'] TArray<FAssetData>
---@field ['Asset Data'] FAssetData
---@field ['Perf Capture Spline Data'] UPDA_PerfCaptureSpline_C
local UAC_PerfCaptureComponent_C = {}

---@param ID FName
---@param inArray TArray<FAssetData>
---@param Found boolean
---@param AssetData FAssetData
UAC_PerfCaptureComponent_C['Find Asset by ID'] = function(self, ID, inArray, Found, AssetData) end
---@param Array TArray<FAssetData>
---@param FilteredArray TArray<FAssetData>
UAC_PerfCaptureComponent_C['Filter Assets'] = function(self, Array, FilteredArray) end
function UAC_PerfCaptureComponent_C:DisableOwnerInput() end
function UAC_PerfCaptureComponent_C:StartSplineRun() end
---@param DeltaSeconds float
function UAC_PerfCaptureComponent_C:ReceiveTick(DeltaSeconds) end
function UAC_PerfCaptureComponent_C:StopSplineRun() end
function UAC_PerfCaptureComponent_C:ReceiveBeginPlay() end
function UAC_PerfCaptureComponent_C:SplineActorReady() end
---@param EntryPoint int32
function UAC_PerfCaptureComponent_C:ExecuteUbergraph_AC_PerfCaptureComponent(EntryPoint) end


