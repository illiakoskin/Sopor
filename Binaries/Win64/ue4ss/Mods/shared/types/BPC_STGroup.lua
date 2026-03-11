---@meta

---@class UBPC_STGroup_C : UActorComponent
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ref_groupOverlay Uwbp_groupOverlay_C
---@field teamName FString
---@field bShow boolean
---@field cTeamColor FColor
local UBPC_STGroup_C = {}

---@param refGrpOverlay UWidget
---@param bShow boolean
function UBPC_STGroup_C:setShow(refGrpOverlay, bShow) end
---@param NewTeamName FString
function UBPC_STGroup_C:UpdateTeamName(NewTeamName) end
function UBPC_STGroup_C:UpdateHP() end
function UBPC_STGroup_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function UBPC_STGroup_C:ReceiveTick(DeltaSeconds) end
---@param EndPlayReason EEndPlayReason::Type
function UBPC_STGroup_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function UBPC_STGroup_C:ExecuteUbergraph_BPC_STGroup(EntryPoint) end


