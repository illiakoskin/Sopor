---@enum EPhysicsControlType
local EPhysicsControlType = {
    WorldSpace = 0,
    ParentSpace = 1,
    EPhysicsControlType_MAX = 2,
}

---@enum EPhysicsMovementType
local EPhysicsMovementType = {
    Static = 0,
    Kinematic = 1,
    Simulated = 2,
    EPhysicsMovementType_MAX = 3,
}

---@enum EResetToCachedTargetBehavior
local EResetToCachedTargetBehavior = {
    ResetImmediately = 0,
    ResetDuringUpdateControls = 1,
    EResetToCachedTargetBehavior_MAX = 2,
}

