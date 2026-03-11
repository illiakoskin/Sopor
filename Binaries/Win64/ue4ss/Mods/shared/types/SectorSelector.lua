---@meta

---@class FSectorSelectionHandle
local FSectorSelectionHandle = {}


---@class FSelectedSector
---@field BitmaskOfOccupiedSectorIDs int64
local FSelectedSector = {}



---@class UTargetMeleeSectorComponent : UActorComponent
---@field NumSectors int32
---@field TraceRadius float
local UTargetMeleeSectorComponent = {}

---@param Handle FSectorSelectionHandle
---@return boolean
function UTargetMeleeSectorComponent:ReleaseSector(Handle) end
---@param SectorId int32
---@return boolean
function UTargetMeleeSectorComponent:IsSectorObstructed(SectorId) end
---@param SectorId int32
---@return boolean
function UTargetMeleeSectorComponent:IsSectorFree(SectorId) end
---@param Location FVector
---@param SectorsBitmask int64
---@param AnglePrecision float
---@return boolean
function UTargetMeleeSectorComponent:IsLocationInsideSectorWithPrecision(Location, SectorsBitmask, AnglePrecision) end
---@param Handle FSectorSelectionHandle
---@return boolean
function UTargetMeleeSectorComponent:IsHandleValid(Handle) end
---@param Handle1 FSectorSelectionHandle
---@param Handle2 FSectorSelectionHandle
---@return boolean
function UTargetMeleeSectorComponent:IsHandlesEqual(Handle1, Handle2) end
---@param SectorsBitmask int64
---@return boolean
function UTargetMeleeSectorComponent:IsAnyOfSectorsObstructed(SectorsBitmask) end
---@param SectorsBitmask int64
---@param RemoveBitmask int64
---@return boolean
function UTargetMeleeSectorComponent:IsAllSectorsFreeIfRemove(SectorsBitmask, RemoveBitmask) end
---@param SectorsBitmask int64
---@return boolean
function UTargetMeleeSectorComponent:IsAllSectorsFree(SectorsBitmask) end
---@param SelectedSector FSelectedSector
---@param Path UNavigationPath
---@param SectorsNum int32
---@return boolean
function UTargetMeleeSectorComponent:FindDesiredSectorForPathBlueprint(SelectedSector, Path, SectorsNum) end
---@param MinIndex int32
---@param MaxIndex int32
---@return FSectorSelectionHandle
function UTargetMeleeSectorComponent:ClaimSectorsInRange(MinIndex, MaxIndex) end
---@param RequestedBitmaskOfOccupiedSectors int64
---@param bClaimIfObstructed boolean
---@param bForceClaim boolean
---@return FSectorSelectionHandle
function UTargetMeleeSectorComponent:ClaimSectorsByMask(RequestedBitmaskOfOccupiedSectors, bClaimIfObstructed, bForceClaim) end
---@param SectorId int32
---@return FSectorSelectionHandle
function UTargetMeleeSectorComponent:ClaimSector(SectorId) end


