---@meta

---@class ABP_DynamicObject_2states_final_C : AInteractableObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Ak UAkComponent
---@field GSCNavModifier UGSCNavModifierComponent
---@field SM_Object_2 UStaticMeshComponent
---@field SM_Object_1 UStaticMeshComponent
---@field Receiver_Set_Object_1 USignalReceiverComponent
---@field Receiver_Set_Object_2 USignalReceiverComponent
---@field SFX Enum_DynamicObject_SFX::Type
---@field OpenSFX UAkAudioEvent
---@field SMs_Tag1_Enabled TArray<UStaticMeshComponent>
---@field SMs_Tag2_Disabled TArray<UStaticMeshComponent>
local ABP_DynamicObject_2states_final_C = {}

---@param SMToEnable TArray<UStaticMeshComponent>
---@param SMToDisable TArray<UStaticMeshComponent>
---@param IsEnableFirst boolean
function ABP_DynamicObject_2states_final_C:SwitchSMState(SMToEnable, SMToDisable, IsEnableFirst) end
function ABP_DynamicObject_2states_final_C:UserConstructionScript() end
---@param DataObject UObject
function ABP_DynamicObject_2states_final_C:BndEvt__BP_BunkerDoor_ReceiverOn_K2Node_ComponentBoundEvent_1_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_DynamicObject_2states_final_C:BndEvt__BP_BunkerDoor_Receiver_K2Node_ComponentBoundEvent_0_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_DynamicObject_2states_final_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_DynamicObject_2states_final_C:ExecuteUbergraph_BP_DynamicObject_2states_final(EntryPoint) end


