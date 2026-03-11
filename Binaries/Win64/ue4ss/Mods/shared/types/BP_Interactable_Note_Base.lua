---@meta

---@class ABP_Interactable_Note_Base_C : AInteractableObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Ak UAkComponent
---@field SignalSender USignalSenderComponent
---@field SingleClick USingleClickComponent
---@field StaticMesh UStaticMeshComponent
---@field ['New mesh'] UStaticMesh
---@field AkEventPickUp UAkAudioEvent
local ABP_Interactable_Note_Base_C = {}

function ABP_Interactable_Note_Base_C:BndEvt__BP_Interactable_Note_SingleClick_K2Node_ComponentBoundEvent_0_InteractSignature__DelegateSignature() end
function ABP_Interactable_Note_Base_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Interactable_Note_Base_C:ExecuteUbergraph_BP_Interactable_Note_Base(EntryPoint) end


