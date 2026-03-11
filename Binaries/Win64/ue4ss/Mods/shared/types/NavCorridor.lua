---@meta

---@class ANavCorridorTestingActor : AActor
---@field DebugComp UNavCorridorTestingComponent
local ANavCorridorTestingActor = {}



---@class FNavCorridorParams
---@field Width float
---@field ObstacleTaperAngle float
---@field SmallSectorThreshold float
---@field LargeSectorThreshold float
---@field SimplifyEdgeThreshold float
---@field bSimplifyFlipPortals boolean
---@field bSimplifyConvexPortals boolean
---@field bSimplifyConcavePortals boolean
local FNavCorridorParams = {}



---@class UNavCorridorTestingComponent : UDebugDrawComponent
---@field NavAgentProps FNavAgentProperties
---@field FilterClass TSubclassOf<UNavigationQueryFilter>
---@field bFindCorridorToGoal boolean
---@field bFollowPathOnGoalCorridor boolean
---@field FollowLookAheadDistance float
---@field GoalActor AActor
---@field NavData ANavigationData
---@field CorridorParams FNavCorridorParams
---@field bUpdateParametersFromWidth boolean
---@field PathOffset float
---@field PathfindingTimeUs float
---@field CorridorTimeUs float
local UNavCorridorTestingComponent = {}



