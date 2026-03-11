---@enum EAttributeTessellationDensityMode
local EAttributeTessellationDensityMode = {
    RelativeArea = 0,
    AbsoluteArea = 1,
    RelativeLength = 2,
    AbsoluteLength = 3,
    UserDefined = 4,
    OnScreenSize = 5,
    EAttributeTessellationDensityMode_MAX = 6,
}

---@enum EBillboardMode
local EBillboardMode = {
    OuterShell = 0,
    Foliage = 1,
    EBillboardMode_MAX = 2,
}

---@enum EBoneReductionTargetStopCondition
local EBoneReductionTargetStopCondition = {
    Any = 0,
    All = 1,
    EBoneReductionTargetStopCondition_MAX = 2,
}

---@enum EChartAggregatorMode
local EChartAggregatorMode = {
    TextureSizeProportions = 0,
    SurfaceArea = 1,
    OriginalPixelDensity = 2,
    UVSizeProportions = 3,
    EChartAggregatorMode_MAX = 4,
}

---@enum EComputeVisibilityMode
local EComputeVisibilityMode = {
    DirectX = 0,
    Software = 1,
    EComputeVisibilityMode_MAX = 2,
}

---@enum EDataCreationPreferences
local EDataCreationPreferences = {
    OnlyUseOriginalData = 0,
    PreferOriginalData = 1,
    PreferOptimizedResult = 2,
    EDataCreationPreferences_MAX = 3,
}

---@enum EDitherType
local EDitherType = {
    NoDither = 0,
    FloydSteinberg = 1,
    JarvisJudiceNinke = 2,
    Sierra = 3,
    EDitherType_MAX = 4,
}

---@enum EFillMode
local EFillMode = {
    Interpolate = 0,
    NearestNeighbor = 1,
    NoFill = 2,
    EFillMode_MAX = 3,
}

---@enum EFlipBackfacingMode
local EFlipBackfacingMode = {
    PixelNormal = 0,
    FaceNormal = 1,
    EFlipBackfacingMode_MAX = 2,
}

---@enum EGeometryDataFieldType
local EGeometryDataFieldType = {
    Coords = 0,
    TexCoords = 1,
    Normals = 2,
    Tangents = 3,
    Bitangents = 4,
    Colors = 5,
    TriangleIds = 6,
    MaterialIds = 7,
    VertexIds = 8,
    UserVertexField = 9,
    UserCornerField = 10,
    UserTriangleField = 11,
    CustomField = 12,
    EGeometryDataFieldType_MAX = 13,
}

---@enum EHoleFilling
local EHoleFilling = {
    Disabled = 0,
    Low = 1,
    Medium = 2,
    High = 3,
    EHoleFilling_MAX = 4,
}

---@enum EOpacityChannelComponent
local EOpacityChannelComponent = {
    Red = 0,
    Green = 1,
    Blue = 2,
    Alpha = 3,
    EOpacityChannelComponent_MAX = 4,
}

---@enum EOutputColorSpace
local EOutputColorSpace = {
    Undefined = 0,
    Linear = 1,
    sRGB = 2,
    EOutputColorSpace_MAX = 3,
}

---@enum EOutputDDSCompressionType
local EOutputDDSCompressionType = {
    NoCompression = 255,
    BC1 = 0,
    BC2 = 1,
    BC3 = 2,
    BC4 = 3,
    BC5 = 4,
    EOutputDDSCompressionType_MAX = 256,
}

---@enum EOutputImageFileFormat
local EOutputImageFileFormat = {
    BMP = 0,
    DDS = 1,
    JPEG = 2,
    PNG = 3,
    TGA = 4,
    TIFF = 5,
    EXR = 8,
    EOutputImageFileFormat_MAX = 9,
}

---@enum EOutputOpacityType
local EOutputOpacityType = {
    Opacity = 0,
    Transparency = 1,
    EOutputOpacityType_MAX = 2,
}

---@enum EOutputPixelFormat
local EOutputPixelFormat = {
    R8G8B8A8 = 0,
    R8G8B8 = 1,
    R8 = 2,
    R16G16B16A16 = 3,
    R16G16B16 = 4,
    R16 = 5,
    R32G32B32A32F = 6,
    EOutputPixelFormat_MAX = 7,
}

---@enum EReductionHeuristics
local EReductionHeuristics = {
    Fast = 0,
    Consistent = 1,
    EReductionHeuristics_MAX = 2,
}

---@enum EReductionPerformanceMode
local EReductionPerformanceMode = {
    AllFeatures = 0,
    HighPerformance = 1,
    EReductionPerformanceMode_MAX = 2,
}

---@enum EReductionTargetStopCondition
local EReductionTargetStopCondition = {
    Any = 0,
    All = 1,
    EReductionTargetStopCondition_MAX = 2,
}

---@enum ERemeshingMode
local ERemeshingMode = {
    Outside = 0,
    Inside = 1,
    Manual = 2,
    ERemeshingMode_MAX = 3,
}

---@enum ESeparateOverlappingChartsMode
local ESeparateOverlappingChartsMode = {
    Disabled = 0,
    Enabled = 1,
    Auto = 2,
    ESeparateOverlappingChartsMode_MAX = 3,
}

---@enum EShaderCodeInputMode
local EShaderCodeInputMode = {
    Source = 0,
    Binary = 1,
    EShaderCodeInputMode_MAX = 2,
}

---@enum EStopCondition
local EStopCondition = {
    Any = 0,
    All = 1,
    EStopCondition_MAX = 2,
}

---@enum ESurfaceAreaScale
local ESurfaceAreaScale = {
    LargestInstance = 0,
    SmallestInstance = 1,
    Average = 2,
    ESurfaceAreaScale_MAX = 3,
}

---@enum ESurfaceTransferMode
local ESurfaceTransferMode = {
    Fast = 0,
    Accurate = 1,
    ESurfaceTransferMode_MAX = 2,
}

---@enum ESymmetryAxis
local ESymmetryAxis = {
    X = 0,
    Y = 1,
    Z = 2,
    ESymmetryAxis_MAX = 3,
}

---@enum ETexCoordGeneratorType
local ETexCoordGeneratorType = {
    Parameterizer = 0,
    ChartAggregator = 1,
    ETexCoordGeneratorType_MAX = 2,
}

---@enum ETransformationSpace
local ETransformationSpace = {
    Global = 0,
    Local = 1,
    Tangent = 2,
    View = 3,
    ETransformationSpace_MAX = 4,
}

---@enum EWeightsFromColorComponent
local EWeightsFromColorComponent = {
    Red = 0,
    Green = 1,
    Blue = 2,
    Alpha = 3,
    EWeightsFromColorComponent_MAX = 4,
}

---@enum EWeightsFromColorMode
local EWeightsFromColorMode = {
    Standard = 0,
    High = 1,
    Low = 2,
    EWeightsFromColorMode_MAX = 3,
}

