---@meta

---@class UW_EquipmentSlotNew_C : UEquipmentSlot
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SizeBox_SlotSize USizeBox
---@field TextBlock_SlotIndex_Preview UTextBlock
---@field SlotSize FVector2D
---@field SlotDimensions FVector2D
---@field SlotIndex_0 int32
---@field ButtonDefaultNormalState FSlateBrush
---@field DefaultIconBP UTexture2D
---@field BackgroundIconBP UTexture2D
local UW_EquipmentSlotNew_C = {}

---@param IsDesignTime boolean
function UW_EquipmentSlotNew_C:PreConstruct(IsDesignTime) end
function UW_EquipmentSlotNew_C:Construct() end
---@param EntryPoint int32
function UW_EquipmentSlotNew_C:ExecuteUbergraph_W_EquipmentSlotNew(EntryPoint) end


