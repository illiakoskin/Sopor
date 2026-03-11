---@meta

---@class UW_SystemNotificationItem_C : USystemNotificationItem
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Description_1 UTextBlock
---@field LTimestamp double
---@field LMin int64
---@field LSec int64
local UW_SystemNotificationItem_C = {}

---@param MyGeometry FGeometry
---@param InDeltaTime float
function UW_SystemNotificationItem_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UW_SystemNotificationItem_C:ExecuteUbergraph_W_SystemNotificationItem(EntryPoint) end


