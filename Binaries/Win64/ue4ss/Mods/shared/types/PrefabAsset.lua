---@meta

---@class APrefabActor : AActor
---@field PrefabComponent UPrefabComponent
local APrefabActor = {}

---@param NewPrefab UPrefabAsset
---@param bForceRevertEvenDisconnected boolean
function APrefabActor:SetPrefab(NewPrefab, bForceRevertEvenDisconnected) end
---@param InMobility EComponentMobility::Type
function APrefabActor:SetMobility(InMobility) end
---@param bInLocked boolean
function APrefabActor:SetLockSelection(bInLocked) end
---@return UPrefabAsset
function APrefabActor:GetPrefab() end
---@return boolean
function APrefabActor:GetLockSelection() end
---@param bDestroyAttachedChildren boolean
function APrefabActor:DestroyPrefabActor(bDestroyAttachedChildren) end


---@class APrefabRelativePositionCustomPrimitiveDataUpdatingActor : ATickOnlyInEditorActor
---@field CustomDataIndex uint32
local APrefabRelativePositionCustomPrimitiveDataUpdatingActor = {}



---@class ATerraVolume : AVolume
---@field CapturedHData TArray<uint16>
---@field AppliedAlignHMap TMap<FIntPoint, uint16>
---@field AppliedCaptureDeltaHMap TMap<FIntPoint, uint16>
---@field CurrentBounds FVector4
---@field CapturedSize FIntPoint
---@field CapturedBoxExtend0 FVector
---@field CapturedBoxExtend1 FVector
---@field CapturedBoxExtend2 FVector
---@field CapturedBoxExtend3 FVector
---@field bSkipRestoreOnDelete boolean
---@field CachedLandscape ALandscapeProxy
---@field bApplied boolean
---@field bKeepTerrainOnDestruction boolean
local ATerraVolume = {}



---@class ATickOnlyInEditorActor : AActor
local ATickOnlyInEditorActor = {}


---@class FPrefabVariantRule
---@field Scope FName
---@field Rule FString
---@field RuleType EPrefabVariantRuleType
---@field bEnable boolean
local FPrefabVariantRule = {}



---@class UPrefabAsset : UObject
---@field AssetReferences TMap<FString, FSoftObjectPath>
---@field GeneratedBlueprintAssetReference FSoftObjectPath
---@field PrefabId FGuid
---@field PrefabContent FString
---@field PrefabHash FString
---@field NumActors int32
---@field PrefabPivot FVector
---@field FoliagePrefab UGSCFoliagePrefab
local UPrefabAsset = {}



---@class UPrefabComponent : UPrimitiveComponent
---@field bConnected boolean
---@field bLockSelection boolean
---@field Prefab UPrefabAsset
---@field GeneratedBlueprint UBlueprint
---@field VariantRulesOverwrite TArray<FPrefabVariantRule>
---@field bTransient boolean
local UPrefabComponent = {}



---@class UPrefabExporter : UExporter
local UPrefabExporter = {}


---@class UPrefabFunctionLibrary : UBlueprintFunctionLibrary
local UPrefabFunctionLibrary = {}

---@param WorldContextObject UObject
---@param PrefabAsset UPrefabAsset
---@param SpawnTransform FTransform
---@param OutSpawnPrefabInstances TArray<AActor>
---@param bSpawnInstancesOnly boolean
---@param CollisionHandlingOverride ESpawnActorCollisionHandlingMethod
---@param Owner AActor
---@return APrefabActor
function UPrefabFunctionLibrary:SpawnPrefab(WorldContextObject, PrefabAsset, SpawnTransform, OutSpawnPrefabInstances, bSpawnInstancesOnly, CollisionHandlingOverride, Owner) end


---@class UPrefabLevelExporter : UPrefabExporter
local UPrefabLevelExporter = {}


---@class UPrefabObjectExporterT3D : UPrefabExporter
local UPrefabObjectExporterT3D = {}


---@class UPrefabToolSettings : UObject
---@field bReplaceActorsWithCreatedPrefab boolean
---@field bAutoIncludeAttachedActorsWhenCreateNewPrefab boolean
---@field bNestedPrefabSupport boolean
---@field bRestorePrefabActorCollapseStatusAfterPIE boolean
---@field bCollapseAllPrefabActorsAfterMapOpened boolean
---@field bMoveActorsInWorldAfterSetPrefabPivot boolean
---@field bDuplicateNoRevertWithOffset boolean
---@field NewPrefabNamePattern FString
---@field DuplicateLevelForPackagingPostfix FString
---@field bSaveCurrentLevelBeforeDuplicate boolean
---@field UITheme EPTUITheme
---@field bUpdateAllPrefabActorsWhenOpenMap boolean
---@field bCheckPrefabChangeBeforeUpdateAllPrefabActorsWhenOpenMap boolean
---@field bEnableRevertPrefabOnCellLoaded boolean
---@field bUpdateAllPrefabActorsWhenApply boolean
---@field bApplyToNestedPrefab boolean
---@field bEnableApplyFromDisconnectedPrefabActor boolean
---@field bTryQuickApplyFirstWhenApply boolean
---@field bAutoAddRemoveVariantActorPrefix boolean
---@field VariantActorPrefix FString
---@field bEnablePrefabComponentVisualizer boolean
---@field PrefabComponentVisualizerType EPrefabVisualizerType
---@field bDisplayPrefabComponentVisualizerEvenNotSelected boolean
---@field PrefabViewVisualizerColor FColor
---@field TargetActorColor FColor
---@field UnLockedConnectedColor FColor
---@field LockedConnectedColor FColor
---@field UnLockedDisConnectedColor FColor
---@field LockedDisConnectedColor FColor
---@field UnLockedNoPrefabAssignedColor FColor
---@field LockedNoPrefabAssignedColor FColor
---@field PrefabMaterialPath FSoftObjectPath
---@field bShadedPrefabViewVisualizer boolean
---@field bLockPrefabSelectionByDefault boolean
---@field bDisableLockPrefabSelectionFeature boolean
---@field bForceApplyPerInstanceVertexColor boolean
---@field bHideChildActorsInPIEIfHiddenInEditor boolean
---@field bCanToggleChildActorVisibilityInPIE boolean
---@field bIgnoreLayersInPrefab boolean
---@field bSaveDataLayersInPrefab boolean
---@field bSupportGenerateBlueprint boolean
---@field bHarvestComponentsWhenGeneratingBlueprint boolean
---@field bUseActorNameAsVariableNameWhenGeneratingBlueprint boolean
---@field bForceMobilityToMovableWhenGeneratingBlueprint boolean
---@field IgnoreActorClassesWhenGeneratingBlueprint TArray<TSubclassOf<AActor>>
---@field IgnoreActorTagsWhenGeneratingBlueprint TArray<FName>
---@field bFlashPrefabWindowForTargetPrefabActor boolean
---@field bEnablePrefabTextEditor boolean
---@field bDebugMode boolean
---@field bDisableThumbnailRender boolean
---@field bShowPrefabInstanceTagInPrefabToolWindow boolean
---@field bSkipActorReferenceReplacement boolean
---@field RealtimeThumbnailThreshold int32
---@field bShouldDoApplyAfterGroupActorOperations boolean
local UPrefabToolSettings = {}



---@class UPrefabVariantAsset : UPrefabAsset
---@field Parent UPrefabAsset
local UPrefabVariantAsset = {}



