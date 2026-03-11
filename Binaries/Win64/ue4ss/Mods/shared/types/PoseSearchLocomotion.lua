---@meta

---@class FPoseSearchLocomotionAlternativeTags
---@field Tags TArray<FGameplayTag>
local FPoseSearchLocomotionAlternativeTags = {}



---@class FPoseSearchLocomotionMoveData
---@field Tag FGameplayTag
---@field SubTags TArray<FGameplayTag>
---@field bUseStrafe boolean
---@field MoveBehaviorTransitionUseTime float
---@field MoveBehaviorOnlyTransitionUseTime float
---@field LinearSpeedUnitsPerSecond float
---@field PredictionTimeHorizonSeconds float
---@field PredictionDistanceHorizonUnits float
local FPoseSearchLocomotionMoveData = {}



---@class FPoseSearchLocomotionMovementSettings
---@field AlternativeTags TMap<FGameplayTag, FPoseSearchLocomotionAlternativeTags>
---@field ComplimentaryTags TMap<FGameplayTag, FGameplayTagContainer>
---@field CorridorWidth float
---@field CorridorWidthByAgentType TMap<FName, float>
---@field bSimplifyFlipPortals boolean
---@field bSimplifyConvexPortals boolean
---@field bSimplifyConcavePortals boolean
---@field CorridorPathOffset float
---@field CorridorStartOffset float
---@field NarrowFromEndDistance float
---@field IdleSteeringRotationRateDegreesPerSecond float
---@field WalkSteeringRotationRateDegreesPerSecond float
---@field RunSteeringRotationRateDegreesPerSecond float
---@field SprintSteeringRotationRateDegreesPerSecond float
---@field EvadeSteeringRotationRateDegreesPerSecond float
---@field SnappingToPathEndStartDistance float
---@field SnappingToPathEndRatio float
---@field SnappingToPathEndMinVelocity float
---@field RunTags FGameplayTagContainer
---@field SprintTags FGameplayTagContainer
---@field JoggingTags FGameplayTagContainer
---@field MoveBehaviourTransitionTags FGameplayTagContainer
local FPoseSearchLocomotionMovementSettings = {}



---@class FPoseSearchLocomotionTrajectorySettings
---@field SampleRate float
---@field HistoryExpirationSeconds float
---@field HistoryExpirationSecondsByAgent TMap<FName, float>
---@field TransitionTimeSeconds float
local FPoseSearchLocomotionTrajectorySettings = {}



---@class UPoseSearchLocomotionDescriptor : UObject
---@field Container TArray<FPoseSearchLocomotionMoveData>
local UPoseSearchLocomotionDescriptor = {}



---@class UPoseSearchLocomotionSettings : UObject
---@field MotionMatchingSettings FMotionMatchingSettings
---@field TrajectorySettings FPoseSearchLocomotionTrajectorySettings
---@field MovementSettings FPoseSearchLocomotionMovementSettings
local UPoseSearchLocomotionSettings = {}



