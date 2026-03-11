---@meta

---@class FAggregationPipelineSettings : FSimplygonPipelineSettings
---@field AggregationSettings FAggregationSettings
---@field VisibilitySettings FVisibilitySettings
---@field GeometryCullingSettings FGeometryCullingSettings
---@field VertexWeightSettings FVertexWeightSettings
---@field AttributeTessellationSettings FAttributeTessellationSettings
---@field MappingImageSettings FMappingImageSettings
---@field GenerateLightmapTexCoordSettings FGenerateLightmapTexCoordSettings
---@field MaterialPropertyCasters TArray<USimplygonMaterialCaster>
local FAggregationPipelineSettings = {}



---@class FAggregationSettings
---@field MergeGeometries boolean
---@field EnableGeometryCulling boolean
---@field GeometryCullingPrecision float
---@field SubdivideGeometryBasedOnUVTiles boolean
---@field SubdivisionTileSize int32
---@field ProcessSelectionSetID int32
---@field ProcessSelectionSetName FString
---@field KeepUnprocessedSceneMeshes boolean
local FAggregationSettings = {}



---@class FAmbientOcclusionCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field RaysPerPixel int32
---@field OcclusionFalloff float
---@field OcclusionMultiplier float
---@field UseSimpleOcclusionMode boolean
---@field FlipBackfacingNormals boolean
local FAmbientOcclusionCasterSettings = {}



---@class FAttributeTessellationSettings
---@field EnableAttributeTessellation boolean
---@field AttributeTessellationDensityMode EAttributeTessellationDensityMode
---@field TransformationSpace ETransformationSpace
---@field MaxAreaOfTessellatedValue float
---@field MaxLengthOfTessellatedValue float
---@field OnScreenSize int32
---@field OnlyAllowOneLevelOfDifference boolean
---@field MinTessellationLevel int32
---@field MaxTessellationLevel int32
---@field MaxTotalValuesCount int32
local FAttributeTessellationSettings = {}



---@class FBillboardCloudPipelineSettings : FSimplygonPipelineSettings
---@field BillboardCloudSettings FBillboardCloudSettings
---@field AttributeTessellationSettings FAttributeTessellationSettings
---@field MappingImageSettings FMappingImageSettings
---@field MaterialPropertyCasters TArray<USimplygonMaterialCaster>
local FBillboardCloudPipelineSettings = {}



---@class FBillboardCloudSettings
---@field BillboardMode EBillboardMode
---@field BillboardDensity float
---@field MaxPlaneCount int32
---@field GeometricComplexity float
---@field FavorVerticalPlanes boolean
---@field OpacityCutoff float
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field TwoSided boolean
---@field UseVisibilityWeights boolean
---@field UpVector FVector
---@field FoliageSettings FFoliageSettings
local FBillboardCloudSettings = {}



---@class FBillboardCloudVegetationPipelineSettings : FSimplygonPipelineSettings
---@field BillboardCloudSettings FBillboardCloudSettings
---@field AttributeTessellationSettings FAttributeTessellationSettings
---@field MappingImageSettings FMappingImageSettings
---@field MaterialPropertyCasters TArray<USimplygonMaterialCaster>
local FBillboardCloudVegetationPipelineSettings = {}



---@class FBoneSettings
---@field UseBoneReducer boolean
---@field RemoveUnusedBones boolean
---@field LimitBonesPerVertex boolean
---@field MaxBonePerVertex int32
---@field BoneReductionTargetBoneRatioEnabled boolean
---@field BoneReductionTargetBoneRatio float
---@field BoneReductionTargetBoneCountEnabled boolean
---@field BoneReductionTargetBoneCount int32
---@field BoneReductionTargetMaxDeviationEnabled boolean
---@field BoneReductionTargetMaxDeviation float
---@field BoneReductionTargetOnScreenSizeEnabled boolean
---@field BoneReductionTargetOnScreenSize int32
---@field BoneReductionTargetStopCondition EBoneReductionTargetStopCondition
---@field LockBoneSelectionSetID int32
---@field LockBoneSelectionSetName FString
---@field RemoveBoneSelectionSetID int32
---@field RemoveBoneSelectionSetName FString
local FBoneSettings = {}



