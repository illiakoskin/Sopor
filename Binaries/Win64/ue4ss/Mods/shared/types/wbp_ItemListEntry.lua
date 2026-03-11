---@meta

---@class Uwbp_ItemListEntry_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field img_ListItem UImage
---@field txt_ItemName UTextBlock
---@field SID FString
---@field ['Spawn Tolerance'] double
local Uwbp_ItemListEntry_C = {}

function Uwbp_ItemListEntry_C:BP_OnEntryReleased() end
---@param bIsExpanded boolean
function Uwbp_ItemListEntry_C:BP_OnItemExpansionChanged(bIsExpanded) end
---@param bIsSelected boolean
function Uwbp_ItemListEntry_C:BP_OnItemSelectionChanged(bIsSelected) end
---@param ListItemObject UObject
function Uwbp_ItemListEntry_C:OnListItemObjectSet(ListItemObject) end
---@param EntryPoint int32
function Uwbp_ItemListEntry_C:ExecuteUbergraph_wbp_ItemListEntry(EntryPoint) end


