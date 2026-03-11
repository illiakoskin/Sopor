---@meta

---@class UWBP_TeamScrBoard_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field pb_TeamAHealth UProgressBar
---@field pb_TeamBHealth UProgressBar
---@field TXT_A_CNT UTextBlock
---@field TXT_B_CNT UTextBlock
---@field RequestTeamHealthUpdate FWBP_TeamScrBoard_CRequestTeamHealthUpdate
---@field MaxHPA double
---@field MaxHPB double
local UWBP_TeamScrBoard_C = {}

---@param TeamHP double
---@param TmName ETeam::Type
---@param ProgBarVal double
function UWBP_TeamScrBoard_C:GetProgBarVal(TeamHP, TmName, ProgBarVal) end
---@param AHP double
---@param BHP double
---@param ACnt int32
---@param BCnt int32
function UWBP_TeamScrBoard_C:UpdateTeamStats(AHP, BHP, ACnt, BCnt) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UWBP_TeamScrBoard_C:Tick(MyGeometry, InDeltaTime) end
function UWBP_TeamScrBoard_C:Construct() end
---@param EntryPoint int32
function UWBP_TeamScrBoard_C:ExecuteUbergraph_WBP_TeamScrBoard(EntryPoint) end
function UWBP_TeamScrBoard_C:RequestTeamHealthUpdate__DelegateSignature() end