---@class FChartAggregatorSettings
---@field ChartAggregatorMode EChartAggregatorMode
---@field SurfaceAreaScale ESurfaceAreaScale
---@field OriginalTexCoordLevel int32
---@field OriginalTexCoordName FString
---@field SeparateOverlappingCharts boolean
---@field OriginalChartProportionsChannel FString
---@field LockUVRotation boolean
local FChartAggregatorSettings = {}



---@class FColorCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field OutputSRGB boolean
---@field BakeOpacityInAlpha boolean
---@field SkipCastingIfNoInputChannel boolean
---@field OutputOpacityType EOutputOpacityType
local FColorCasterSettings = {}



---@class FComputeCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field OutputColorSpace EOutputColorSpace
---@field CastLayersFrontToBack boolean
---@field MaxCastLayers int32
---@field ShaderCodeInputMode EShaderCodeInputMode
local FComputeCasterSettings = {}



---@class FDisplacementCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field DistanceScaling float
---@field GenerateScalarDisplacement boolean
---@field OutputToTessellatedAttributes boolean
---@field GenerateTangentSpaceDisplacement boolean
---@field NormalMapTexCoordLevel int32
local FDisplacementCasterSettings = {}



---@class FFlipbookPipelineSettings : FSimplygonPipelineSettings
---@field FlipbookSettings FFlipbookSettings
---@field AttributeTessellationSettings FAttributeTessellationSettings
---@field MappingImageSettings FMappingImageSettings
---@field MaterialPropertyCasters TArray<USimplygonMaterialCaster>
local FFlipbookPipelineSettings = {}



---@class FFlipbookSettings
---@field NumberOfViews int32
---@field ViewDirection FVector
---@field UpVector FVector
---@field NumberOfColumns int32
---@field NumberOfRows int32
---@field FlipRowColumnOrder boolean
---@field OverrideFlipbookTextureWidth int32
---@field PivotAroundOrigin boolean
local FFlipbookSettings = {}



---@class FFoliageSettings
---@field SeparateTrunkAndFoliage boolean
---@field MaintainLeafConnections boolean
---@field SeparateFoliageTriangleRatio float
---@field SeparateFoliageTriangleThreshold int32
---@field SeparateFoliageAreaThreshold float
---@field SeparateFoliageSizeThreshold float
---@field TrunkReductionRatio float
local FFoliageSettings = {}



---@class FGenerateLightmapTexCoordSettings
---@field GenerateLightmapTexCoord boolean
---@field LightmapTexCoordLevel int32
---@field LightmapTexCoordName FString
---@field ChartAggregatorMode EChartAggregatorMode
---@field TextureWidth int32
---@field TextureHeight int32
---@field GutterSpace int32
local FGenerateLightmapTexCoordSettings = {}



---@class FGeometryCullingSettings
---@field UseClippingPlanes boolean
---@field ClippingPlaneSelectionSetID int32
---@field ClippingPlaneSelectionSetName FString
---@field UseClippingGeometry boolean
---@field ClippingGeometrySelectionSetID int32
---@field ClippingGeometrySelectionSetName FString
local FGeometryCullingSettings = {}



---@class FGeometryDataCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field GeometryDataFieldType EGeometryDataFieldType
---@field GeometryDataFieldIndex int32
---@field MappingLayerIndex int32
---@field MappingInf FVector4
---@field MappingSup FVector4
local FGeometryDataCasterSettings = {}



---@class FHighDensityMeshReductionPipelineSettings : FSimplygonPipelineSettings
---@field HighDensityMeshReductionSettings FHighDensityMeshReductionSettings
local FHighDensityMeshReductionPipelineSettings = {}



---@class FHighDensityMeshReductionSettings
---@field OnScreenSizeEnabled boolean
---@field OnScreenSize int32
---@field MaxDeviationEnabled boolean
---@field MaxDeviation float
---@field StopCondition EStopCondition
---@field ProcessSelectionSetName FString
local FHighDensityMeshReductionSettings = {}



---@class FImpostorFromSingleViewPipelineSettings : FSimplygonPipelineSettings
---@field ImpostorFromSingleViewSettings FImpostorFromSingleViewSettings
---@field AttributeTessellationSettings FAttributeTessellationSettings
---@field MappingImageSettings FMappingImageSettings
---@field MaterialPropertyCasters TArray<USimplygonMaterialCaster>
local FImpostorFromSingleViewPipelineSettings = {}



---@class FImpostorFromSingleViewSettings
---@field UseTightFitting boolean
---@field TightFittingDepthOffset float
---@field TwoSided boolean
---@field ViewDirection FVector
---@field TexCoordPadding float
local FImpostorFromSingleViewSettings = {}



