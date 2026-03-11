---@meta

---@class Ubp_MWEntry_C : UModWorldSubsystem
---@field UberGraphFrame FPointerToUberGraphFrame
local Ubp_MWEntry_C = {}

---@param World UWorld
function Ubp_MWEntry_C:OnWorldBeginPlay(World) end
---@param EntryPoint int32
function Ubp_MWEntry_C:ExecuteUbergraph_bp_MWEntry(EntryPoint) end


