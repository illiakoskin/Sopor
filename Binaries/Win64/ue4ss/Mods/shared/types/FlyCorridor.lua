---@meta

---@class FFlyCorridorTracePoint
---@field Location FVector
---@field Time float
local FFlyCorridorTracePoint = {}



---@class UAnimMetaData_FlyCorridor : UAnimMetaData
---@field FlyCorridorAnimPoints TArray<FFlyCorridorTracePoint>
---@field AnimHitPoint FFlyCorridorTracePoint
---@field DistanceCurve FFloatCurve
---@field bDoScaleZ boolean
---@field EndLocation FVector
local UAnimMetaData_FlyCorridor = {}



---@class UAnimNotifyState_Fly : UAnimNotifyState_MotionWarping
---@field TrackBoneName FName
---@field RootBoneName FName
local UAnimNotifyState_Fly = {}



---@class UAnimNotify_FlyHitPoint : UAnimNotify
local UAnimNotify_FlyHitPoint = {}


---@class UFlyCorridorDebugComponent : UDebugDrawComponent
---@field CorridorFindingTime float
local UFlyCorridorDebugComponent = {}

function UFlyCorridorDebugComponent:ShowPassedPath() end
---@param AnimMontage UAnimMontage
---@param StartLocation FVector
---@param EndLocation FVector
---@param ActorsToIgnore TArray<AActor>
---@param DrawTag FString
---@param DrawTime float
---@param ZScale double
function UFlyCorridorDebugComponent:ShowCorridor(AnimMontage, StartLocation, EndLocation, ActorsToIgnore, DrawTag, DrawTime, ZScale) end
function UFlyCorridorDebugComponent:HidePassedPath() end
function UFlyCorridorDebugComponent:HideCorridor() end