---@class FInputMaterialSettings
---@field MaterialMapping int32
local FInputMaterialSettings = {}



---@class FMappingImageSettings
---@field GenerateMappingImage boolean
---@field GenerateTexCoords boolean
---@field GenerateTangents boolean
---@field ReplaceMappingImages boolean
---@field UseFullRetexturing boolean
---@field ApplyNewMaterialIds boolean
---@field UseAutomaticTextureSize boolean
---@field AutomaticTextureSizeMultiplier float
---@field ForcePower2Texture boolean
---@field OnlyParameterizeInvalidUVs boolean
---@field AllowTransparencyMapping boolean
---@field MaximumLayers int32
---@field TexCoordLevel int32
---@field TexCoordName FString
---@field TexCoordGeneratorType ETexCoordGeneratorType
---@field OutputMaterialCount int32
---@field InputMaterialCount int32
---@field ChartAggregatorSettings FChartAggregatorSettings
---@field ParameterizerSettings FParameterizerSettings
---@field InputMaterialSettings TArray<FInputMaterialSettings>
---@field OutputMaterialSettings TArray<FOutputMaterialSettings>
local FMappingImageSettings = {}



---@class FMaterialOutputSettings
---@field ParentMaterialOverride TSoftObjectPtr<UMaterialInterface>
local FMaterialOutputSettings = {}



---@class FNormalCalculationSettings
---@field ReplaceNormals boolean
---@field RepairInvalidNormals boolean
---@field HardEdgeAngle float
---@field ReplaceTangents boolean
---@field ReorthogonalizeTangentSpace boolean
---@field ScaleByArea boolean
---@field ScaleByAngle boolean
---@field SnapNormalsToFlatSurfaces boolean
local FNormalCalculationSettings = {}



---@class FNormalCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field FlipBackfacingNormals boolean
---@field FlipBackfacingMode EFlipBackfacingMode
---@field GenerateTangentSpaceNormals boolean
---@field FlipGreen boolean
---@field CalculateBitangentPerFragment boolean
---@field NormalizeInterpolatedTangentSpace boolean
local FNormalCasterSettings = {}



---@class FOpacityCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field OutputSRGB boolean
---@field OutputToTessellatedAttributes boolean
---@field OutputOpacityType EOutputOpacityType
local FOpacityCasterSettings = {}



---@class FOutputMaterialSettings
---@field TextureWidth int32
---@field TextureHeight int32
---@field MultisamplingLevel int32
---@field GutterSpace int32
local FOutputMaterialSettings = {}



---@class FParameterizerSettings
---@field MaxStretch float
---@field LargeChartsImportance float
local FParameterizerSettings = {}



---@class FReductionPipelineSettings : FSimplygonPipelineSettings
---@field ReductionSettings FReductionSettings
---@field RepairSettings FRepairSettings
---@field NormalCalculationSettings FNormalCalculationSettings
---@field VisibilitySettings FVisibilitySettings
---@field BoneSettings FBoneSettings
---@field VertexWeightSettings FVertexWeightSettings
---@field AttributeTessellationSettings FAttributeTessellationSettings
---@field MappingImageSettings FMappingImageSettings
---@field MaterialPropertyCasters TArray<USimplygonMaterialCaster>
local FReductionPipelineSettings = {}



---@class FReductionSettings
---@field ReductionTargetTriangleRatioEnabled boolean
---@field ReductionTargetTriangleRatio float
---@field ReductionTargetTriangleCountEnabled boolean
---@field ReductionTargetTriangleCount int32
---@field ReductionTargetMaxDeviationEnabled boolean
---@field ReductionTargetMaxDeviation float
---@field ReductionTargetOnScreenSizeEnabled boolean
---@field ReductionTargetOnScreenSize int32
---@field ReductionPerformanceMode EReductionPerformanceMode
---@field ReductionTargetStopCondition EReductionTargetStopCondition
---@field ReductionHeuristics EReductionHeuristics
---@field GeometryImportance float
---@field MaterialImportance float
---@field TextureImportance float
---@field ShadingImportance float
---@field GroupImportance float
---@field VertexColorImportance float
---@field EdgeSetImportance float
---@field SkinningImportance float
---@field OutwardMoveMultiplier float
---@field InwardMoveMultiplier float
---@field MaxEdgeLength float
---@field KeepSymmetry boolean
---@field UseSymmetryQuadRetriangulator boolean
---@field UseAutomaticSymmetryDetection boolean
---@field SymmetryDetectionTolerance float
---@field SymmetryAxis ESymmetryAxis
---@field SymmetryOffset float
---@field CreateGeomorphGeometry boolean
---@field GenerateGeomorphData boolean
---@field DataCreationPreferences EDataCreationPreferences
---@field UseHighQualityNormalCalculation boolean
---@field LockGeometricBorder boolean
---@field MergeGeometries boolean
---@field AllowDegenerateTexCoords boolean
---@field ProcessSelectionSetID int32
---@field ProcessSelectionSetName FString
---@field KeepUnprocessedSceneMeshes boolean
---@field PreserveQuadFlags boolean
local FReductionSettings = {}



