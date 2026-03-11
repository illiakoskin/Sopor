---@enum ECableMeshGenerationType
local ECableMeshGenerationType = {
    Basic = 0,
    CustomMesh = 1,
    ECableMeshGenerationType_MAX = 2,
}

---@enum EMeshBuildInstruction
local EMeshBuildInstruction = {
    DoNotBuild = 0,
    BuildIfModified = 1,
    AlwaysBuild = 2,
    EMeshBuildInstruction_MAX = 3,
}

---@enum ETetherSimulationTimingMode
local ETetherSimulationTimingMode = {
    SimulateInSequence = 0,
    ProgressSimulation = 1,
    ETetherSimulationTimingMode_MAX = 2,
}

