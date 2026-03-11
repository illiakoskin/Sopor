---@meta

---@class UWBP_AICheckbox_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field cb_aiOpt UCheckBox
---@field txt_aiOpt UTextBlock
---@field iAIOptVal int32
---@field tAIOpt FText
---@field xCMD FString
local UWBP_AICheckbox_C = {}

---@param tAIOpt FText
---@param iAIOptVal int32
function UWBP_AICheckbox_C:set_AIOpt_props(tAIOpt, iAIOptVal) end
---@return FText
function UWBP_AICheckbox_C:Get_txt_aiOpt_Text() end
---@param bIsChecked boolean
function UWBP_AICheckbox_C:BndEvt__WBP_AICheckbox_cb_aiOpt_K2Node_ComponentBoundEvent_0_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
---@param EntryPoint int32
function UWBP_AICheckbox_C:ExecuteUbergraph_WBP_AICheckbox(EntryPoint) end


