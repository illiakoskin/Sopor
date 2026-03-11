---@meta

---@class ABP_Diesel_Generator_Base_C : AInteractableObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GeneratorForceFeedbackSphere UBP_BaseForceFeedbackSphere_C
---@field SingleClickOff USingleClickComponent
---@field Lever UStaticMeshComponent
---@field ReceiverOff USignalReceiverComponent
---@field ReceiverOn USignalReceiverComponent
---@field SenderOff USignalSenderComponent
---@field SenderOn USignalSenderComponent
---@field Niagara UNiagaraComponent
---@field Ak UAkComponent
---@field SingleClickOn USingleClickComponent
---@field Base UStaticMeshComponent
---@field Timeline_2_ValveRotation_86CA2DF6472992857A03A299BEDF4844 float
---@field Timeline_2__Direction_86CA2DF6472992857A03A299BEDF4844 ETimelineDirection::Type
---@field Timeline_2 UTimelineComponent
---@field Timeline_1_ValveRotation_6F0411D347E94CA8EA4689A94DC19E2A float
---@field Timeline_1__Direction_6F0411D347E94CA8EA4689A94DC19E2A ETimelineDirection::Type
---@field Timeline_1 UTimelineComponent
---@field Timeline_0_ValveRotation_963082C041162126F15E99B109ACA831 float
---@field Timeline_0__Direction_963082C041162126F15E99B109ACA831 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Timeline_ValveRotation_27EC3C56470DB994201CC283BF33BD03 float
---@field Timeline__Direction_27EC3C56470DB994201CC283BF33BD03 ETimelineDirection::Type
---@field Timeline UTimelineComponent
---@field AKEventStart UAkAudioEvent
---@field AkEventStop UAkAudioEvent
---@field ['Sender Obj'] AObj
local ABP_Diesel_Generator_Base_C = {}

function ABP_Diesel_Generator_Base_C:FTurnOn() end
function ABP_Diesel_Generator_Base_C:FTurnOff() end
function ABP_Diesel_Generator_Base_C:Timeline__FinishedFunc() end
function ABP_Diesel_Generator_Base_C:Timeline__UpdateFunc() end
function ABP_Diesel_Generator_Base_C:Timeline_0__FinishedFunc() end
function ABP_Diesel_Generator_Base_C:Timeline_0__UpdateFunc() end
function ABP_Diesel_Generator_Base_C:Timeline_1__FinishedFunc() end
function ABP_Diesel_Generator_Base_C:Timeline_1__UpdateFunc() end
function ABP_Diesel_Generator_Base_C:Timeline_2__FinishedFunc() end
function ABP_Diesel_Generator_Base_C:Timeline_2__UpdateFunc() end
---@param DataObject UObject
function ABP_Diesel_Generator_Base_C:BndEvt__BP_Diesel_Generator_ReceiverOn_K2Node_ComponentBoundEvent_1_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_Diesel_Generator_Base_C:BndEvt__BP_Diesel_Generator_ReceiverOff_K2Node_ComponentBoundEvent_2_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_Diesel_Generator_Base_C:BndEvt__BP_Diesel_Generator_SingleClick_K2Node_ComponentBoundEvent_3_InteractSignature__DelegateSignature() end
function ABP_Diesel_Generator_Base_C:BndEvt__BP_Diesel_Generator_Base_SingleClickOff_K2Node_ComponentBoundEvent_4_InteractSignature__DelegateSignature() end
function ABP_Diesel_Generator_Base_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Diesel_Generator_Base_C:ExecuteUbergraph_BP_Diesel_Generator_Base(EntryPoint) end


