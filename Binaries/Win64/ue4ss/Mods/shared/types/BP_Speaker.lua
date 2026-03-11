---@meta

---@class ABP_Speaker_C : AInteractableObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ReceiverTurnOffMusic USignalReceiverComponent
---@field InteractableRadioAk UAkComponent
---@field NS_Destruct_Radio UNiagaraComponent
---@field SM_ele_speaker_01_b UStaticMeshComponent
---@field SM_ele_speaker_01_a UStaticMeshComponent
---@field SenderPlayDialog USignalSenderComponent
---@field ReceiverPlayDialog USignalReceiverComponent
---@field ReceiverPlayMusic USignalReceiverComponent
---@field Hittable UHittableComponent
---@field DamageInteractable UDamageInteractableComponent
---@field SFX_Destruct UAkAudioEvent
---@field PlayList_TurnOn UAkAudioEvent
---@field PlayList_TurnOff UAkAudioEvent
---@field SFX_TurnOn UAkAudioEvent
---@field SFX_TurnOff UAkAudioEvent
local ABP_Speaker_C = {}

function ABP_Speaker_C:ReceiveBeginPlay() end
---@param DataObject UObject
function ABP_Speaker_C:BndEvt__BP_Speaker_ReceiverPlayMusic_K2Node_ComponentBoundEvent_1_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_Speaker_C:BndEvt__BP_Speaker_ReceiverPlayDialog_K2Node_ComponentBoundEvent_2_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_Speaker_C:BndEvt__BP_Speaker_ReceiverTurnOffMusic_K2Node_ComponentBoundEvent_3_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param LastDamageDealerUID FUID
---@param bProjectileFlownThroughObject boolean
function ABP_Speaker_C:BndEvt__BP_Speaker_DamageInteractable_K2Node_ComponentBoundEvent_4_OnDamageAccumulated__DelegateSignature(LastDamageDealerUID, bProjectileFlownThroughObject) end
---@param EntryPoint int32
function ABP_Speaker_C:ExecuteUbergraph_BP_Speaker(EntryPoint) end


