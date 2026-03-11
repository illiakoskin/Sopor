---@meta

---@class ACapturePathVisualizerActor : AActor
---@field Vizualizer UCapturePathVisualizer
---@field TextComp UTextRenderComponent
---@field SplineComp USplineComponent
---@field CachedSplineLength float
---@field PathID int32
---@field Velocity float
---@field CaptureDeltaTime float
---@field StartDelay float
---@field ViewTargets TSet<AViewTargetVisualizerActor>
---@field ViewIdx int32
local ACapturePathVisualizerActor = {}

---@param InTime float
---@param Transform FTransform
---@param bEndPath boolean
function ACapturePathVisualizerActor:GetTransformOnPathTime(InTime, Transform, bEndPath) end
---@param InDistance float
---@param Transform FTransform
---@param bEndPath boolean
function ACapturePathVisualizerActor:GetTransformOnPathDistance(InDistance, Transform, bEndPath) end


---@class AViewTargetVisualizerActor : AActor
---@field Visualizer UViewTargetVisualizer
---@field RootComp USceneComponent
---@field Billboard UBillboardComponent
---@field PathID int32
---@field InDistanceStart float
---@field InDistanceEnd float
---@field InputDistance float
---@field OutDistanceStart float
---@field OutDistanceEnd float
---@field Target ACapturePathVisualizerActor
local AViewTargetVisualizerActor = {}



---@class FCaptureLevelSettings
---@field Location FVector
---@field OrthoWidth int32
---@field CameraQuaternion FQuat
local FCaptureLevelSettings = {}



---@class FKPIActivationSettings
---@field KPIs TArray<FKPIData>
local FKPIActivationSettings = {}



---@class FKPIData
---@field KPIName FString
---@field Enabled boolean
---@field AverageMode boolean
---@field LastMode boolean
---@field MaxMode boolean
---@field MinMode boolean
local FKPIData = {}



---@class FLevelLimits
---@field Min FVector
---@field Max FVector
local FLevelLimits = {}



---@class UCaptureBaseTask : UObject
---@field bAutoStart boolean
---@field bInProgress boolean
---@field bPause boolean
---@field bRequiresRuntime boolean
---@field CaptureData TMap<FString, FString>
---@field CapturesCustomDataMap TMap<FString, FString>
---@field CapturesCacheMap TMap<FString, FString>
---@field WorldPrivate UWorld
local UCaptureBaseTask = {}



---@class UCaptureHeatmapTask : UCaptureBaseTask
local UCaptureHeatmapTask = {}


---@class UCaptureLevelMapTask : UCaptureBaseTask
local UCaptureLevelMapTask = {}


---@class UCapturePathTask : UCaptureBaseTask
---@field Distance float
---@field PathActor ACapturePathVisualizerActor
---@field PlayerController APlayerController
local UCapturePathTask = {}



---@class UCapturePathVisualizer : UActorComponent
---@field FarPlaneDistance float
---@field AspectRatio float
---@field FOVAngle float
local UCapturePathVisualizer = {}



---@class UCaptureWalkthroughTask : UCaptureBaseTask
local UCaptureWalkthroughTask = {}


---@class UPulseFunctionLibrary : UBlueprintFunctionLibrary
local UPulseFunctionLibrary = {}

---@param Target USceneCaptureComponent2D
---@param ImagePath FString
---@return boolean
function UPulseFunctionLibrary:CaptureImageFromTarget(Target, ImagePath) end
---@param InTransform FTransform
---@param ImagePath FString
---@param InOrthoWidth float
---@param WorldContextObject UObject
---@return boolean
function UPulseFunctionLibrary:CaptureImageFromLocation(InTransform, ImagePath, InOrthoWidth, WorldContextObject) end


---@class UPulseSettings : UDeveloperSettings
---@field LevelLimits TMap<FName, FLevelLimits>
---@field CaptureLevelSettings TMap<FName, FCaptureLevelSettings>
---@field KPISettings FKPIActivationSettings
---@field RenderTargetPath FString
---@field bAutoStartWalkthroughCapture boolean
---@field SecretKey FString
---@field ProjectID int32
---@field BackendURL FString
---@field BuildNamingType EBuildNamingType
---@field BuildNameFilePath FString
local UPulseSettings = {}



---@class UPulseSubsystem : UEngineSubsystem
---@field CaptureTask UCaptureBaseTask
---@field InitTaskEvent FPulseSubsystemInitTaskEvent
---@field StartTaskEvent FPulseSubsystemStartTaskEvent
---@field EndTaskEvent FPulseSubsystemEndTaskEvent
---@field PauseTaskEvent FPulseSubsystemPauseTaskEvent
---@field CaptureTaskEvent FPulseSubsystemCaptureTaskEvent
---@field PulseUI UPulseUI
---@field WorldPrivate UWorld
local UPulseSubsystem = {}



---@class UPulseUI : UObject
local UPulseUI = {}


---@class UViewTargetVisualizer : UActorComponent
local UViewTargetVisualizer = {}


