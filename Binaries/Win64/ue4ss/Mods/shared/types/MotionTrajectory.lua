---@meta

---@class FMotionTrajectorySettings
---@field Domain int32
---@field Seconds float
---@field Distance float
local FMotionTrajectorySettings = {}



---@class FTrajectoryDirectionClamp
---@field Direction FVector
---@field AngleTresholdDegrees float
local FTrajectoryDirectionClamp = {}



---@class UCharacterMovementTrajectoryComponent : UMotionTrajectoryComponent
---@field LastDesiredControlRotation FRotator
---@field DesiredControlRotationVelocity FRotator
local UCharacterMovementTrajectoryComponent = {}

---@param DeltaSeconds float
---@param OldLocation FVector
---@param OldVelocity FVector
function UCharacterMovementTrajectoryComponent:OnMovementUpdated(DeltaSeconds, OldLocation, OldVelocity) end


---@class UMotionTrajectoryBlueprintLibrary : UBlueprintFunctionLibrary
local UMotionTrajectoryBlueprintLibrary = {}

---@param Trajectory FTrajectorySampleRange
---@param Rotation FQuat
---@return FTrajectorySampleRange
function UMotionTrajectoryBlueprintLibrary:RotateTrajectory(Trajectory, Rotation) end
---@param ActorTrajectory FTrajectorySampleRange
---@param Component USceneComponent
---@return FTrajectorySampleRange
function UMotionTrajectoryBlueprintLibrary:MakeTrajectoryRelativeToComponent(ActorTrajectory, Component) end
---@param Trajectory FTrajectorySampleRange
---@param MoveMinSpeed float
---@param IdleMaxSpeed float
---@return boolean
function UMotionTrajectoryBlueprintLibrary:IsStoppingTrajectory(Trajectory, MoveMinSpeed, IdleMaxSpeed) end
---@param Trajectory FTrajectorySampleRange
---@param MoveMinSpeed float
---@param IdleMaxSpeed float
---@return boolean
function UMotionTrajectoryBlueprintLibrary:IsStartingTrajectory(Trajectory, MoveMinSpeed, IdleMaxSpeed) end
---@param Trajectory FTrajectorySampleRange
---@param MinSharpTurnAngleDegrees float
---@param RotationConstraintDomain ETrajectorySampleDomain
---@param RotationConstraintValue float
---@param MaxAlignmentAngleDegrees float
---@param MinLinearSpeed float
---@param TurnAxis FVector
---@param ForwardAxis FVector
---@return boolean
function UMotionTrajectoryBlueprintLibrary:IsSharpVelocityDirChange(Trajectory, MinSharpTurnAngleDegrees, RotationConstraintDomain, RotationConstraintValue, MaxAlignmentAngleDegrees, MinLinearSpeed, TurnAxis, ForwardAxis) end
---@param Trajectory FTrajectorySampleRange
---@param Speed float
---@param Tolerance float
---@return boolean
function UMotionTrajectoryBlueprintLibrary:IsConstantSpeedTrajectory(Trajectory, Speed, Tolerance) end
---@param Trajectory FTrajectorySampleRange
---@param PreserveSpeed boolean
---@return FTrajectorySampleRange
function UMotionTrajectoryBlueprintLibrary:FlattenTrajectory2D(Trajectory, PreserveSpeed) end
---@param Actor AActor
---@param WorldTransform FTransform
---@param Trajectory FTrajectorySampleRange
---@param PredictionColor FLinearColor
---@param HistoryColor FLinearColor
---@param TransformScale float
---@param TransformThickness float
---@param ArrowScale float
---@param ArrowSize float
---@param ArrowThickness float
function UMotionTrajectoryBlueprintLibrary:DebugDrawTrajectory(Actor, WorldTransform, Trajectory, PredictionColor, HistoryColor, TransformScale, TransformThickness, ArrowScale, ArrowSize, ArrowThickness) end
---@param Trajectory FTrajectorySampleRange
---@param Directions TArray<FTrajectoryDirectionClamp>
---@param bPreserveRotation boolean
---@return FTrajectorySampleRange
function UMotionTrajectoryBlueprintLibrary:ClampTrajectoryDirection(Trajectory, Directions, bPreserveRotation) end


---@class UMotionTrajectoryComponent : UActorComponent
---@field PredictionSettings FMotionTrajectorySettings
---@field HistorySettings FMotionTrajectorySettings
---@field SampleRate int32
---@field MaxSamples int32
---@field bPredictionIncludesHistory boolean
---@field bUniformSampledHistory boolean
---@field bSmoothInterpolation boolean
local UMotionTrajectoryComponent = {}

---@param rate int32
function UMotionTrajectoryComponent:SetSampleRate(rate) end
---@param Settings FMotionTrajectorySettings
---@param bIncludeHistory boolean
---@return FTrajectorySampleRange
function UMotionTrajectoryComponent:GetTrajectoryWithSettings(Settings, bIncludeHistory) end
---@return FTrajectorySampleRange
function UMotionTrajectoryComponent:GetTrajectory() end
---@return FTrajectorySampleRange
function UMotionTrajectoryComponent:GetHistory() end