---@class FRemeshingPipelineSettings : FSimplygonPipelineSettings
---@field RemeshingSettings FRemeshingSettings
---@field BoneSettings FBoneSettings
---@field GeometryCullingSettings FGeometryCullingSettings
---@field VisibilitySettings FVisibilitySettings
---@field AttributeTessellationSettings FAttributeTessellationSettings
---@field MappingImageSettings FMappingImageSettings
---@field MaterialPropertyCasters TArray<USimplygonMaterialCaster>
local FRemeshingPipelineSettings = {}



---@class FRemeshingSettings
---@field OnScreenSize int32
---@field HoleFilling EHoleFilling
---@field RemeshingMode ERemeshingMode
---@field SurfaceTransferMode ESurfaceTransferMode
---@field HardEdgeAngle float
---@field TransferNormals boolean
---@field TransferColors boolean
---@field PopulateAttributeTessellationDisplacement boolean
---@field GeometricalAccuracy float
---@field TopologicalAccuracy float
---@field RemeshingModeManualPositionX float
---@field RemeshingModeManualPositionY float
---@field RemeshingModeManualPositionZ float
---@field ProcessSelectionSetName FString
---@field ProcessSelectionSetID int32
---@field KeepUnprocessedSceneMeshes boolean
---@field ForceSoftEdgesWithinTextureCharts boolean
local FRemeshingSettings = {}



---@class FRepairSettings
---@field UseTJunctionRemover boolean
---@field TJuncDist float
---@field UseWelding boolean
---@field WeldOnlyBorderVertices boolean
---@field WeldOnlyWithinMaterial boolean
---@field WeldOnlyWithinSceneNode boolean
---@field WeldOnlyBetweenSceneNodes boolean
---@field WeldDist float
---@field ProgressivePasses int32
local FRepairSettings = {}



---@class FSimplygonPipelineSettings
local FSimplygonPipelineSettings = {}


---@class FVertexColorCasterSettings
---@field MaterialChannel FString
---@field OpacityChannel FString
---@field OpacityChannelComponent EOpacityChannelComponent
---@field DitherType EDitherType
---@field FillMode EFillMode
---@field Dilation int32
---@field UseMultisampling boolean
---@field OutputPixelFormat EOutputPixelFormat
---@field OutputImageFileFormat EOutputImageFileFormat
---@field OutputDDSCompressionType EOutputDDSCompressionType
---@field OutputColorLevel int32
---@field OutputColorName FString
---@field ColorSpaceEdgeThreshold float
local FVertexColorCasterSettings = {}



---@class FVertexWeightSettings
---@field UseVertexWeightsInReducer boolean
---@field UseVertexWeightsInTexcoordGenerator boolean
---@field WeightsFromColorLevel int32
---@field WeightsFromColorName FString
---@field WeightsFromColorComponent EWeightsFromColorComponent
---@field WeightsFromColorMultiplier float
---@field WeightsFromColorMode EWeightsFromColorMode
local FVertexWeightSettings = {}



---@class FVisibilitySettings
---@field UseVisibilityWeightsInReducer boolean
---@field UseVisibilityWeightsInTexcoordGenerator boolean
---@field VisibilityWeightsPower float
---@field CullOccludedGeometry boolean
---@field ForceVisibilityCalculation boolean
---@field UseBackfaceCulling boolean
---@field CameraSelectionSetID int32
---@field CameraSelectionSetName FString
---@field OccluderSelectionSetID int32
---@field OccluderSelectionSetName FString
---@field FillNonVisibleAreaThreshold float
---@field RemoveTrianglesNotOccludingOtherTriangles boolean
---@field ConservativeMode boolean
---@field ComputeVisibilityMode EComputeVisibilityMode
local FVisibilitySettings = {}



