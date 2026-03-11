---@meta

---@class UAC_PerfCameraComponent_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CameraID TArray<FString>
---@field CameraActorToCapture TArray<ABP_PerfCapture_Camera_C>
---@field CameraIndex int32
---@field CurrentCamera ABP_PerfCapture_Camera_C
---@field ['Player Gravity Scale'] float
---@field Warmup float
---@field CurrentTargetTransform FTransform
---@field OwnerReference AActor
---@field CaptureTime float
local UAC_PerfCameraComponent_C = {}

UAC_PerfCameraComponent_C['Prepare Player for Camera Capture'] = function(self, ) end
---@param Tag FName
---@param Valid boolean
---@param Output ABP_PerfCapture_Camera_C
function UAC_PerfCameraComponent_C:GetCameraActorByTag(Tag, Valid, Output) end
function UAC_PerfCameraComponent_C:ReceiveBeginPlay() end
function UAC_PerfCameraComponent_C:StartCameraCapture() end
function UAC_PerfCameraComponent_C:CaptureAllTaggedCameras() end
function UAC_PerfCameraComponent_C:CaptureCurrentCamera() end
function UAC_PerfCameraComponent_C:NextCamera() end
function UAC_PerfCameraComponent_C:StopCameraCaptures() end
---@param EntryPoint int32
function UAC_PerfCameraComponent_C:ExecuteUbergraph_AC_PerfCameraComponent(EntryPoint) end


