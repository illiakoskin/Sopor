---@meta

---@class ABP_Bed_C : ABedView
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SenderOnInteracted USignalSenderComponent
---@field ReceiverInteractOff USignalReceiverComponent
---@field ReceiverInteractOn USignalReceiverComponent
local ABP_Bed_C = {}

function ABP_Bed_C:BndEvt__BP_Bed_SleepComponent_K2Node_ComponentBoundEvent_2_InteractSignature__DelegateSignature() end
---@param DataObject UObject
function ABP_Bed_C:BndEvt__BP_Bed_ReceiverInteractOff_K2Node_ComponentBoundEvent_1_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_Bed_C:BndEvt__BP_Bed_ReceiverInteractOn_K2Node_ComponentBoundEvent_0_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param EntryPoint int32
function ABP_Bed_C:ExecuteUbergraph_BP_Bed(EntryPoint) end


