---@meta

---@class UAnimNotify_AkEvent_C : UAnimNotify_RetargetedAkEvent
---@field ['Attach Name'] FString
---@field Event TSoftObjectPtr<UAkAudioEvent>
---@field Follow boolean
---@field EventName FString
local UAnimNotify_AkEvent_C = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@param EventReference FAnimNotifyEventReference
---@return boolean
function UAnimNotify_AkEvent_C:Received_Notify(MeshComp, Animation, EventReference) end


