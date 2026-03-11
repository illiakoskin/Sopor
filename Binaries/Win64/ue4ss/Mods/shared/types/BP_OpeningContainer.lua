---@meta

---@class ABP_OpeningContainer_C : AInteractableObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SingleClickClose USingleClickComponent
---@field Ak UAkComponent
---@field Niagara UNiagaraComponent
---@field HitReceiver UHitReceiverComponent
---@field Hittable UHittableComponent
---@field Glass UStaticMeshComponent
---@field Door UStaticMeshComponent
---@field Scene USceneComponent
---@field SingleClickOpen USingleClickComponent
---@field OpenRotatCoef_Rotation_6863A0524BD515A65680CE95AB943B8B float
---@field OpenRotatCoef__Direction_6863A0524BD515A65680CE95AB943B8B ETimelineDirection::Type
---@field OpenRotatCoef UTimelineComponent
---@field RotatorAxis Enum_InteractObject_Axis::Type
---@field OpenAngle double
---@field StartAngle double
---@field rate float
---@field OpenAKEvent UAkAudioEvent
---@field CloseAKEvent UAkAudioEvent
---@field DestructAkEvent UAkAudioEvent
local ABP_OpeningContainer_C = {}

function ABP_OpeningContainer_C:OpenRotatCoef__FinishedFunc() end
function ABP_OpeningContainer_C:OpenRotatCoef__UpdateFunc() end
---@param Common FCommonHitArgs
---@param HitArgs FBulletProjectileHitArgs
function ABP_OpeningContainer_C:BndEvt__BP_OpeningContainer_HitReceiver_K2Node_ComponentBoundEvent_1_BulletProjectileHitSignature__DelegateSignature(Common, HitArgs) end
---@param Common FCommonHitArgs
---@param HitArgs FMeleeHitArgs
function ABP_OpeningContainer_C:BndEvt__BP_OpeningContainer_HitReceiver_K2Node_ComponentBoundEvent_0_MeleeHitSignature__DelegateSignature(Common, HitArgs) end
---@param Common FCommonHitArgs
---@param HitArgs FExplosionHitArgs
function ABP_OpeningContainer_C:BndEvt__BP_OpeningContainer_HitReceiver_K2Node_ComponentBoundEvent_3_ExplosionHitSignature__DelegateSignature(Common, HitArgs) end
function ABP_OpeningContainer_C:BndEvt__BP_OpeningContainer_SingleClickClose_K2Node_ComponentBoundEvent_4_InteractSignature__DelegateSignature() end
function ABP_OpeningContainer_C:BndEvt__BP_OpeningContainer_SingleClick_K2Node_ComponentBoundEvent_0_InteractSignature__DelegateSignature() end
function ABP_OpeningContainer_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_OpeningContainer_C:ExecuteUbergraph_BP_OpeningContainer(EntryPoint) end