---@class UAggregationPipeline : USimplygonPipeline
---@field Settings FAggregationPipelineSettings
local UAggregationPipeline = {}



---@class UAmbientOcclusionMaskCaster : UBaseColorCaster
local UAmbientOcclusionMaskCaster = {}


---@class UBaseColorCaster : USimplygonColorCaster
local UBaseColorCaster = {}


---@class UBillboardCloudPipeline : USimplygonStandinPipeline
---@field Settings FBillboardCloudPipelineSettings
local UBillboardCloudPipeline = {}



---@class UBillboardCloudVegetationPipeline : USimplygonPipeline
---@field Settings FBillboardCloudVegetationPipelineSettings
local UBillboardCloudVegetationPipeline = {}



---@class UEmissiveCaster : UBaseColorCaster
local UEmissiveCaster = {}


---@class UFlipbookPipeline : USimplygonPipeline
---@field Settings FFlipbookPipelineSettings
local UFlipbookPipeline = {}



---@class UHighDensityMeshReductionPipeline : USimplygonPipeline
---@field Settings FHighDensityMeshReductionPipelineSettings
local UHighDensityMeshReductionPipeline = {}



---@class UMetallicCaster : UBaseColorCaster
local UMetallicCaster = {}


---@class UNormalCaster : USimplygonNormalCaster
local UNormalCaster = {}


---@class UOpacityCaster : USimplygonOpacityCaster
local UOpacityCaster = {}


---@class UOpacityMaskCaster : USimplygonOpacityCaster
local UOpacityMaskCaster = {}


---@class UReductionPipeline : USimplygonPipeline
---@field Settings FReductionPipelineSettings
local UReductionPipeline = {}



---@class URemeshingPipeline : USimplygonPipeline
---@field Settings FRemeshingPipelineSettings
local URemeshingPipeline = {}



---@class URoughnessCaster : UBaseColorCaster
local URoughnessCaster = {}


---@class USimplygonAmbientOcclusionCaster : USimplygonMaterialCaster
---@field AmbientOcclusionCasterSettings FAmbientOcclusionCasterSettings
local USimplygonAmbientOcclusionCaster = {}



---@class USimplygonColorCaster : USimplygonMaterialCaster
---@field ColorCasterSettings FColorCasterSettings
local USimplygonColorCaster = {}



---@class USimplygonComputeCaster : USimplygonMaterialCaster
---@field ComputeCasterSettings FComputeCasterSettings
local USimplygonComputeCaster = {}



---@class USimplygonDisplacementCaster : USimplygonMaterialCaster
---@field DisplacementCasterSettings FDisplacementCasterSettings
local USimplygonDisplacementCaster = {}



---@class USimplygonGeometryDataCaster : USimplygonMaterialCaster
---@field GeometryDataCasterSettings FGeometryDataCasterSettings
local USimplygonGeometryDataCaster = {}



---@class USimplygonMaterialCaster : UObject
local USimplygonMaterialCaster = {}


---@class USimplygonNormalCaster : USimplygonMaterialCaster
---@field NormalCasterSettings FNormalCasterSettings
local USimplygonNormalCaster = {}



---@class USimplygonOpacityCaster : USimplygonMaterialCaster
---@field OpacityCasterSettings FOpacityCasterSettings
local USimplygonOpacityCaster = {}



---@class USimplygonPipeline : UObject
local USimplygonPipeline = {}


---@class USimplygonStandinPipeline : UObject
---@field ChartAggregatorSettings FChartAggregatorSettings
---@field MaterialOutputSettings FMaterialOutputSettings
local USimplygonStandinPipeline = {}



---@class USimplygonVertexColorCaster : USimplygonMaterialCaster
---@field VertexColorCasterSettings FVertexColorCasterSettings
local USimplygonVertexColorCaster = {}



---@class USpecualarCaster : UBaseColorCaster
local USpecualarCaster = {}


---@class UStandinFarPipeline : USimplygonStandinPipeline
---@field Settings FRemeshingPipelineSettings
local UStandinFarPipeline = {}



---@class UStandinNearPipeline : USimplygonStandinPipeline
---@field Settings FAggregationPipelineSettings
local UStandinNearPipeline = {}



