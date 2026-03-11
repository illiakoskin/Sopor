---@meta

---@class Uwbp_matrixButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field btn_matrixButton UButton
---@field txt_category UTextBlock
---@field txt_CategoryName FText
---@field bEnabled boolean
---@field CategoryFilterChanged Fwbp_matrixButton_CCategoryFilterChanged
local Uwbp_matrixButton_C = {}

function Uwbp_matrixButton_C:SetButtonStyle() end
---@return FText
function Uwbp_matrixButton_C:Get_txt_category_Text() end
function Uwbp_matrixButton_C:Construct() end
function Uwbp_matrixButton_C:BndEvt__wbp_matrixButton_btn_matrixButton_K2Node_ComponentBoundEvent_0_OnButtonReleasedEvent__DelegateSignature() end
---@param EntryPoint int32
function Uwbp_matrixButton_C:ExecuteUbergraph_wbp_matrixButton(EntryPoint) end
function Uwbp_matrixButton_C:CategoryFilterChanged__DelegateSignature() end


