---@meta

---@class ATetherCableActor : AActor
---@field CableProperties FTetherCableProperties
---@field bLockCurrentState boolean
---@field bSynchronousRealtime boolean
---@field RealtimeInEditorTimeDilation float
---@field bDebugVisualizeSimulationParticles boolean
---@field bDebugVisualizeSimulationCollision boolean
---@field bDebugVisualizeBuiltStaticMeshPoints boolean
---@field bDebugVisualizeContactPoints boolean
---@field bDebugVisualizeComponentLocations boolean
---@field bDebugVisualizeTangents boolean
---@field bVisible boolean
---@field SceneRoot USceneComponent
---@field StaticMeshComponent UStaticMeshComponent
---@field TimeCreated FDateTime
---@field GuideSpline UTetherGuideSplineComponent
---@field ActiveSimulationModel FTetherSimulationModel
---@field StaticMesh UStaticMesh
---@field BuiltCurveDescriptionLocalSpaceSimplified FCableMeshGenerationCurveDescription
---@field DynamicPreviewMesh UTetherCableMeshComponent
---@field MeshGenerator UTetherMeshGenerator
local ATetherCableActor = {}



---@class FBasicMeshGenerationOptions
---@field NumSides int32
---@field bOverrideCableWidth boolean
---@field CableMeshWidth float
---@field bAutoTile boolean
---@field bSnapToNearestFullTile boolean
---@field TileUVs float
local FBasicMeshGenerationOptions = {}



---@class FBasicMeshProperties
---@field LoopResolution float
---@field CurveSimplificationMultiplier float
---@field MeshGenerationOptions FBasicMeshGenerationOptions
local FBasicMeshProperties = {}



---@class FCableMeshGenerationCurveDescription
---@field Points TArray<FCableMeshGenerationPoint>
---@field StartTangent FVector
---@field EndTangent FVector
local FCableMeshGenerationCurveDescription = {}



---@class FCableMeshGenerationPoint
---@field Location FVector
---@field Rotation FQuat
---@field Info FCableMeshGenerationPointInfo
local FCableMeshGenerationPoint = {}



---@class FCableMeshGenerationPointInfo
---@field DistanceToNearestContactPoint float
---@field Looseness float
---@field DistanceToSegmentLine float
---@field SlackRatio float
---@field SegmentLength float
---@field SegmentLineDistance float
local FCableMeshGenerationPointInfo = {}



---@class FCustomMeshProperties
---@field SourceMeshReference TSoftObjectPtr<UStaticMesh>
---@field OffsetRotation float
---@field NumInstances int32
---@field bFitToCableWidth boolean
---@field bAutoTile boolean
---@field bSnapToNearestFullTile boolean
---@field TileUVs float
local FCustomMeshProperties = {}



---@class FSplineSegmentInfo
---@field StartLocation FVector
---@field StartLeaveTangent FVector
---@field EndLocation FVector
---@field EndArriveTangent FVector
local FSplineSegmentInfo = {}



---@class FTetherCableProperties
---@field CableWidth float
---@field SimulationOptions FTetherCableSimulationOptions
---@field MeshType ECableMeshGenerationType
---@field BasicMeshProperties FBasicMeshProperties
---@field CustomMeshProperties FCustomMeshProperties
---@field Materials TArray<UMaterialInterface>
local FTetherCableProperties = {}



---@class FTetherCableSimulationOptions
---@field SimulationDuration float
---@field SubstepTime float
---@field bEnableStiffness boolean
---@field StiffnessSolverIterations int32
---@field Drag float
---@field bEnableCollision boolean
---@field bEnableSelfCollision boolean
---@field CollisionProfile FCollisionProfileName
---@field CollisionWidthScale float
---@field CollisionFriction float
---@field ParticleDistanceScale float
---@field ConstraintsEaseInTime float
local FTetherCableSimulationOptions = {}



---@class FTetherProxySimulationSegmentSeries : FTetherSimulationSegmentSeries
local FTetherProxySimulationSegmentSeries = {}


---@class FTetherSegmentSimulationOptions
---@field bFixedAnchorPoint boolean
---@field bUseSplineTangents boolean
local FTetherSegmentSimulationOptions = {}



---@class FTetherSegmentSimulationParams
---@field bShouldSimulateSegment boolean
---@field SimulationOptions FTetherSegmentSimulationOptions
local FTetherSegmentSimulationParams = {}



---@class FTetherSimulationInstanceResources
---@field bIsInitialized boolean
---@field World TWeakObjectPtr<UWorld>
---@field BodySetup UBodySetup
local FTetherSimulationInstanceResources = {}



---@class FTetherSimulationModel : FTetherSimulationSegmentSeries
---@field SimulationBaseWorldTransform FTransform
---@field Segments TArray<FTetherSimulationSegment>
local FTetherSimulationModel = {}



---@class FTetherSimulationParams
---@field World TWeakObjectPtr<UWorld>
---@field SimulationName FString
---@field TimingMode ETetherSimulationTimingMode
---@field CollisionWidth float
---@field DesiredParticleDistance float
---@field CableForce FVector
---@field SimulationOptions FTetherCableSimulationOptions
---@field SegmentParams TArray<FTetherSegmentSimulationParams>
local FTetherSimulationParams = {}



---@class FTetherSimulationParticle
---@field ParticleUniqueId uint32
---@field bFree boolean
---@field position FVector
---@field OldPosition FVector
local FTetherSimulationParticle = {}



---@class FTetherSimulationSegment
---@field SegmentUniqueId uint32
---@field SplineSegmentInfo FSplineSegmentInfo
---@field Length float
---@field Particles TArray<FTetherSimulationParticle>
---@field SimulationTime float
---@field bInvalidated boolean
local FTetherSimulationSegment = {}



---@class FTetherSimulationSegmentSeries
local FTetherSimulationSegmentSeries = {}


---@class UTMG_Basic : UTetherMeshGenerator
---@field Properties FBasicMeshProperties
local UTMG_Basic = {}



---@class UTMG_CustomMesh : UTetherMeshGenerator
---@field Properties FCustomMeshProperties
local UTMG_CustomMesh = {}



---@class UTetherCableMeshComponent : UMeshComponent
local UTetherCableMeshComponent = {}


---@class UTetherGuideSplineComponent : USplineComponent
---@field MetaData UTetherGuideSplineMetadata
local UTetherGuideSplineComponent = {}



---@class UTetherGuideSplineMetadata : USplineMetadata
---@field PointSegmentDefinitions TArray<UTetherPointSegmentDefinition>
local UTetherGuideSplineMetadata = {}



---@class UTetherMeshGenerator : UObject
local UTetherMeshGenerator = {}


---@class UTetherPointSegmentDefinition : UObject
---@field Slack float
---@field SimulationOptions FTetherSegmentSimulationOptions
local UTetherPointSegmentDefinition = {}



