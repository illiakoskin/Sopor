---@enum EBuildNamingType
local EBuildNamingType = {
    BuildVersionIni = 0,
    TextFile = 1,
    FromCode = 2,
    EBuildNamingType_MAX = 3,
}

---@enum EPulseCaptureMode
local EPulseCaptureMode = {
    PC_Disabled = -1,
    PC_Walkthrough = 0,
    PC_Scripted = 1,
    PC_Heatmap = 2,
    PC_LevelMap = 3,
    PC_MAX = 4,
}

---@enum ETrackerAvailableModes
local ETrackerAvailableModes = {
    NONE = 0,
    AVERAGE = 1,
    LAST = 2,
    MAX = 4,
    MIN = 8,
    ALL = 15,
}

---@enum ETrackerAverageType
local ETrackerAverageType = {
    CAPTURE = 0,
    FIXED = 1,
    ETrackerAverageType_MAX = 2,
}

