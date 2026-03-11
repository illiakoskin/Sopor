---@meta

---@class UW_UpdatedStatPanel_C : UStatPanel
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HealAnimation UWidgetAnimation
---@field ReduceHPAnimation UWidgetAnimation
---@field DamageReceiveAnimation UWidgetAnimation
---@field Background UImage
---@field HPBack UImage
---@field HPStatSlot UW_StatSlot_C
---@field StaminaStatSlot UW_StatSlot_C
---@field AnimCurve FFloatCurve
local UW_UpdatedStatPanel_C = {}

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UW_UpdatedStatPanel_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UW_UpdatedStatPanel_C:ExecuteUbergraph_W_UpdatedStatPanel(EntryPoint) end


