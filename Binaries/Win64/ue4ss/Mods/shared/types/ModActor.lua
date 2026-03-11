---@meta

---@class AModActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ref_wbpSpawnTools UWBP_SpawnTools_C
---@field PCClass FString
local AModActor_C = {}

---@param Key FKey
function AModActor_C:InpActEvt_Escape_K2Node_InputKeyEvent_0(Key) end
---@param ActionValue FInputActionValue
---@param ElapsedTime float
---@param TriggeredTime float
---@param SourceAction UInputAction
function AModActor_C:InpActEvt_IA_OpenUI_K2Node_EnhancedInputActionEvent_1(ActionValue, ElapsedTime, TriggeredTime, SourceAction) end
---@param ActionValue FInputActionValue
---@param ElapsedTime float
---@param TriggeredTime float
---@param SourceAction UInputAction
function AModActor_C:InpActEvt_IA_Spawn_K2Node_EnhancedInputActionEvent_0(ActionValue, ElapsedTime, TriggeredTime, SourceAction) end
function AModActor_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function AModActor_C:ExecuteUbergraph_ModActor(EntryPoint) end


