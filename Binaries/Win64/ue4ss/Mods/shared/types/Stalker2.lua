---@meta

---@class AAchievementTrigger : AActor
---@field TriggerArea UBoxComponent
---@field AchievementSID FString
local AAchievementTrigger = {}

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AAchievementTrigger:OnBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AActorEyesCameraActor : ACameraActor
local AActorEyesCameraActor = {}


---@class AAgent : AObj
---@field PhysicsSoundsComponent UPhysicsSoundsComponent
---@field NPCComponent UNPCComponent
---@field PhysicsInteractionComponent UPhysicsInteractionComponent
---@field WoundedHoldComponent UWoundedHoldComponent
---@field TouchComponent UTouchComponent
---@field MotionWarpingComponent UMotionWarpingComponent
---@field AITickComponent UAITickComponent
---@field PhysicsControlComponent UPhysicsControlComponent
---@field LODSyncComponent ULODSyncComponent
---@field DataLayerPhysicsComponent UDataLayerPhysicsComponent
---@field DeadBodyComponent UDeadBody
---@field DamageInteractVFXData FDamageInteractVFXData
---@field AttachDamageInteractVFXBoneName FName
---@field CutsceneLookAtActor AActor
---@field CutsceneEyesLookAtWeight float
---@field CutsceneHeadLookAtWeight float
---@field CutsceneBlinkProfile ECutsceneBlinkProfile
---@field CutsceneEyesIdleProfile ECutsceneEyesIdleProfile
---@field CutsceneProceduralEyesWeight float
---@field CutsceneProceduralEyesAmplitude float
---@field CutsceneProceduralEyesIntensity float
---@field GuaranteedRelevancyUpdateTime float
---@field RagdollProfileName FName
---@field RagdollSelfCollisionProfileName FName
---@field RagdollBonesToOverlap TArray<FName>
---@field StandInConfig UStandInWithVATAnimationConfig
---@field SpawnInvisibilityWarmupAttachments TSet<TWeakObjectPtr<USceneComponent>>
local AAgent = {}

---@param Value float
function AAgent:SetCutsceneProceduralEyesWeight(Value) end
---@param Value float
function AAgent:SetCutsceneProceduralEyesIntensity(Value) end
---@param Value float
function AAgent:SetCutsceneProceduralEyesAmplitude(Value) end
---@param Value AActor
function AAgent:SetCutsceneLookAtActor(Value) end
---@param Weight float
function AAgent:SetCutsceneHeadLookAtWeight(Weight) end
---@param Weight float
function AAgent:SetCutsceneEyesLookAtWeight(Weight) end
---@param NewCutsceneEyesIdleProfile ECutsceneEyesIdleProfile
function AAgent:SetCutsceneEyesIdleProfile(NewCutsceneEyesIdleProfile) end
---@param NewCutsceneBlinkProfile ECutsceneBlinkProfile
function AAgent:SetCutsceneBlinkProfile(NewCutsceneBlinkProfile) end
---@param InteractActor AObj
function AAgent:PsyNPCInteractionStarted(InteractActor) end
---@return ESpawnSource
function AAgent:GetSpawnSource() end
---@param ParticleSystem UNiagaraComponent
function AAgent:DestroyDamageInteractParticle(ParticleSystem) end
function AAgent:Blink() end


---@class AAnomaly : AUIDActor_Anomaly
---@field AnomalyAkComponent UAkComponent
---@field SoundEvent UAkAudioEvent
---@field DieSound UAkAudioEvent
---@field IdleSwitch UAkSwitchValue
---@field FadeSwitch UAkSwitchValue
---@field ActiveSwitch UAkSwitchValue
---@field TriggerSwitch UAkSwitchValue
---@field FirstPersonSwitch UAkSwitchValue
---@field ThirdPersonSwitch UAkSwitchValue
---@field SpaceRestrictorComponent UGSCNavModifierComponent
---@field SpaceRestrictorShape UBoxComponent
---@field WaterContactController UWaterContactController
local AAnomaly = {}

function AAnomaly:OnRechargeStateStarted() end
---@param FinishedNiagara UNiagaraComponent
function AAnomaly:OnNiagaraFinished(FinishedNiagara) end
function AAnomaly:OnIdleStateStarted() end
---@param CallbackType EAkCallbackType
---@param CallbackInfo UAkCallbackInfo
function AAnomaly:OnDieSoundFinished(CallbackType, CallbackInfo) end
function AAnomaly:OnActiveStateStarted() end
function AAnomaly:OnActivationStateStarted() end
function AAnomaly:ForceDeactivate() end
function AAnomaly:ForceActivateOnce() end
function AAnomaly:ForceActivateEndless() end


---@class AAnomalyModelSpawner : AActor
---@field SceneComponent USceneComponent
---@field PrototypeSID FPrototypeSID
---@field bSpawnOnBeginPlay boolean
local AAnomalyModelSpawner = {}



---@class AArtifact : AUIDActor_ItemContainer
---@field SphereComponent USphereComponent
---@field StrafeParticle UNiagaraComponent
---@field ArtifactInteractableComponent UArtifactInteractableComponent
---@field PhysicsInteractionComponent UPhysicsInteractionComponent
---@field PhysicsSoundsComponent UPhysicsSoundsComponent
---@field bDetectorRequired boolean
---@field ChargingEvent UAkAudioEvent
---@field JumpEvent UAkAudioEvent
---@field Sound UAkAudioEvent
---@field SoundStop UAkAudioEvent
---@field SoundStateTransitionOnHide UAkAudioEvent
---@field SoundStateTransitionOnShow UAkAudioEvent
---@field ArtifactTypeSwitchValue UAkSwitchValue
---@field ParticleOnShow UFXSystemAsset
---@field FakeArtifactDistortionSound UAkAudioEvent
---@field FakeArtifactDistortionVFX UFXSystemAsset
---@field FakeArtifactDissolveSound UAkAudioEvent
---@field FakeArtifactDissolveVFX UFXSystemAsset
---@field DataLayerPhysicsComponent UDataLayerPhysicsComponent
---@field ParticleStateTransitionFadeIn UNiagaraSystem
---@field ParticleStateTransitionFadeOut UNiagaraSystem
---@field ParticleOnImpact UNiagaraSystem
---@field FakeArtifactHaloVFX UFXSystemAsset
---@field ActiveParticleOnShow UFXSystemComponent
---@field FakeParticleHalo UFXSystemComponent
local AArtifact = {}



---@class ABedView : AUIDActor_Bed
---@field Guid FGuid
---@field SleepComponent UBedHoldComponent
---@field HappyHoursSID FPrototypeSID
---@field BedMeshComponent UStaticMeshComponent
---@field bIgnoreSleepinessValue boolean
---@field bIgnoreEmission boolean
local ABedView = {}

---@param bInteractive boolean
function ABedView:SetInteractiveState(bInteractive) end
function ABedView:OnSleepStarted() end
function ABedView:OnSleepEnded() end
function ABedView:Interact() end


---@class ABloodsucker : AAgent
---@field InvisibilityTransferParticles UNiagaraComponent
local ABloodsucker = {}



---@class ABolt : AActor
---@field HittableComponent UHittableComponent
---@field PhysicsInteractionComponent UPhysicsInteractionComponent
---@field PhysicsSoundsComponent UPhysicsSoundsComponent
---@field BoltComponent UStaticMeshComponent
---@field PrototypeID FString
local ABolt = {}

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ABolt:OnComponentHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end


---@class ABookmarkVolume : AVolume
---@field LocationName FName
local ABookmarkVolume = {}



---@class ABulbAnomaly : AActor
---@field PullSound UAkAudioEvent
---@field ReleaseSound UAkAudioEvent
---@field IdleSound UAkAudioEvent
---@field SphereComponent USphereComponent
---@field VehicleSoundLocations TArray<UVehicleSoundPlacement>
---@field DamageCurve UCurveFloat
---@field GravityCurve UCurveFloat
---@field AnomalySequence ULevelSequence
---@field SequencePlaybackSettings FMovieSceneSequencePlaybackSettings
---@field LevelSequenceActor ALevelSequenceActor
---@field EnvironmentMPC UMaterialParameterCollection
---@field FoliageParameterName FName
---@field InteractionEffectsSIDs TArray<FString>
---@field EnduranceDamagePerSecond float
---@field GravityPower float
---@field GravityFree float
---@field CoveredMultiplier float
---@field UncoveredMultiplier float
---@field CoverTraceDistance float
---@field CarsTag FName
---@field Duration float
---@field Cooldown float
local ABulbAnomaly = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ABulbAnomaly:OnEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABulbAnomaly:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class ACarouselAnomaly : AAnomaly
---@field CollisionMeshPtr UStaticMeshComponent
---@field IdleParticle UNiagaraComponent
---@field ActivateParticle UNiagaraComponent
---@field InteractionParticle UFXSystemAsset
---@field ActionDamagePlayerParticle UFXSystemAsset
---@field ActionDamageNPCParticle UFXSystemAsset
---@field WaterContactParticle UFXSystemAsset
---@field BodyExplodeParticle TSoftObjectPtr<UNiagaraSystem>
---@field BodyExplodeStashSID FPrototypeSID
---@field InteractionSoundEvent TSoftObjectPtr<UAkAudioEvent>
local ACarouselAnomaly = {}



---@class AChemicalAnomaly : AAnomaly
---@field CollisionMeshPtr UStaticMeshComponent
---@field SplashImpact UFXSystemAsset
---@field GrenadeExplosion UFXSystemAsset
local AChemicalAnomaly = {}

function AChemicalAnomaly:OnDecalSpawn() end


---@class AClassicFireAnomaly : AAnomaly
---@field CollisionMeshPtr UStaticMeshComponent
---@field FlamePillarCapsule UCapsuleComponent
---@field IdleVFX UNiagaraComponent
---@field DecalComponent UDecalComponent
---@field SourceOfDeath ECauseOfDeath
local AClassicFireAnomaly = {}

function AClassicFireAnomaly:OnStateChanged() end


---@class AClickerAnomaly : AAnomaly
---@field RootComponentPtr UStaticMeshComponent
---@field CollisionMeshPtr UStaticMeshComponent
---@field ChargeParticle UNiagaraSystem
---@field ExplosionParticle UNiagaraSystem
---@field ChargeSoundEvent UAkAudioEvent
---@field ExplosionSoundEvent UAkAudioEvent
---@field DamageCurve UCurveFloat
local AClickerAnomaly = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AClickerAnomaly:OnBeginParticleOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class ACodelock : AInteractableObject
---@field Mesh USkeletalMeshComponent
---@field InteractComponent UCodelockSingleClickComponent
---@field CodeComponent UCodeComponent
---@field CodeLockDistance float
---@field CodeLockZoomInTime float
---@field CodeLockZoomOutTime float
---@field CodeLockForceZoomOutTime float
---@field FailDisplayTimerRate float
---@field bOverrideKeyMap boolean
---@field KeyMap TMap<FName, ECodelockKeyType>
local ACodelock = {}

function ACodelock:OnKeyPressed() end
function ACodelock:OnInputCodePassed() end
function ACodelock:OnInputCodeFailed() end


---@class ACollar : AActor
---@field CollarSID FString
---@field HissingComp UAkComponent
---@field CollarSK USkeletalMeshComponent
local ACollar = {}



---@class ACombatMusicOverrideVolume : AVolume
---@field CombatTracks TArray<TSoftObjectPtr<UAkSwitchValue>>
local ACombatMusicOverrideVolume = {}



---@class AContextualAction : AUIDActor_ContextualAction
local AContextualAction = {}


---@class AContextualNavLinkProxy : ANavLinkProxy
local AContextualNavLinkProxy = {}

---@param MovingActor AActor
---@param DestinationPoint FVector
function AContextualNavLinkProxy:OnStartUsingCustomLink(MovingActor, DestinationPoint) end


---@class ACooldownZone : AGSCNavModifierVolume
---@field RestrictionArea TSubclassOf<UNavArea>
---@field CooldownTime float
local ACooldownZone = {}



---@class ACooldownZonesController : AActor
---@field ControllerVolume UBoxComponent
---@field CooldownZones TArray<TSoftObjectPtr<ACooldownZone>>
local ACooldownZonesController = {}



---@class ACoverGenerator : AActor
---@field DebugRenderingComp USmartCoverRenderingComponent
local ACoverGenerator = {}



---@class ACoversStorageDataChunkActor : AActor
---@field NavMeshChunkBounds FBox
---@field CoverStorageArray TArray<FCoverStorageImplementation>
local ACoversStorageDataChunkActor = {}



---@class ADestructibleObject : AUIDActor_DestructibleObject
---@field PhysicsInteractionComponent UPhysicsInteractionComponent
---@field PhysicsSoundsComponent UPhysicsSoundsComponent
---@field StaticMeshComponent UStaticMeshComponent
---@field ExplosionComponent UExplosionComponent
---@field HittableComponent UHittableComponent
---@field DataLayerPhysicsComponent UDataLayerPhysicsComponent
---@field NeededLayers TMap<FName, EDataLayerRuntimeState>
local ADestructibleObject = {}

function ADestructibleObject:TryAdjustPosition() end
function ADestructibleObject:StartDestructActions() end
---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ADestructibleObject:OnHit(SelfActor, OtherActor, NormalImpulse, Hit) end
---@param DataLayer UDataLayerInstance
---@param State EDataLayerRuntimeState
function ADestructibleObject:OnDataLayersUpdated(DataLayer, State) end
---@param HitResult FHitResult
function ADestructibleObject:GSCFramework_OnPreTransition(HitResult) end
function ADestructibleObject:GSCFramework_OnPostTransition() end
---@return TArray<FObjectPhaseSettings>
function ADestructibleObject:GSCFramework_GetObjectPhases() end
---@return FObjectPhaseSettings
function ADestructibleObject:GSCFramework_GetCurrentPhase() end
---@return int32
function ADestructibleObject:GetCurrentPhaseIndex() end


---@class ADestructibleWindow : AActor
---@field Guid FGuid
---@field WindowMesh UStaticMeshComponent
---@field HittableComponent UHittableComponent
---@field DestructionFX TSoftObjectPtr<UNiagaraSystem>
---@field DestructSound TSoftObjectPtr<UAkAudioEvent>
local ADestructibleWindow = {}



---@class ADeveloperSpectator : ACharacter
---@field BaseTurnRate float
---@field BaseLookUpRate float
---@field SpeedMultiplier float
---@field CameraComponent UCameraComponent
local ADeveloperSpectator = {}



---@class ADialogProtector : AActor
---@field SpaceRestrictor UGSCNavModifierComponent
---@field SpaceRestrictorShape UBoxComponent
local ADialogProtector = {}



---@class ADiamondAnomaly : AAnomaly
---@field CollisionMesh UStaticMeshComponent
local ADiamondAnomaly = {}



---@class ADoorView : AUIDActor_Door
---@field Guid FGuid
---@field OpenDoorSingleClick USingleClickComponent
---@field CloseDoorSingleClick USingleClickComponent
---@field LockedSingleClick USingleClickComponent
---@field PeekDoorHold UHoldComponent
---@field ClosePeekDoorHold UHoldComponent
---@field DoorAkComponents TArray<UAkComponent>
---@field ViewRebuildMap TArray<FRebuildData>
---@field OverrideInteractHintLocation FVector
---@field bIsHubDoor boolean
---@field bIsLocked boolean
---@field bIsDoubleDoor boolean
---@field OpenAngleThreshold float
---@field OpenAngle float
---@field DecreaseImpulseAfterOpenTime float
---@field OpenAngularSpeed float
---@field CloseAngularSpeed float
---@field AngularSpeedNormalizer float
---@field DoorCloseTime float
---@field SilentOpenAngle float
---@field SilentOpenAngularSpeed float
---@field FirstLeafAngleOnStart float
---@field SecondLeafAngleOnStart float
---@field KnockOutAngularSpeed float
---@field AutomaticDoorCloseTimeout float
---@field CloseDoorSpeedMultiplier float
---@field DoorConstraintSFXCooldown float
---@field NumberOfDoorHinges int32
---@field DefaultRoot USceneComponent
---@field FrameMeshComponent UStaticMeshComponent
---@field FirstLeafMeshComponent UStaticMeshComponent
---@field SecondLeafMeshComponent UStaticMeshComponent
---@field FirstLeafPhysicsConstraintComponent UPhysicsConstraintComponent
---@field SecondLeafPhysicsConstraintComponent UPhysicsConstraintComponent
---@field HittableComponent UHittableComponent
---@field SpaceRestrictorComponent UGSCNavModifierComponent
---@field BlockVolume UBoxComponent
---@field InvertDoorStateReceiver USignalReceiverComponent
---@field InvertDoorLockReceiver USignalReceiverComponent
---@field OpenDoorReceiver USignalReceiverComponent
---@field CloseDoorReceiver USignalReceiverComponent
---@field LockDoorReceiver USignalReceiverComponent
---@field UnlockDoorReceiver USignalReceiverComponent
---@field PeekDoorReceiver USignalReceiverComponent
---@field ForceOpenDoorReceiver USignalReceiverComponent
---@field ForceCloseDoorReceiver USignalReceiverComponent
---@field OpenDoorSender USignalSenderComponent
---@field CloseDoorSender USignalSenderComponent
---@field LockDoorSender USignalSenderComponent
---@field UnlockDoorSender USignalSenderComponent
---@field ForceOpenDoorSender USignalSenderComponent
---@field ForceCloseDoorSender USignalSenderComponent
---@field PeekDoorSender USignalSenderComponent
---@field ItemUsageComponent UItemUsageComponent
---@field FirstLeafAkComponent UAkComponent
---@field SecondLeafAkComponent UAkComponent
---@field DoorMovementSFX TSoftObjectPtr<UAkAudioEvent>
---@field DoorConstraintSFX TSoftObjectPtr<UAkAudioEvent>
---@field DoorOpenSFX TSoftObjectPtr<UAkAudioEvent>
---@field DoorCloseSFX TSoftObjectPtr<UAkAudioEvent>
---@field UnlockDoorSFX TSoftObjectPtr<UAkAudioEvent>
---@field LockedDoorSFX TSoftObjectPtr<UAkAudioEvent>
---@field SilentDoorOpenSFX TSoftObjectPtr<UAkAudioEvent>
---@field KnockDoorOpenSFX TSoftObjectPtr<UAkAudioEvent>
---@field DoorMovementRTPC TSoftObjectPtr<UAkRtpc>
local ADoorView = {}

function ADoorView:UnlockDoor() end
function ADoorView:SetUnlocked() end
function ADoorView:SetPreopened() end
function ADoorView:SetOpen() end
function ADoorView:SetLocked() end
---@param bValue boolean
function ADoorView:SetDoubleDoor(bValue) end
function ADoorView:SetClosed() end
function ADoorView:RebuildDoorView() end
function ADoorView:PlayLockedDoorSound() end
function ADoorView:PeekDoor() end
function ADoorView:PeekCloseDoor() end
function ADoorView:OpenDoor() end
function ADoorView:OnDoorClosedCompletely() end
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ADoorView:OnComponentHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end
function ADoorView:LockDoor() end
---@return boolean
function ADoorView:IsLocked() end
function ADoorView:InvertDoorState() end
function ADoorView:InvertDoorLock() end
function ADoorView:ForceOpenDoor() end
function ADoorView:ForceCloseDoor() end
---@param bCloseFast boolean
function ADoorView:CloseDoor(bCloseFast) end
function ADoorView:ActualizeNavigationProperties() end


---@class ADynamicEnvironmentParticleActor : AActor
---@field EnvironmentParticleComponent UDynamicEnvironmentNiagaraComponent
local ADynamicEnvironmentParticleActor = {}



---@class AEditorItemContainer : AActor
---@field ConfigSID FString
---@field BaseItemContainerPrototypeSID FString
---@field MeshPath FString
---@field SimpleItems TArray<FSpawnedItem>
---@field ItemContainerType EMeshSubType
local AEditorItemContainer = {}



---@class AEditorTools : AActor
---@field bEmptyGroupsOutputToMessageLog boolean
---@field bEmptyGroupsOutputToConsole boolean
---@field bRemoveEmptyGroupActors boolean
---@field ZeroBoundsFilter EZeroBoundsFilter
---@field bZeroBoundsOutputToConsole boolean
---@field bZeroBoundsOutputToMessageLog boolean
---@field bBigClustersOutputToConsole boolean
---@field bBigClustersOutputToMessageLog boolean
---@field bBigClustersExcludeEmptyGroupActors boolean
---@field GridNameForDebug FName
local AEditorTools = {}

function AEditorTools:XVerifyAllActorsForBrokenReference() end
function AEditorTools:XRemoveRestoredLabelFromActors() end
function AEditorTools:UpdateVoiceSounds() end
function AEditorTools:RemoveEditorContainers() end
---@param GameWorld UWorld
---@return boolean
function AEditorTools:IsGameWorld(GameWorld) end
---@param ActorToCheck AActor
---@return boolean
function AEditorTools:IsActorInGameWorld(ActorToCheck) end
---@return float
function AEditorTools:GetSkyLightUpdateDeltaTime() end
function AEditorTools:FixAttachMeshes() end
function AEditorTools:CheckAllPrototypes() end
function AEditorTools:ChangeNotesToTeleportPoints() end


---@class AEjectedMagazine : AActor
---@field MeshComponent UStaticMeshComponent
---@field PhysicsSoundsComponent UPhysicsSoundsComponent
---@field HittableComponent UHittableComponent
---@field OwnerActor TWeakObjectPtr<AActor>
local AEjectedMagazine = {}

---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function AEjectedMagazine:OnHit(HitComp, OtherActor, OtherComp, NormalImpulse, Hit) end


---@class AElectroAnomaly : AAnomaly
---@field RootComponentPtr UStaticMeshComponent
---@field CollisionMeshPtr UStaticMeshComponent
local AElectroAnomaly = {}

---@return float
function AElectroAnomaly:GetRadius() end
---@return FVector
function AElectroAnomaly:GetParticleSpawnLocation() end
---@return FElectroAnomalyBakedDataFloat
function AElectroAnomaly:GetElectroBakedData() end
---@param bNewActive boolean
function AElectroAnomaly:BPSetActiveIdleVFX(bNewActive) end
function AElectroAnomaly:BPDoLightningStrikeAfterPauseTime() end


---@class AEmptyObject : AActor
---@field SceneComponent USceneComponent
---@field BoxCollision UBoxComponent
---@field StaticMesh UStaticMeshComponent
local AEmptyObject = {}



---@class AEncounterNPCSpawner : AActor
---@field AllNPCKilledSender USignalSenderComponent
---@field SpawnPoints TArray<FEncounterSpawnPointData>
---@field PlayerFieldOfViewAngle float
---@field SpawnDelay FFloatInterval
---@field NPCTotalCount int32
---@field NPCMaxCount int32
---@field NPCMinCount int32
---@field SpawnSource ESpawnSource
---@field bAllowNightVisionForQuestNPC boolean
---@field CombatTacticsOverride ECombatTactics
local AEncounterNPCSpawner = {}

function AEncounterNPCSpawner:OnAllNPCKilled() end
function AEncounterNPCSpawner:Enable() end
function AEncounterNPCSpawner:Disable() end
function AEncounterNPCSpawner:Despawn() end


---@class AExpulsionAnomaly : AAnomaly
---@field ActivationSphere USphereComponent
---@field ShapeGeometryCache UGeometryCacheComponent
---@field ShapeGeometryMaterial UMaterialInterface
---@field GeometryCachePath FSoftObjectPath
---@field PushDistanceDelayCurve UCurveFloat
local AExpulsionAnomaly = {}

---@param LocalPoint FVector
function AExpulsionAnomaly:OnBoltCollided(LocalPoint) end


---@class AFaustBossfightController : AActor
---@field ControllerVolume USphereComponent
---@field CloneSpawnEffect UNiagaraSystem
---@field CloneKilledSender USignalSenderComponent
---@field CloneSpawnPoints TArray<FTransform>
---@field ClonePrototypes TArray<FObjPrototypeSID>
---@field BossPrototype FObjPrototypeSID
---@field PlayerFieldOfViewAngle float
---@field MinSpawnDistance float
local AFaustBossfightController = {}

function AFaustBossfightController:TryTeleportBossToHiddenLocation() end
---@param bEnabled boolean
function AFaustBossfightController:SetCloneSpawnEnabled(bEnabled) end
---@param CloneActor AActor
function AFaustBossfightController:OnCloneSwitch(CloneActor) end
---@param CloneActor AActor
function AFaustBossfightController:OnCloneSpawned(CloneActor) end
---@param CloneActor AActor
function AFaustBossfightController:OnCloneKilled(CloneActor) end


---@class AFaustInductor : AActor
---@field DamageThreshold float
---@field bCalculateDamageWithArmor boolean
---@field ArmorData FObjectArmorData
---@field NumberOfInductorPhases int32
---@field InductorCooldownTime float
---@field AccumulatedDamage float
local AFaustInductor = {}

function AFaustInductor:OnInvulnerableHit() end
function AFaustInductor:OnInductorEnabled() end
function AFaustInductor:OnInductorDisabled() end
function AFaustInductor:OnInductorCooldown() end
function AFaustInductor:OnDamageDealt() end
---@param LastDamageDealerUID FUID
---@param bProjectileFlownThroughObject boolean
function AFaustInductor:OnDamageAccumulated(LastDamageDealerUID, bProjectileFlownThroughObject) end


---@class AFireBreathArchiAnomaly : AUIDActor_FireBreathAnomaly
---@field ScalableRoot UStaticMeshComponent
---@field CollisionMesh UStaticMeshComponent
---@field MinRadius float
---@field MaxRadius float
---@field MinHeight float
---@field MaxHeight float
---@field EffectPrototypeSID FPrototypeSID
---@field Guid FGuid
local AFireBreathArchiAnomaly = {}

---@param InTimeAlpha float
function AFireBreathArchiAnomaly:SetTimeAlpha(InTimeAlpha) end
---@param InScaleAlpha float
function AFireBreathArchiAnomaly:SetScaleAlpha(InScaleAlpha) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFireBreathArchiAnomaly:OnEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AFireBreathArchiAnomaly:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@return float
function AFireBreathArchiAnomaly:GetTimeAlpha() end
---@return float
function AFireBreathArchiAnomaly:GetScaleAlpha() end


---@class AFlycatcherAnomaly : AAnomaly
---@field OverlapSphereComponent USphereComponent
---@field VFXEffectSphere UStaticMeshComponent
---@field FlycatcherAuxBus UAkAuxBus
---@field FlycatcherAuxComponent UAkLateReverbComponent
---@field InfluenceLevelRTPC UAkRtpc
---@field DefaultStateValue UAkStateValue
---@field FlycatcherStateValue UAkStateValue
local AFlycatcherAnomaly = {}



---@class AFogActor : AActor
---@field FogMesh UStaticMeshComponent
---@field FogPresets TArray<FFogParams>
---@field DensityParamName FName
---@field HeightMinParamName FName
---@field HeightMaxParamName FName
---@field DynamicMaterial UMaterialInstanceDynamic
local AFogActor = {}

---@return FFogParams
function AFogActor:GetFogParamsForCurrentWeather() end


---@class AGSCAIController : AAIController
local AGSCAIController = {}


---@class AGSCAudioVolume : AAkSpatialAudioVolume
---@field BakedReflection UAudioRoomBakedReflectionComponent
---@field Bandwidth UAudioRoomBandwidthComponent
---@field FadeTransitionDuration int32
---@field FadeCurveType EAkCurveInterpolation
---@field bEnableCrowdedAmbient boolean
---@field CrowdedAmbientAudioEvent UAkAudioEvent
---@field AudioRoomPresetBase EAudioRoomPresetBase
---@field AudioRoomPresetBandwidth EAudioRoomPresetBandwidth
---@field AudioVolumeCollisionChannel ECollisionChannel
---@field InfoTextRenderComponent UTextRenderComponent
---@field BlendRadius float
---@field BlendWeight float
---@field Priority float
---@field PostProcessPreset UPostProcessPreset
---@field PostProcessSnapDistance float
local AGSCAudioVolume = {}



---@class AGSCDebugDrawer : AActor
---@field DrawComponent UDrawGSCDebug
local AGSCDebugDrawer = {}



---@class AGSCNavData : ARecastNavMesh
local AGSCNavData = {}


---@class AGSCNavModifierVolume : ANavModifierVolume
---@field GuidComponent UGuidActorComponent
---@field bIsActive boolean
local AGSCNavModifierVolume = {}



---@class AGameGraphData : AActor
---@field VertexContextualActions TMap<uint32, FGameGraphContextualActions>
---@field ContextualActionsVerticesInfo TMap<FGuid, FContextualActionsGameGraphInfo>
---@field DebugRenderingComp UGameGraphRenderingComponent
local AGameGraphData = {}



---@class AGaussDisplay : AActor
---@field DischargeAnimationTime float
---@field ChargeAnimationTime float
---@field ReloadVFX UNiagaraSystem
---@field ReloadVFXComponent UNiagaraComponent
---@field OpticScopeComponent TWeakObjectPtr<UPlayerOpticScopeComponent>
local AGaussDisplay = {}



---@class AGrenade : AUIDActor_Grenade
---@field ExplosionComponent UGrenadeExplosionComponent
---@field ExplosionAudioComponent UAkComponent
---@field StaticMeshComponent UStaticMeshComponent
---@field HittableComponent UHittableComponent
---@field PhysicsInteractionComponent UPhysicsInteractionComponent
---@field PhysicsSoundsComponent UPhysicsSoundsComponent
---@field WaterContactController UWaterContactController
---@field SID FString
---@field TimeToExplosion float
---@field ExplosionDecalMaterial UMaterialInterface
local AGrenade = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function AGrenade:OnHit(SelfActor, OtherActor, NormalImpulse, Hit) end
function AGrenade:Explode() end


---@class AInitLevelGameMode : AStalker2BaseGameMode
---@field InitScreensViewControllerClass TSubclassOf<UInitScreensViewController>
---@field InitScreenViewClass TSubclassOf<UInitScreensView>
---@field InitScreensViewController UInitScreensViewController
---@field InitScreenView UInitScreensView
local AInitLevelGameMode = {}

function AInitLevelGameMode:FinishInitialization() end


---@class AInteractableItemContainer : AUIDActor_ItemContainer
---@field PhysicsSoundsComponent UPhysicsSoundsComponent
---@field PhysicsInteractionComponent UPhysicsInteractionComponent
---@field HittableComponent UHittableComponent
---@field LaserSightComponent ULaserSightComponent
---@field DataLayerPhysicsComponent UDataLayerPhysicsComponent
---@field InteractionComponent UItemContainerInteractionComponent
---@field WeaponAttachesData FWeaponAttachMeshesData
local AInteractableItemContainer = {}

---@param bPause boolean
function AInteractableItemContainer:PauseSkeletalComponents(bPause) end
---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function AInteractableItemContainer:OnHit(SelfActor, OtherActor, NormalImpulse, Hit) end


---@class AInteractableMonitorSection : AInteractableObject
---@field MonitorMesh UStaticMeshComponent
---@field ActivationSignalReceiver USignalReceiverComponent
---@field DeactivationSignalReceiver USignalReceiverComponent
---@field DestructionSignalReceiver USignalReceiverComponent
---@field DestructionVFX UNiagaraSystem
local AInteractableMonitorSection = {}

---@param InObject UObject
function AInteractableMonitorSection:OnDestructionSignalReceived(InObject) end
---@param InObject UObject
function AInteractableMonitorSection:OnDeactivationSignalReceived(InObject) end
---@param InObject UObject
function AInteractableMonitorSection:OnActivationSignalReceived(InObject) end


---@class AInteractableObject : AUIDActor_InteractableObject
---@field bEnabled boolean
---@field bUnbreakable boolean
---@field bBroken boolean
---@field bSelfSufficient boolean
---@field bPrerequisiteRequired boolean
---@field bInteractionActive boolean
---@field bFirstPlay boolean
---@field bIsManuallyRunningConstructionScript boolean
---@field Guid FGuid
---@field InteractPointComponent USceneComponent
local AInteractableObject = {}

---@return boolean
function AInteractableObject:Toggle() end
---@param bInUnbreakable boolean
function AInteractableObject:SetUnbreakable(bInUnbreakable) end
---@param bInSelfSufficient boolean
function AInteractableObject:SetSelfSufficient(bInSelfSufficient) end
---@param bInPrerequisiteRequired boolean
function AInteractableObject:SetPrerequisiteRequired(bInPrerequisiteRequired) end
---@param bInInteractionActive boolean
function AInteractableObject:SetInteractionActive(bInInteractionActive) end
---@param bInEnabled boolean
function AInteractableObject:SetEnabled(bInEnabled) end
---@param bInBroken boolean
function AInteractableObject:SetBroken(bInBroken) end
---@param bPause boolean
function AInteractableObject:PauseSkeletalComponent(bPause) end
function AInteractableObject:OnNightStart() end
function AInteractableObject:OnFirstPlay() end
function AInteractableObject:OnEmissionStart() end
function AInteractableObject:OnEmissionFinish() end
function AInteractableObject:OnDayStart() end
function AInteractableObject:OnAnimationEventTriggered() end
function AInteractableObject:ManuallyRunConstructionScript() end
---@return boolean
function AInteractableObject:IsUnbreakable() end
---@return boolean
function AInteractableObject:IsSelfSufficient() end
---@return boolean
function AInteractableObject:IsPrerequisiteRequired() end
---@return boolean
function AInteractableObject:IsInteractionActive() end
---@return boolean
function AInteractableObject:IsEnabled() end
---@return boolean
function AInteractableObject:IsBroken() end


---@class AInteractableStunVolume : AInteractableObject
---@field RootMesh UStaticMeshComponent
---@field CollisionMesh UStaticMeshComponent
---@field SpaceRestrictorComponent UGSCNavModifierComponent
---@field MonitorActivationSignalSender USignalSenderComponent
---@field ObjectActivationSignalSender USignalSenderComponent
---@field MonitorDeactivationSignalSender USignalSenderComponent
---@field ObjectDeactivationSignalSender USignalSenderComponent
---@field MonitorDestructionSignalSender USignalSenderComponent
---@field VolumeActivationSignalReceiver USignalReceiverComponent
---@field TargetPoints TArray<FVector>
---@field CollisionRadius float
---@field CollisionHeight float
---@field StunDuration float
---@field CooldownDuration float
local AInteractableStunVolume = {}

---@param InObject UObject
function AInteractableStunVolume:OnVolumeForceDeactivated(InObject) end
---@param InObject UObject
function AInteractableStunVolume:OnVolumeDeactivated(InObject) end
---@param InObject UObject
function AInteractableStunVolume:OnVolumeActivated(InObject) end
---@param InObject UObject
function AInteractableStunVolume:OnCooldownEnded(InObject) end
---@param InObject UObject
function AInteractableStunVolume:ActivateVolume(InObject) end


---@class AKeyframedTransformActor : AActor
---@field StaticMeshComponent UStaticMeshComponent
---@field KeyframedTransformComponent UKeyframedTransformComponent
local AKeyframedTransformActor = {}



---@class AKorshunovFightVolumeForEffects : AVolumeForEffects
---@field ActiveTime float
---@field VolumeSFX TSoftObjectPtr<UAkAudioEvent>
---@field VolumeVFX UNiagaraComponent
local AKorshunovFightVolumeForEffects = {}



---@class ALairNavModifierVolume : ASystemicNavModifierVolume
local ALairNavModifierVolume = {}


---@class ALavaLampAnomaly : AAnomaly
---@field CollisionPlayEvent UAkAudioEvent
---@field CollisionStopEvent UAkAudioEvent
---@field ClotEvent UAkAudioEvent
---@field ParticleLifetimeAfterCollision float
---@field ClotEventDelay float
---@field OverlapSphereComponent USphereComponent
---@field ActivationParticle UNiagaraComponent
---@field ClotDecalMaterial UMaterialInterface
local ALavaLampAnomaly = {}

---@param Location FVector
---@param NormalDirection FVector
---@param Radius float
function ALavaLampAnomaly:OnLavaStaticObjectCollision(Location, NormalDirection, Radius) end
---@param BasicParticleData FBasicParticleData
function ALavaLampAnomaly:OnLavaCollision(BasicParticleData) end
---@param FollowPosition FVector
function ALavaLampAnomaly:OnFollowPositionChanged(FollowPosition) end


---@class ALightningBallAnomaly : AAnomaly
---@field OverlapDamageComponent USphereComponent
---@field IdleParticle UNiagaraComponent
---@field ExplosionParticle UFXSystemAsset
---@field AnomalyEatingParticle UNiagaraSystem
---@field FeastAudioEvent UAkAudioEvent
---@field FeastIdleSwitch UAkSwitchValue
---@field FeastEndSwitch UAkSwitchValue
---@field AnomalyExplosionAudioEvent UAkAudioEvent
---@field AnomalyNavigationComponent ULightningBallNavigationComponent
local ALightningBallAnomaly = {}



---@class AMainMenuGameMode : AStalker2BaseGameMode
local AMainMenuGameMode = {}


---@class AMapCapture : ASceneCapture2D
---@field StartCaptureLocation FIntVector2
---@field EyeAdaptationTile FIntVector2
---@field DebugCaptureLocation FIntVector2
---@field CaptureConfig FCaptureConfig
---@field RenderTarget UTextureRenderTarget2D
local AMapCapture = {}



---@class AMapSetupParams : AActor
---@field bDisableLightingManager boolean
---@field bDisableReflectionManager boolean
local AMapSetupParams = {}



---@class AMistAnomaly : AUIDActor_MistAnomaly
---@field PlayerEffectSIDs TArray<FEffectPrototypeSID>
---@field WeatherSpeedFactor float
---@field Guid FGuid
---@field CapsuleComponent UCapsuleComponent
---@field SaveCapsuleComponent UCapsuleComponent
local AMistAnomaly = {}

---@param InbTeleportationEnabled boolean
function AMistAnomaly:SetTeleportationEnabled(InbTeleportationEnabled) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AMistAnomaly:OnSaveBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function AMistAnomaly:OnPlayerTeleport() end
function AMistAnomaly:OnPlayerExit() end
function AMistAnomaly:OnPlayerEnter() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AMistAnomaly:OnAnomalyEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AMistAnomaly:OnAnomalyBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AModelCharacter : ACharacter
local AModelCharacter = {}


---@class AMovementPathBuilderTestingActor : ANavigationTestingActor
---@field PathType EPathBuilderPathType
---@field MaxPathLength float
---@field Velocities TArray<FVelocityDebug>
---@field DesirableVelocitiesMask uint64
---@field bDetailedDrawing boolean
---@field bShowCircles boolean
---@field bShowKeyPoints boolean
---@field bShowPathSectors boolean
---@field bShowPathFilteredSectors boolean
---@field CircleRadius float
---@field RotationAngle float
---@field bClockwise boolean
---@field bSmoothPath boolean
---@field bCorridor boolean
---@field bShowNavmeshSegmentTest boolean
---@field RestrictionSettings FDebugRestrictionSettings
---@field ExpensiveActor AActor
---@field DrawPathIndex uint32
---@field bShowSampled boolean
---@field AdvancedPathfindingTime float
local AMovementPathBuilderTestingActor = {}



---@class AMusicVolume : AVolume
---@field MusicState EMusicState
---@field RegionSIDGlobalVariable FName
---@field AmbientStateMusicSwitch TSoftObjectPtr<UAkSwitchValue>
local AMusicVolume = {}



---@class ANavChunkDataLayers : AInfo
---@field DataLayerCombinationsRequiredByNavChunkDataLayers TMap<FName, FRequiredDataLayerCombinations>
local ANavChunkDataLayers = {}



---@class ANavDataLayerGroup : AInfo
---@field Name FString
---@field GroupDataLayers TArray<FActorDataLayer>
---@field Combinations TArray<UNavDataLayerCombination>
local ANavDataLayerGroup = {}



---@class ANavRebuildVolume : AVolume
local ANavRebuildVolume = {}


---@class AObj : AModelCharacter
---@field ItemAppearanceComponent UItemAppearanceComponent
---@field PhysicalAnimationComponents TArray<UPhysicalAnimationComponent>
---@field WetnessComponent UWetnessComponent
---@field MeleeSectorComponent US2TargetMeleeSectorComponent
---@field LaserSightComponent ULaserSightComponent
---@field HitBlockers TArray<FHitBlocker>
---@field MovementComponentExt UMovementComponentExt
---@field PhysicalAnimationComponent UPhysicalAnimationComponent
---@field WaterContactController UObjWaterContactController
---@field FallingDamageCurve UCurveVector
---@field FallingDamageSound UAkAudioEvent
---@field FallingDamageEasySoundSwitch UAkSwitchValue
---@field FallingDamageMediumSoundSwitch UAkSwitchValue
---@field FallingDamageHighSoundSwitch UAkSwitchValue
---@field CutsceneCollisionProfile FCollisionProfileName
---@field AkComponentRetargetTable UDataTable
---@field AttackComponent UAttackComponent
---@field FlashlightComponent UFlashlightComponent
---@field NightVisionComponent UNightVisionGogglesComponent
---@field AkAudioRootComponent UAkComponent
---@field AkAudioHeadComponent UAkComponent
---@field AkAudioPelvisComponent UAkComponent
---@field AkAudioLeftHandComponent UAkComponent
---@field AkAudioRightHandComponent UAkComponent
---@field AkAudioComponent UAkComponent
---@field ShootingParticle UNiagaraComponent
---@field PostShootingParticle UNiagaraComponent
local AObj = {}

---@param SynchronizationPoint AActor
---@param OverrideRotation FRotator
function AObj:StartCutsceneSequence(SynchronizationPoint, OverrideRotation) end
---@param bSuccess boolean
function AObj:OnObjTurnedToTarget__DelegateSignature(bSuccess) end
function AObj:OnHPChanged_Blueprint() end
---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function AObj:OnHit(SelfActor, OtherActor, NormalImpulse, Hit) end
---@return float
function AObj:GetMaxHP() end
---@return float
function AObj:GetHP() end
function AObj:EndCutsceneSequence() end


---@class AOldSchoolTrigger : AActor
---@field Trigger UBoxComponent
---@field DistanceToHinge float
---@field HalfAngleToHinge float
---@field Door ADoorView
local AOldSchoolTrigger = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AOldSchoolTrigger:OnTriggerEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param Comp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AOldSchoolTrigger:OnTriggerBeginOverlap(Comp, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class APC : AObj
---@field PlayerItemSounds TSoftObjectPtr<UPlayerItemsSounds>
---@field Mouth UMouthComponent
---@field DamageVoiceover UDamageVoiceoverComponent
---@field AimAssistComponent UAimAssistComponent
---@field AimProcessor UAimProcessorComponent
---@field ShadowMeshComponent USkeletalMeshComponent
---@field GeigerCounterComponent UGeigerCounterComponent
---@field PsyNoiseSFXComponent UPsyNoiseSFXComponent
---@field AnomalyDetectorComponent UAnomalyDetectorComponent
---@field PlayerOpticScopeComponent UPlayerOpticScopeComponent
---@field PlayerInteractionComponent UPlayerInteractionComponent
---@field StealthKillComponent UStealthKillComponent
---@field StealthKillTarget AActor
---@field SearchpointDetectorComponent USearchpointDetectorComponent
---@field GAComponent UGAPlayerComponent
---@field InteractionFromBluerint boolean
---@field MinObjectInteractImpulse double
---@field MaxObjectInteractImpulse double
---@field ObjectInteractDelay double
---@field MinSpeedToObjectResponse double
---@field NormalReapeatFPS float
---@field VelocityMultimplier float
---@field ObjectPenetrationToImpulseCurve UCurveFloat
---@field ObjectMassToImpulseCurve UCurveFloat
---@field ObjectMassToMaxImpulseCurve UCurveFloat
---@field ReduceDamageFromNPCCurve UCurveFloat
---@field AllowedMovementActions EPlayerMovementType
---@field PoppyFieldSleepinessParameter UAkRtpc
---@field EnergeticOveruseParameter UAkRtpc
local APC = {}

---@param bEnabled boolean
function APC:SetLegsIKEnabled(bEnabled) end
---@param Target UInteractionComponent
function APC:SetInteractionTarget(Target) end
function APC:PlayInteractionOutAnimation() end
function APC:PlayInteractionInAnimation() end
---@return UInteractionComponent
function APC:GetInteractionTarget() end


---@class APSYAnomaly : AAnomaly
---@field CollisionComponent USphereComponent
---@field PSYParticle UNiagaraComponent
local APSYAnomaly = {}



---@class APSYControllerAnomaly : APSYAnomaly
local APSYControllerAnomaly = {}


---@class APSYEmitterAnomaly : APSYAnomaly
local APSYEmitterAnomaly = {}


---@class APillowAnomaly : AAnomaly
---@field CollisionMesh UStaticMeshComponent
---@field IdleParticle UNiagaraComponent
---@field InteractParticle UNiagaraSystem
---@field BiomeParticles TMap<EPillowAnomalyBiomeType, TSoftObjectPtr<UNiagaraSystem>>
local APillowAnomaly = {}



---@class APlayerContextualAction : AActor
---@field SingleClickComponent USingleClickComponent
---@field CameraPitchMin float
---@field CameraPitchMax float
---@field CameraYawMin float
---@field CameraYawMax float
local APlayerContextualAction = {}

function APlayerContextualAction:ActionStart() end
function APlayerContextualAction:ActionEnd() end


---@class APlayerStash : AInteractableObject
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field InteractionComponent UAnimatedItemContainerInteractionComponent
local APlayerStash = {}



---@class APoltergeist : AAgent
---@field BodyParticles UNiagaraComponent
---@field BodyCollision USphereComponent
---@field DeathParticles UNiagaraComponent
---@field MeshSpawnOffset FVector
---@field DeathImpulseScaleMap TMap<EDamageType, float>
---@field DeathBodyVisibilityDelay float
local APoltergeist = {}



---@class APoppyField : AUIDActor_PoppyFieldAnomaly
local APoppyField = {}


---@class AProjectile : AActor
---@field CollisionComp USphereComponent
---@field FlybySound UAkAudioEvent
local AProjectile = {}

---@param Hit FHitResult
function AProjectile:OnOverlap(Hit) end


---@class AQuestVFXActor : AActor
---@field Guid FGuid
local AQuestVFXActor = {}



---@class ARadiationNavModifierVolume : ASystemicNavModifierVolume
---@field RadiationPreset ERadiationPreset
local ARadiationNavModifierVolume = {}



---@class ARatSwarm : AAgent
---@field RatUnitsAmount UAkRtpc
---@field LocomotionUnitsAmount UAkRtpc
---@field DiedUnitsAmount UAkRtpc
---@field RatVoice UAkAudioEvent
---@field RatLocomotionVoice UAkAudioEvent
---@field AlertState UAkSwitchValue
---@field AttackState UAkSwitchValue
---@field EatingState UAkSwitchValue
---@field IdleState UAkSwitchValue
---@field RatsMeshComponent UAISwarmComponent
local ARatSwarm = {}



---@class ARazorAnomaly : AAnomaly
---@field RootComponentPtr UStaticMeshComponent
---@field RazorIntensityRTPCPtr TSoftObjectPtr<UAkRtpc>
---@field CollisionMeshPtr UStaticMeshComponent
---@field DamageVFX UFXSystemAsset
---@field AIDamageVFX UFXSystemAsset
---@field ProjectileDestructionVFX UFXSystemAsset
---@field ThrowableDestructionVFX UFXSystemAsset
---@field RazorActiveVFX UNiagaraComponent
---@field RazorIntensityRTPC UAkRtpc
local ARazorAnomaly = {}



---@class AReferenceHolderBase : AActor
---@field ObjectsReferences TMap<FSoftObjectPath, UClass>
---@field AssetPath FSoftObjectPath
local AReferenceHolderBase = {}

function AReferenceHolderBase:ValidateGatheredReferences() end
function AReferenceHolderBase:UpdateObjectReferences() end
function AReferenceHolderBase:CheckAssetReferences() end
function AReferenceHolderBase:BinarizeConfigs() end


---@class ASafeZoneNavModifierVolume : ASystemicNavModifierVolume
local ASafeZoneNavModifierVolume = {}


---@class AScriptedNavModifierVolume : AGSCNavModifierVolume
---@field TargetNavArea TSubclassOf<UNavArea_Scripted>
local AScriptedNavModifierVolume = {}

function AScriptedNavModifierVolume:Deactivate() end
function AScriptedNavModifierVolume:Activate() end


---@class ASelectionVolumeBase : AActor
---@field CollisionComponent UShapeComponent
local ASelectionVolumeBase = {}



---@class ASelectionVolumeBox : ASelectionVolumeBase
local ASelectionVolumeBox = {}


---@class ASelectionVolumeSphere : ASelectionVolumeBase
local ASelectionVolumeSphere = {}


---@class AShelterNavModifierVolume : ASystemicNavModifierVolume
local AShelterNavModifierVolume = {}


---@class ASignalReceiverActor : AActor
local ASignalReceiverActor = {}


---@class ASimpleVolumeForEffects : AVolume
---@field EffectComponent UApplyEffectComponent
---@field bRemoveEffectOnEndOverlap boolean
local ASimpleVolumeForEffects = {}



---@class ASoapBubbleAnomaly : AAnomaly
---@field SoapBubbleDamage UAkAudioEvent
---@field SoapBubbleDestroy UAkAudioEvent
---@field SoapBubbleParticleDestroy UAkAudioEvent
---@field SoapBubbleParticleExplosion UFXSystemAsset
---@field SoapBubbleParticleMaterial UMaterialInterface
---@field SoapBubbleParticleMesh UStaticMesh
---@field SoapBubble UStaticMeshComponent
---@field SoapBubbleBoundSphere USphereComponent
---@field SoapBubbleExplosionParticle UNiagaraComponent
---@field InterpolationCurve UCurveFloat
local ASoapBubbleAnomaly = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ASoapBubbleAnomaly:OnActorCollided(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AStalker2BaseGameMode : AGameModeBase
local AStalker2BaseGameMode = {}


---@class AStalker2GameMode : AStalker2BaseGameMode
local AStalker2GameMode = {}


---@class AStalker2HUD : AHUD
local AStalker2HUD = {}


---@class AStalker2MoviePipelineGameMode : AStalker2GameMode
local AStalker2MoviePipelineGameMode = {}


---@class AStalker2PlayerController : APlayerController
---@field RelevanceFOVADD float
---@field GuaranteedRelevanceDistance float
local AStalker2PlayerController = {}



---@class AStalker2Spectator : ASpectatorPawn
local AStalker2Spectator = {}


---@class AStaticEnvironmentParticleActor : AActor
---@field EnvironmentParticleComponent UStaticEnvironmentNiagaraComponent
local AStaticEnvironmentParticleActor = {}



---@class AStaticMeshBatcher : AActor
---@field BatchedISM TArray<UInstancedStaticMeshComponent>
---@field StandInISM TArray<UInstancedStaticMeshComponent>
local AStaticMeshBatcher = {}



---@class AStrandGenerator : AActor
---@field Spline USplineComponent
---@field MeshData FSplinePointMeshData
---@field MeshOverrides TMap<int32, FSplinePointMeshData>
---@field bUseStartSeparator boolean
---@field bUseStopSeparator boolean
---@field bUseAutoAdjusting boolean
---@field bOnlyRightAngle boolean
local AStrandGenerator = {}

---@return FStrandFinalData
function AStrandGenerator:GetFinalStrandData() end


---@class AStreamingDistanceOverridingVolume : AVolume
---@field MainVolume AStreamingDistanceOverridingVolume
---@field OverrideLifeGridVisionRadiusPC EOverrideLifeGridVisionRadius
---@field OverrideLifeGridVisionRadiusXBox EOverrideLifeGridVisionRadius
---@field OverrideLifeGridVisionRadiusXBoxSeriesS EOverrideLifeGridVisionRadius
---@field OverrideLifeGridVisionRadiusPS5 EOverrideLifeGridVisionRadius
---@field OverrideLifeGridVisionRadiusPS5Pro EOverrideLifeGridVisionRadius
---@field OverridingStreamingGridsInfosPC TSet<FGridInfo>
---@field OverridingStreamingGridsInfosXBox TSet<FGridInfo>
---@field OverridingStreamingGridsInfosXBoxSeriesS TSet<FGridInfo>
---@field OverridingStreamingGridsInfosPS5 TSet<FGridInfo>
---@field OverridingStreamingGridsInfosPS5Pro TSet<FGridInfo>
---@field EnabledDataLayers TSet<FName>
---@field DisabledDataLayers TSet<FName>
---@field EnabledDynamicDataLayers TSet<FActorDataLayer>
---@field DisabledDynamicDataLayers TSet<FActorDataLayer>
---@field EntryTriggers TSet<AStreamingGatewayVolume>
---@field ExitTriggers TSet<AStreamingGatewayVolume>
---@field OverridingTime double
---@field VolumePriority int32
---@field OverridedDataLayerInstances TSet<UDataLayerInstance>
---@field FallbackStreamingBlockRestoreRate float
---@field OverridingDistantTreeCullDistanceScale float
---@field OverridingDistantBushesCullDistanceScale float
---@field OverridingDistantGrassCullDistanceScale float
local AStreamingDistanceOverridingVolume = {}

function AStreamingDistanceOverridingVolume:UpdateStreamingConfiguration() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AStreamingDistanceOverridingVolume:OnTriggerOverlapped(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AStreamingGatewayVolume : AVolume
local AStreamingGatewayVolume = {}


---@class AStrelokBossfightController : AActor
---@field ControllerVolume UBoxComponent
---@field SignalReceiverComponent USignalReceiverComponent
---@field AnomalySpawnNum int32
---@field AnomalySpawnDelay float
---@field AnomalyElementVFXMap TMap<EAnomalyElementType, UNiagaraSystem>
---@field AnomalySpawners TArray<TLazyObjectPtr<AActor>>
---@field AnomalyFieldsSIDs TSet<FString>
local AStrelokBossfightController = {}

function AStrelokBossfightController:SpawnAnomalyField() end


---@class ASystemicNavModifierVolume : AGSCNavModifierVolume
local ASystemicNavModifierVolume = {}


---@class ATacticalPathfindingTest : AActor
---@field CoversExploreDistance double
---@field ExposedLengthBias double
---@field ExposedLengthPower double
---@field ConcealedLengthBias double
---@field ConcealedLengthPower double
---@field bUseTacticalNavigation boolean
---@field TestingNavmesh ENavmeshType
---@field bUseSimplifiedCovers boolean
local ATacticalPathfindingTest = {}



---@class ATelekineticShield : AActor
---@field MeshComponent UStaticMeshComponent
---@field Particle UNiagaraComponent
---@field ShieldDestroyedParticle UNiagaraSystem
---@field HitImpactParticle UNiagaraSystem
---@field AkAudioComponent UAkComponent
---@field ShieldDestroyedSound UAkAudioEvent
---@field ShieldSpawnedSound UAkAudioEvent
---@field ShieldImpactSound UAkAudioEvent
---@field Health float
---@field MovementSpeed float
---@field DistanceFromOwner float
---@field OwnerHeightOffset float
---@field ParticleIntensityChangeSpeed float
---@field MaxLifetime float
---@field SpawnShiftFraction float
local ATelekineticShield = {}

function ATelekineticShield:OnShieldDestroyedBP() end
---@param HitArgs FCommonHitArgs
function ATelekineticShield:OnHitReceivedBP(HitArgs) end
---@param DeathVFXComponent UNiagaraComponent
function ATelekineticShield:OnDeathParticleFinished(DeathVFXComponent) end
---@return AObj
function ATelekineticShield:GetOwnerActor() end


---@class ATeleport : AActor
---@field DefaultRoot USceneComponent
---@field EnterPoint UBoxComponent
---@field TeleportVFX UNiagaraComponent
---@field TeleportActivationVFX UNiagaraComponent
---@field TeleportAudioComponent UAkComponent
---@field PreTeleportSignalSender USignalSenderComponent
---@field PostTeleportSignalSender USignalSenderComponent
---@field EnableTeleportationSignalSender USignalSenderComponent
---@field DisableTeleportationSignalSender USignalSenderComponent
---@field EnableTeleportationSignalReceiver USignalReceiverComponent
---@field DisableTeleportationSignalReceiver USignalReceiverComponent
---@field TeleportIdleEvent TSoftObjectPtr<UAkAudioEvent>
---@field TeleportInEvent TSoftObjectPtr<UAkAudioEvent>
---@field TeleportOutEvent TSoftObjectPtr<UAkAudioEvent>
---@field TeleportPrototypeSID FPrototypeSID
---@field EndPoint FTransform
---@field bSafeTeleport boolean
---@field bUseEndPointRotation boolean
---@field bTeleportEnabled boolean
---@field ActiveParticleDuration float
local ATeleport = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ATeleport:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function ATeleport:EnableTeleport() end
function ATeleport:DisableTeleport() end


---@class ATeleportPoint : AActor
---@field Name FString
---@field SpriteComponent UBillboardComponent
---@field ArrowComponent UArrowComponent
local ATeleportPoint = {}



---@class ATopazScanner : AInteractableObject
---@field SkeletalMesh USkeletalMeshComponent
---@field InvisibleScannerCollision UPrimitiveComponent
---@field SingleClickComponent UTopazSingleClickComponent
---@field ScannerComponent UTopazScannerComponent
---@field RewardItemSID FPrototypeSID
---@field bStationary boolean
---@field InactiveVFX FTopazScannerVFX
---@field ActiveVFX FTopazScannerVFX
---@field SievertsCenterValue float
---@field SievertsDeviation float
---@field SievertsChangeFrequency float
---@field bSuccessfulScanner boolean
local ATopazScanner = {}

---@param NewState ETopazScannerState
function ATopazScanner:OnStateChanged(NewState) end
---@return boolean
function ATopazScanner:IsStationary() end


---@class AToxicCloudAnomaly : AAnomaly
---@field CollisionMesh UStaticMeshComponent
---@field CloudParticle UNiagaraComponent
---@field ImpactParticle UNiagaraSystem
---@field HittableComponent UHittableComponent
---@field ToxicCloudSoundEvent UAkAudioEvent
---@field AppearSoundEvent UAkAudioEvent
---@field DisappearSoundEvent UAkAudioEvent
local AToxicCloudAnomaly = {}



---@class AUIDActorOwnsModel : AActor
local AUIDActorOwnsModel = {}


---@class AUIDActor_Anomaly : AActor
local AUIDActor_Anomaly = {}


---@class AUIDActor_Bed : AActor
local AUIDActor_Bed = {}


---@class AUIDActor_ContextualAction : AUIDActorOwnsModel
local AUIDActor_ContextualAction = {}


---@class AUIDActor_DestructibleObject : AActor
local AUIDActor_DestructibleObject = {}


---@class AUIDActor_Door : AActor
local AUIDActor_Door = {}


---@class AUIDActor_FireBreathAnomaly : AActor
local AUIDActor_FireBreathAnomaly = {}


---@class AUIDActor_Grenade : AUIDActorOwnsModel
local AUIDActor_Grenade = {}


---@class AUIDActor_InteractableObject : AActor
local AUIDActor_InteractableObject = {}


---@class AUIDActor_ItemContainer : AActor
local AUIDActor_ItemContainer = {}


---@class AUIDActor_MistAnomaly : AActor
local AUIDActor_MistAnomaly = {}


---@class AUIDActor_PoppyFieldAnomaly : AActor
local AUIDActor_PoppyFieldAnomaly = {}


---@class AUIDActor_VortexArchAnomaly : AActor
local AUIDActor_VortexArchAnomaly = {}


---@class AVerticalLadder : AInteractableObject
---@field ClimbZone UBoxComponent
---@field ClimbStart UArrowComponent
---@field FoldedLadderRoot USceneComponent
---@field FoldedLadderCollisionComponent UBoxComponent
---@field SingleClickComponent USingleClickComponent
---@field LadderComponent ULadderComponent
---@field ImpulseComponent UImpulseComponent
---@field CollisionExtend FVector2D
---@field CollisionHeightUpperExtend float
---@field LadderAccessAngle float
---@field LadderHeight int32
---@field bAutoInteractTop boolean
---@field bAutoInteractBottom boolean
---@field bClimbingCollisionEnabled boolean
---@field bMeshVisible boolean
---@field LadderType ELadderType
---@field bFoldedLadder boolean
---@field FoldedLadderHeight int32
---@field FoldedLadderZLocation float
---@field FoldedLadderHorizontalOffset float
---@field FoldedLadderPushImpulse float
---@field BottomSupportMeshOffset FVector
---@field TopSupportMeshOffset FVector
local AVerticalLadder = {}

---@param CollisionType ECollisionEnabled::Type
function AVerticalLadder:ProtectMeshLock(CollisionType) end
function AVerticalLadder:OnUnfoldingStarted() end
function AVerticalLadder:OnUnfoldingEnded() end
function AVerticalLadder:OnLadderEnabled() end
function AVerticalLadder:OnHiddenStateChanged() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AVerticalLadder:OnClimbZoneEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AVerticalLadder:OnClimbZoneBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@return float
function AVerticalLadder:GetClimbZoneHalfHeight() end


---@class AVolumeForEffects : AVolume
---@field Guid FGuid
---@field bSpawnDisabled boolean
---@field EffectsToApply TArray<FOverlapVolumeEffect>
---@field ActivateVolumeSignal USignalReceiverComponent
---@field DeactivateVolumeSignal USignalReceiverComponent
local AVolumeForEffects = {}

---@param bDisabled boolean
function AVolumeForEffects:SetDisabled(bDisabled) end
---@param DataObject UObject
function AVolumeForEffects:DeactivateDelegateHandle(DataObject) end
---@param DataObject UObject
function AVolumeForEffects:ActivateDelegateHandle(DataObject) end


---@class AVortexAnomaly : AUIDActor_VortexArchAnomaly
---@field AudioComponent UAkComponent
---@field VortexDistanceRTPC UAkRtpc
---@field MinPlayerDistanceToUpdateSound float
---@field SplineComponent USplineComponent
---@field VortexMovementData TArray<FVortexSplineDataPoint>
---@field RootMeshComponent UStaticMeshComponent
---@field VortexCollisionComponent UStaticMeshComponent
---@field VortexSafeZoneComponent UStaticMeshComponent
---@field VortexHalfHeight float
---@field VortexCollisionRadius float
---@field VortexSafeZoneRadius float
---@field ObjectCollisionEffects TArray<FEffectPrototypeSID>
---@field AllowedThrowAngleInterval FFloatInterval
---@field ThrowInvulnerabilityDuration float
---@field VortexOuterImpulse float
---@field VortexOuterLiftHeight float
---@field VortexOuterLiftHorizontalSpeed float
---@field VortexOuterLiftVerticalSpeed float
---@field VortexOuterLiftMaxDuration float
---@field VortexInnerImpulse float
---@field VortexInnerLiftHeight float
---@field VortexInnerLiftHorizontalSpeed float
---@field VortexInnerLiftVerticalSpeed float
---@field VortexInnerLiftMaxDuration float
---@field VortexSafeZoneLeaveTime float
---@field SafeZoneLeaveEffects TArray<FEffectPrototypeSID>
---@field ArtifactSID FPrototypeSID
---@field ArtifactHeight float
---@field bSpawnArtifactOnEmissionOnly boolean
---@field DudeSpawnDistance float
---@field DudeSpawnHeight float
---@field DudeTimeToReachPlayer float
---@field DudeTargetDistance float
---@field VortexToPlayerDistForDudeSpawn float
---@field VortexToPlayerDistCheckFrequency float
---@field SpawnedObjSID FPrototypeSID
---@field SpawnedCorpseSID FPrototypeSID
---@field DudeAudioEvent UAkAudioEvent
---@field VortexDistanceToStartFadeTransition float
---@field WeatherSelectionVolumeGuid FGuid
---@field IndoorMPC UMaterialParameterCollection
---@field Guid FGuid
local AVortexAnomaly = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AVortexAnomaly:OnVortexSafeZoneEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AVortexAnomaly:OnVortexSafeZoneBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AVortexAnomaly:OnVortexEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AVortexAnomaly:OnVortexBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AVortexMPCVolume : AVolume
local AVortexMPCVolume = {}


---@class AWanderingLightInstance : AActor
local AWanderingLightInstance = {}


---@class AWanderingLightsArchiAnomaly : AActor
---@field ArtifactModelSID FString
---@field PlayerMaxVisibilityDistance float
---@field bPlayerViewFOVOverride boolean
---@field PlayerViewFOVDeg float
---@field PlayerFlashlightIntensityScaleCurves TArray<FRuntimeFloatCurve>
---@field AnomalyStartTime float
---@field AnomalyEndTime float
---@field InstanceVisibilityRadius float
---@field InstanceVisibilityChangeDelay float
---@field InstanceChemicalDamageRadius float
---@field InstanceChemicalDamagePerSecond float
---@field InstanceChemicalArmorDamagePerSecond float
---@field bScaleChemicalDamageFromPenetration boolean
---@field InstanceOpacityChangeSpeed float
---@field bRandomizeInstanceSpawnTime boolean
---@field RandomizedSpawnTimeOffsetMax float
---@field InstanceVerticalMovementCurve FRuntimeFloatCurve
---@field bSkipMovementDuringWakeUp boolean
---@field bSkipMovementDuringShutDown boolean
---@field InstanceSpawnTime float
---@field InstanceBlendTime float
---@field AutoUpdateInstanceData boolean
---@field StretchBoundsWithInstanceData boolean
---@field ShowVFXInEditMode boolean
---@field AnomalyBounds FVector
---@field BoundsMargin FVector
---@field IdleEffect TSoftObjectPtr<UNiagaraSystem>
---@field InteractEffect TSoftObjectPtr<UNiagaraSystem>
---@field IdleStateVFXParameters TArray<FWLParticlesPropertyState>
---@field TargetedStateVFXParameters TArray<FWLParticlesPropertyState>
---@field TargetedStateVFXParametersDelay float
---@field MaterialCollectionsToDrive TArray<FMaterialScalarDrivingProperties>
---@field PostProcessBlendRadius float
---@field PostProcessPriority float
---@field PostProcessSettings FPostProcessSettings
---@field StateSFXEvents TMap<EWanderingLightsSimulationState, UAkAudioEvent>
---@field StateSFXSwitches TMap<EWanderingLightsSimulationState, UAkSwitchValue>
---@field AnomalyInstances TArray<FWanderingLightInstanceData>
---@field PlayerPSYEffectInsideAnomalyBounds FPrototypeSID
---@field BoxComponent UBoxComponent
---@field CylinderShapeParams FWLCylinderShapeParams
---@field ArtifactSpawnLocations TArray<FVector>
local AWanderingLightsArchiAnomaly = {}

---@param bEnable boolean
function AWanderingLightsArchiAnomaly:CreateVFX(bEnable) end


---@class AWeatherController : AActor
---@field CurrentRainIntensity float
---@field CurrentWetnessState float
---@field DefaultRoot USceneComponent
---@field SkySphere UStaticMeshComponent
---@field SkySphereMID UMaterialInstanceDynamic
---@field Sun UDirectionalLightComponent
---@field SkyLight USkyLightComponent
---@field SkyAtmosphere USkyAtmosphereComponent
---@field VolumetricCloud UVolumetricCloudComponent
---@field CloudsMID UMaterialInstanceDynamic
---@field ExponentialHeightFog UExponentialHeightFogComponent
---@field SunPositionCurve UCurveLinearColor
---@field GlobalVolumetricValue float
---@field LocalVolumetricValue float
---@field PostProcess UPostProcessComponent
---@field EnvironmentMPC UMaterialParameterCollection
---@field EnvironmentMPCInstance UMaterialParameterCollectionInstance
---@field WetnessSoundParameter UAkRtpc
---@field WindIntensitySoundParameter UAkRtpc
---@field WeatherSound UAkAudioEvent
---@field RainIntensitySoundParameter UAkRtpc
---@field DaytimeSoundParameter UAkRtpc
---@field RazorWeatherFeedbackRTPC UAkRtpc
---@field WeatherParameterNamesDataAsset UWeatherParameterNamesDataAsset
---@field WeatherPresets TArray<TSoftObjectPtr<UWeatherPresetDataAsset>>
---@field VolumetricCloudMaterial UMaterialInterface
---@field SkySphereMaterial UMaterialInterface
---@field RemoveKeyTolerance float
---@field SolarTime float
---@field CurrentWeatherDuration float
---@field RequestedWeatherDuration float
---@field TransitionDuration float
---@field WeatherTransitionTimeMultiplier float
---@field WeatherChangeSpeed float
---@field SourceWeather EWeather
---@field TargetWeather EWeather
---@field WeatherHistory TArray<FWeatherHistoryData>
---@field SkySphereEmissive float
---@field SkySphereZenithColor FLinearColor
---@field SkySphereHorizonColor FLinearColor
---@field StartSunRiseTime float
---@field EndSunRiseTime float
---@field StartSunSetTime float
---@field EndSunSetTime float
---@field ShadowStepDaylight float
---@field ShadowStepMoonlight float
---@field SimulationSpeed float
---@field SimulationDuration float
---@field CurrentSimulationDuration float
---@field SelectionPrototypeSID FPrototypeSID
---@field WindIntensity float
---@field WaterWindNormalMultiplier float
---@field CloudShift FVector2D
---@field WaterShift float
---@field CloudShiftStep float
---@field WindDirectionChangeDelay float
---@field EmissionWindDirectionChangeDelay float
---@field WindDirectionChangeMinAngle float
---@field WindDirectionChangeMaxAngle float
---@field ShadowAmount float
---@field MoonOpacity float
---@field ColorPower float
---@field SourcePreset UWeatherPresetDataAsset
---@field TargetPreset UWeatherPresetDataAsset
---@field Wind FWind
local AWeatherController = {}

function AWeatherController:ResumeCloudShadowsMovement() end
function AWeatherController:PauseCloudShadowsMovement() end


---@class AWorldMapScene : AActor
local AWorldMapScene = {}

---@param InScale float
function AWorldMapScene:SetScale(InScale) end
---@param InOffset FVector2D
function AWorldMapScene:SetOffset(InOffset) end
---@param InBrightness float
function AWorldMapScene:SetNotSelectedAreaBrightness(InBrightness) end
---@param InUV FVector
function AWorldMapScene:SetMouseUV(InUV) end
---@param bIsEnabled boolean
function AWorldMapScene:SetCaptureEveryFrame(bIsEnabled) end


---@class FAIEntityCollection : FBaseTickAggregationCollection
local FAIEntityCollection = {}


---@class FAITickComponentCollection : FBaseTickAggregationCollection
local FAITickComponentCollection = {}


---@class FALifeScenarioGroupSIDSelector
---@field Value FString
local FALifeScenarioGroupSIDSelector = {}



---@class FAbilityCamModifierStage
---@field StageDuration float
---@field DistPercent float
---@field FOV float
---@field PostProcessBlendWeight float
---@field PostProcessSettings FPostProcessSimplifiedSettings
local FAbilityCamModifierStage = {}



---@class FAbilityParams
local FAbilityParams = {}


---@class FAbilityPrototypeSID
---@field AbilitySID FPrototypeSID
---@field ActivationTag FName
local FAbilityPrototypeSID = {}



---@class FAchievementData
---@field Tracker UAchievementTracker
local FAchievementData = {}



---@class FActionMimicSettings
---@field InputAction FName
---@field MappingContext EMappingContext
---@field TriggerIndex int32
local FActionMimicSettings = {}



---@class FActorInteractionData
---@field InteractableTextToolName FString
local FActorInteractionData = {}



---@class FAdvancedControllerSettings
---@field MappingIndex int32
---@field TriggerIndex int32
local FAdvancedControllerSettings = {}



---@class FAgentCollection : FBaseTickAggregationCollection
local FAgentCollection = {}


---@class FAgentDomainRestrictions
---@field AgentDomain EAgentDomain
---@field RestrictionType ESpaceRestrictionType
local FAgentDomainRestrictions = {}



---@class FAgentModelCollection : FBaseModelCollection
local FAgentModelCollection = {}


---@class FAkComponentCollection : FBaseTickAggregationCollection
---@field AkComponents TArray<UAkComponent>
local FAkComponentCollection = {}



---@class FAkComponentRetargetRow : FTableRowBase
---@field TargetSocketName FName
local FAkComponentRetargetRow = {}



---@class FAkLateReverbCollection : FBaseTickAggregationCollection
---@field LateReverbComponents TArray<UAkLateReverbComponent>
local FAkLateReverbCollection = {}



---@class FAkRoomCollection : FBaseTickAggregationCollection
---@field RoomComponents TArray<UAkRoomComponent>
local FAkRoomCollection = {}



---@class FAkSurfaceReflectorSetCollection : FBaseTickAggregationCollection
---@field SurfaceReflectorSetComponents TArray<UAkSurfaceReflectorSetComponent>
local FAkSurfaceReflectorSetCollection = {}



---@class FAnimAbilityData
---@field BlendAlpha float
---@field AimOffsetAlphaYaw float
---@field AimOffsetAlphaPitch float
---@field Offset UBlendSpace
local FAnimAbilityData = {}



---@class FAnimBlendAlphaData
---@field Alpha float
---@field BlendArgs FAlphaBlend
local FAnimBlendAlphaData = {}



---@class FAnimBodyPartBonesConfig
---@field HitBodyPart EAnimHitBodyPart
---@field Bones TSet<FName>
local FAnimBodyPartBonesConfig = {}



---@class FAnimBonesArray
local FAnimBonesArray = {}


---@class FAnimCutsceneData
---@field BlendTime float
---@field CacheToggleFlag boolean
local FAnimCutsceneData = {}



---@class FAnimDamageData
local FAnimDamageData = {}


---@class FAnimDialogContextualArray
---@field DialogContextualAnimations TMap<ELookAtOwnerState, FAnimSequenceArray>
local FAnimDialogContextualArray = {}



---@class FAnimDialogContextualWeightedArray
---@field DialogContextualAnimations TMap<ELookAtOwnerState, FAnimSequenceWeightedArray>
local FAnimDialogContextualWeightedArray = {}



---@class FAnimFaceBlendConfig
---@field BlendIn FAlphaBlend
---@field FaceBlendOutTime float
---@field FaceBlendOutTriggerTime float
local FAnimFaceBlendConfig = {}



---@class FAnimHandIKData
---@field Alpha float
---@field BlendArgs FAlphaBlend
local FAnimHandIKData = {}



---@class FAnimHandItemData
---@field bHasItemInHands boolean
---@field bHasEmptyHands boolean
---@field ItemSkeletal USkeletalMeshComponent
---@field ItemInteractable UInteractionComponent
---@field bIsUsesLeftHand boolean
---@field bIsUsesRightHand boolean
---@field SwingData FAnimPlayerWeaponSwingData
---@field InertiaData FAnimPlayerWeaponInertiaData
local FAnimHandItemData = {}



---@class FAnimHitBodyPart
---@field FirstHit FAnimationSingleHit
---@field SecondHit FAnimationSingleHit
---@field MinimalAngleBetweenHits float
---@field NextHitAvailableCurveName FName
---@field AvailiableParentBoneNames TArray<FName>
---@field ExcludedParentBoneNames TArray<FName>
---@field BodyType EAnimHitBodyPartType
local FAnimHitBodyPart = {}



---@class FAnimHitData
---@field bEnableAnimationHit boolean
---@field Hits TArray<FAnimHitBodyPart>
---@field HitSourceType EAnimHitSourceType
---@field MaxCountOfSimultaneouslyPlayedHitAnimations uint8
---@field NumberOfAnimationsWhenFirstWillBeStopped uint8
---@field LastHittedBodyPart EAnimHitBodyPartType
---@field HitDirection float
---@field CalculatedHitDirection float
---@field HitVerticalDirection float
---@field HitAnimDirection EAnimDirections
---@field DeathAnimationType EDeathAnimationType
---@field DeathDamageSource EHumanAnimDamageSource
---@field DeadPose UAnimSequence
---@field bDiedLyingDown boolean
---@field bDiedFromAbove boolean
---@field ZombieResurrectRate float
---@field ForceWarpActorRotation TMap<FName, FRotator>
---@field BodyPartBonesConfig TArray<FAnimBodyPartBonesConfig>
---@field SelectedDeathAnimation UAnimSequenceBase
local FAnimHitData = {}



---@class FAnimHitPhysCurves
---@field WorldSpaceControlMultiplier FPhysicsControlMultiplier
---@field WorldSpaceStrengthMultiplier UCurveFloat
---@field WorldSpaceBlendValue UCurveFloat
---@field ParentSpaceControlMultiplier FPhysicsControlMultiplier
---@field ParentSpaceStrengthMultiplier UCurveFloat
local FAnimHitPhysCurves = {}



---@class FAnimHitPhysics
---@field Control UPhysicsControlComponent
---@field AllBodyModifiers FPhysicsControlNames
---@field LimbBodyModifiers TMap<FName, FPhysicsControlNames>
---@field HitConstraintProfile EAnimConstraintProfile
---@field WorldSpaceControls FAnimPhysicSpaceControl
---@field ParentSpaceControls FAnimPhysicSpaceControl
---@field LimbSetup TArray<FPhysicsControlLimbSetupData>
---@field HitCurvesForLimbs TMap<FName, FAnimHitPhysCurves>
---@field ImpulseDelay float
---@field HitStrength float
---@field DeadHitStrength float
---@field DeathDamageSourceImpulses TMap<EDamageSource, float>
---@field SetsOfBoneModifiersArray TMap<FName, FAnimBonesArray>
---@field BodyModifierForKinematicMovement TArray<FName>
local FAnimHitPhysics = {}



---@class FAnimHumanAimingData
---@field bIsAiming boolean
local FAnimHumanAimingData = {}



---@class FAnimHumanCollectionsData
---@field DefaultAnimCollection UHumanDefaultAnimCollection
---@field AnimCollection UHumanAnimCollection
---@field FirearmAnimCollection UHumanFirearmAnimCollection
---@field ExternalAnimations FHumanExternalAnimations
---@field WeaponExternalAnimations FHumanWeaponExternalAnimations
local FAnimHumanCollectionsData = {}



---@class FAnimHumanDialogData
---@field DialogIdleAnims TArray<FAnimSequenceWeighted>
---@field LastWaitingIdleAnimsCount int32
---@field bInDialog boolean
---@field DialogWaitingIdleAnimCooldownRange FFloatRange
---@field DialogTalkingIdleAnimCooldownRange FFloatRange
local FAnimHumanDialogData = {}



---@class FAnimHumanFaceData
---@field DeathAnimations TArray<UAnimSequence>
---@field CurrentDeathAnimation UAnimSequence
---@field HitAnimations TArray<UAnimSequence>
---@field LastHitAnimation UAnimSequence
---@field WoundedAnimations TArray<UAnimSequence>
---@field CurrentWoundedAnimation UAnimSequence
---@field LastWoundedAnimation UAnimSequence
---@field BlendShapeCurves TMap<FName, float>
---@field CurrentFaceMask EEmotionalFaceMasks
---@field FaceMeshComponent USkeletalMeshComponent
---@field CharacterSkeletalMeshComponent USkeletalMeshComponent
---@field EyesLookAtData FEyesLookAtData
---@field FaceBlendConfig FAnimFaceBlendConfig
---@field HeadType EAnimationHeadTypes
---@field BlockingMasks TArray<float>
---@field FastFaceBlendCurves TArray<FName>
---@field SlowFaceBlendCurves TArray<FName>
---@field bAlive boolean
---@field bShouldEnableAdamAppleAnimations boolean
---@field bIsThroatAnimationPlaying boolean
---@field bPlayingDummyDialogAnimation boolean
---@field bIsFaceAnimBlendingOut boolean
---@field bIsFaceAnimPlaying boolean
---@field bIsFaceTongueAnimPlaying boolean
---@field DisableIdleTongueCurveValue float
local FAnimHumanFaceData = {}



---@class FAnimHumanLookAtData
---@field RestrictionsConfigDA ULookAtRestrictionsDataAsset
---@field HorizontalBodyParts TArray<FRotationBodyPart>
---@field VerticalBodyParts TArray<FRotationBodyPart>
---@field TargetRotation FVector2D
---@field bIsRotating boolean
---@field bIsRotatingFullBody boolean
---@field CurrentOwnerState ELookAtOwnerState
---@field FullBodyRotationRate float
---@field FullBodyRotationTimeGap float
---@field bEnableCombatLookAt boolean
---@field MaxLookAtAlphaChangeSpeed float
---@field IsRotatingBlendTimes TArray<float>
---@field LookAtLocation FVector
---@field LookAtAlpha float
---@field bOnlyHeadRotateOnUpperBody boolean
---@field WeaponRotationInterpSpeed float
---@field WeaponRotationAngleOffset float
---@field TargetWeaponRotation FRotator
---@field AdditionalWeaponTransformAlpha float
---@field CloseToBodyWeaponShift FVector
---@field MaxWeaponShiftOnReload float
---@field bIsFullBodyRotatingBlockedOutside boolean
local FAnimHumanLookAtData = {}



---@class FAnimHumanStateData : FAnimStateData
---@field bWounded boolean
---@field bKnockedDown boolean
---@field KnockedDownPoseBlendTime float
---@field bCrouching boolean
---@field bSitting boolean
---@field bRotating boolean
---@field CurveGaitValue float
---@field DynamicGaitValue float
---@field CurveGaitState EAnimationStates
---@field bHasMovementInput boolean
---@field bHasContextualItemInHands boolean
---@field bZombie boolean
---@field bSpawnedAsZombie boolean
---@field bStandingUpAsZombie boolean
---@field bShouldPlayLongBHIdle boolean
---@field bDragDeadBody boolean
---@field bIsRenderRelevant boolean
---@field IsRotatingAngleThreshold float
---@field bShouldDisableInertialization boolean
---@field bMovementShouldDisableLookAt boolean
---@field bShouldCopyVirtualWeaponBone boolean
---@field bHasEmptyHandsInDialog boolean
---@field bIsDeadAsNotZombie boolean
---@field bIsDeadAsZombie boolean
---@field bShouldTransitionToWeaponRelaxedIdle boolean
---@field bStandToRelaxIdle boolean
---@field bIsLegIKPaused boolean
---@field bIsHideWeaponWarning boolean
---@field bRelaxToStandIdle boolean
---@field bIsInitialIdleRelaxed boolean
local FAnimHumanStateData = {}



---@class FAnimHumanWeaponConfig
---@field CloseToBodyWeaponMinShift float
---@field CloseToBodyWeaponMaxShift float
---@field HandIKEffectorOffset FVector
local FAnimHumanWeaponConfig = {}



---@class FAnimHumanWeaponData
---@field bHasWeaponInHands boolean
---@field AimingData FAnimHumanAimingData
---@field bIsZombie boolean
---@field WeaponMesh USkeletalMeshComponent
---@field AttachMesh USkeletalMeshComponent
---@field WeaponIKEffectorOffset FVector
---@field bIsOneHanded boolean
---@field WeaponAdditivePoseMode EAnimWeaponAdditivePoseMode
local FAnimHumanWeaponData = {}



---@class FAnimInteractableData
---@field InteractionDirection FVector
---@field InteractionDistance float
---@field bShouldLerpToInteractable boolean
---@field LerpSpeedMultiplier float
---@field bShouldLerpIn3D boolean
---@field bShouldToggleFOV boolean
---@field CollisionType ECollisionEnabled::Type
local FAnimInteractableData = {}



---@class FAnimKnockDownData
---@field KnockedDownState EKnockedDownState
---@field bIsStillKnockedDown boolean
local FAnimKnockDownData = {}



---@class FAnimLegsIKData
---@field LegsIK FAnimBlendAlphaData
local FAnimLegsIKData = {}



---@class FAnimLocomotionData
---@field Velocity float
---@field AngleDirection float
---@field ClampedDirection float
---@field BPDirection uint8
---@field Direction EDirections
---@field DirectionBlendParams FDirectionBlendData
---@field MovementRotation FMovementRotationStructure
---@field LegIKAlpha float
---@field bLegIKEnabled boolean
---@field MovementPlayRate FMovementPlayRateStructure
---@field bEnablePlayRateCurves boolean
---@field MovementPlayRateCurves TMap<EStateTag, UCurveFloat>
---@field HeadEvasionOffset FVector
local FAnimLocomotionData = {}



---@class FAnimMutantCollectionsData
---@field AnimCollection UMutantAnimCollection
local FAnimMutantCollectionsData = {}



---@class FAnimMutantStateData : FAnimStateData
---@field bRotating boolean
---@field bStandToSit boolean
---@field bIsLeftHanded boolean
---@field ChanceToBeLeftHanded float
---@field IsRotatingAngleThreshold float
---@field Awareness EAwareness
---@field bShouldDisableInertialization boolean
local FAnimMutantStateData = {}



---@class FAnimPhysicSpaceControl
---@field Data FPhysicsControlData
---@field Settings FPhysicsControlSettings
---@field LimbControls TMap<FName, FPhysicsControlNames>
---@field AllControls FPhysicsControlNames
local FAnimPhysicSpaceControl = {}



---@class FAnimPhysicalData
---@field bEnablePhysicalHit boolean
---@field Hit FAnimHitPhysics
---@field AnimatedRagdollDeathSettings FAnimatedRagdollDeathSettings
---@field bSnapshotPoseEnabled boolean
---@field bRagdollStaticPose boolean
---@field bUpBodyDirection boolean
---@field RagdollSnapshotPose FPoseSnapshot
local FAnimPhysicalData = {}



---@class FAnimPlayerAimingData
---@field bAiming boolean
---@field AimInFrame float
---@field AimOutFrame float
---@field AimAlpha float
---@field AimCameraShakeAlpha float
---@field AimState EAnimationAimState
---@field AimChangeTime float
---@field OffsetAimAlpha float
local FAnimPlayerAimingData = {}



---@class FAnimPlayerAutoCoverData
---@field CoverState EAutoCoverState
---@field CoverCapturedSide EAutoCoverCapturedSide
---@field bFrontTraceBlocked boolean
---@field bRightTraceBlocked boolean
---@field bLeftTraceBlocked boolean
---@field bUpTraceBlocked boolean
---@field bAimTraceBlocked boolean
---@field CapturedSideTraceStart FVector
---@field bCanCaptureSideTrace boolean
---@field bInCover boolean
---@field bAutoCoverActionActive boolean
---@field AimLeanTime float
---@field AimLeanRestoreTime float
---@field ApproachTransitionPlayRate float
---@field LeaningAlpha float
---@field LeaningRightAlpha float
---@field LeaningLeftAlpha float
---@field bCoverlessLeaning boolean
---@field bCoverlessLeaningRight boolean
---@field bAsyncTraceProcessingEnabled boolean
---@field MinRangeDistanceToCover float
---@field TraceCapsuleRadius float
---@field CoverSideInterpSpeed float
---@field CoverForwardTraceRange float
---@field CoverUpperTraceRange float
---@field CoverSideTracesRange float
---@field CoverLeanTracesRange float
---@field CoverLeanTracesIterations int32
---@field CoverTraceHorizontalShift float
---@field CoverTraceVerticalShift float
---@field CoverAimTraceHorizontalShift float
---@field ApproachTransitionMinPlayRate float
---@field ApproachTransitionMaxPlayRate float
---@field TraceChannel ECollisionChannel
---@field HeadHeightStand float
---@field HeadHeightCrouch float
---@field HeadHeightLowCrouch float
---@field LeaningSideSwitchingCameraTolerance FVector2D
---@field bTraceDirectionBoundToCamera boolean
local FAnimPlayerAutoCoverData = {}



---@class FAnimPlayerBaseWeaponData
---@field LongIdleType ELongIdleType
---@field InactiveIdle FCharacterItemWeightedAnimations
---@field InactiveIdleFrame float
---@field CurveIdleValue float
---@field bActionSlotActive boolean
local FAnimPlayerBaseWeaponData = {}



---@class FAnimPlayerCameraData
---@field CameraAimTransform FTransform
---@field CameraOffsetAimTransform FTransform
---@field TargetCameraTransform FTransform
---@field CameraTransformAlpha float
---@field CameraToWeaponTransformAlpha float
---@field ClampedControlPitch float
local FAnimPlayerCameraData = {}



---@class FAnimPlayerClimbingData
---@field bAnimClimbStarted boolean
---@field AnimClimbState EAnimClimbState
---@field ClimbSpeed float
---@field CameraYaw float
---@field CameraPitch float
---@field bLongIdleEnable boolean
---@field bJumpingOffLadderState boolean
---@field bJumpingOffLadderBottomState boolean
---@field LadderType ELadderType
---@field BottomOffset float
---@field FrontOffset TMap<ELadderType, float>
---@field SingleStepHeight float
---@field CameraFocusOnExitTime float
---@field CameraFocusOnExitInterpSpeed float
---@field EnterTransitionCurve UCurveFloat
---@field TimeToStartLongIdle float
local FAnimPlayerClimbingData = {}



---@class FAnimPlayerCollectionsData
---@field DefaultAnimCollection UPlayerDefaultAnimCollection
---@field DragDeadBodyAnimCollection UPlayerDefaultAnimCollection
---@field AnimCollection UPlayerAnimCollection
---@field FirearmAnimCollection UPlayerFirearmAnimCollection
---@field ThrowableAnimCollection UPlayerThrowableItemAnimCollection
---@field KnifeAnimCollection UPlayerKnifeAnimCollection
---@field ItemAnimCollection UItemAnimCollection
---@field ItemInteractableAnimCollection UInteractableAnimCollection
---@field AttachAnimCollection UWeaponAttachAnimCollection
---@field DetectorAnimCollection UPlayerDetectorAnimCollection
---@field ExternalAnimations FPlayerExternalAnimations
---@field bWeaponSubgraphToggle boolean
---@field WeaponSubgraphBlend float
---@field bAdditionalSubgraphToggle boolean
---@field AdditionalSubgraphBlend float
---@field SubgraphDefaultBlendTime TMap<ESubgraphBlendTypes, float>
local FAnimPlayerCollectionsData = {}



---@class FAnimPlayerDetectorData
---@field bHasDetectorInHands boolean
---@field bIsLeftHandSlotEnabled boolean
---@field DetectorSkeletal USkeletalMeshComponent
---@field SwingData FAnimPlayerWeaponSwingData
---@field InertiaData FAnimPlayerWeaponInertiaData
local FAnimPlayerDetectorData = {}



---@class FAnimPlayerDialogData
---@field bInDialog boolean
local FAnimPlayerDialogData = {}



---@class FAnimPlayerDodgeData
---@field CollidedObjects TSet<AObj>
local FAnimPlayerDodgeData = {}



---@class FAnimPlayerFirearmData
---@field IdleType EWeaponIdleType
---@field ShutterState EShutterState
---@field IsJammed boolean
---@field IsJamIdleAllowed boolean
---@field JamIdleIndex int32
---@field bTwinMagazineShifted boolean
---@field AdditionalIdle EWeaponCustomAdditionalIdle
---@field FireTypes EFireType
---@field LeftHandCurveValueInverse float
---@field WeaponLeftHandCurveValueInverse float
---@field LeftHandMovementAlpha float
---@field bIsLeftHandIdleUnlocked boolean
local FAnimPlayerFirearmData = {}



---@class FAnimPlayerGuitarData
---@field CameraPitchLimit float
---@field CameraYawLimit float
---@field CameraResetInterpSpeed float
---@field CurrentChord int32
---@field AnimGuitarState EAnimGuitarState
---@field RightHandState EAnimGuitarRightHandState
---@field bPlayingGuitar boolean
---@field bPlayFromContextual boolean
---@field bIsMajorScale boolean
---@field bShouldExitGuitar boolean
---@field bAutoStrumMode boolean
---@field CameraYaw float
---@field CameraPitch float
local FAnimPlayerGuitarData = {}



---@class FAnimPlayerHitData
---@field DeathSequence UAnimSequence
---@field DeathCameraDistance float
---@field HitDirection float
---@field HitLocation FVector
---@field DeathDamageSource EPlayerAnimDamageSource
---@field HitAnimDirection EAnimDirections
---@field DeathAnimationType EDeathAnimationType
---@field bDiedLyingDown boolean
---@field bIsDeathAnimationEnded boolean
---@field bKnockedDown boolean
---@field KnockDownRotation FRotator
---@field KnockDownRotateCurve UCurveFloat
local FAnimPlayerHitData = {}



---@class FAnimPlayerIdleSwayData
---@field BaseCurve UCurveVector
---@field StaminaAmplitudeCurve UCurveVector
---@field StaminaCycleTimeCurve UCurveFloat
---@field InitialDelay float
---@field StandCycleTimeModifier float
---@field StandAmplitudeXModifier float
---@field StandAmplitudeYModifier float
---@field CrouchCycleTimeModifier float
---@field CrouchAmplitudeXModifier float
---@field CrouchAmplitudeYModifier float
---@field MoveCycleTimeModifier float
---@field MoveAmplitudeXModifier float
---@field MoveAmplitudeYModifier float
---@field Rotation FRotator
---@field Alpha float
---@field ActiveCurve UCurveVector
---@field InterpSpeed float
local FAnimPlayerIdleSwayData = {}



---@class FAnimPlayerLookAtData
---@field Presets TMap<FName, FAnimPlayerLookAtPreset>
---@field ActivePreset FAnimPlayerLookAtPreset
---@field EnteringSpeed UCurveFloat
---@field CenteringSpeed UCurveFloat
---@field CursorFreemoveDistanceFactor UCurveFloat
---@field CursorApproachDirectionFactor UCurveFloat
---@field CenteringTime float
---@field PlayerLookAtTimer float
---@field MaxFreemoveSpeed float
---@field MinStopSpeed float
---@field DialogEnteringTime float
---@field SwitchTargertFactor float
local FAnimPlayerLookAtData = {}



---@class FAnimPlayerLookAtPreset
---@field RotationFreemoveEdge float
---@field RotationStopEdge float
---@field bShouldRepeatTargetMovement boolean
local FAnimPlayerLookAtPreset = {}



---@class FAnimPlayerMaterialData
---@field FoliageCollectionAsset UMaterialParameterCollection
local FAnimPlayerMaterialData = {}



---@class FAnimPlayerShadowData
---@field SnapshotMapping TArray<FSnapshotMapping>
---@field bHasWeaponInHands boolean
---@field bAiming boolean
---@field bShouldUseBHLocomotion boolean
---@field AngleDirection float
---@field TurnTime float
---@field MovementPlayRate FMovementPlayRateStructure
local FAnimPlayerShadowData = {}



---@class FAnimPlayerStateData : FAnimStateData
---@field bWalkingOverride boolean
---@field bCrouching boolean
---@field bLowCrouching boolean
---@field bClimbing boolean
---@field bLimping boolean
---@field bShootingUnfocusableTarget boolean
---@field bDragDeadBody boolean
---@field bIsLeftHandBusy boolean
---@field bIsInspectingItem boolean
---@field bActionSlotActive boolean
---@field bFullBodySlotActive boolean
---@field bCrouchingOverride boolean
---@field bLowCrouchingOverride boolean
---@field bSprintingOverride boolean
---@field bJoggingOverride boolean
---@field bInAirOverride boolean
---@field bTremoring boolean
---@field CrouchingInWaterInterruptionTime float
---@field SprintingInWaterInterruptionTime float
---@field InAirInWaterInterruptionTime float
---@field CombatIdleDuration float
---@field bCombatMoveIdle boolean
---@field bCombatCrouchIdle boolean
---@field bCombatActionActive boolean
---@field CombatIdleCooldown float
---@field bForceBindedHandsLookVertical boolean
---@field bHasExoskeleton boolean
---@field CurveGaitValue float
---@field DynamicGaitValue float
---@field EnumGaitState EAnimationStates
local FAnimPlayerStateData = {}



---@class FAnimPlayerStealthData
---@field bStealth boolean
---@field StealthInFrame float
---@field StealthOutFrame float
---@field StealthAlpha float
---@field StealthState EAnimationStealthState
---@field StealthKillSnapCurve UCurveFloat
local FAnimPlayerStealthData = {}



---@class FAnimPlayerTransitionData
---@field bHasVelocity boolean
---@field bMovingUp boolean
---@field bMovingDown boolean
---@field bReadyForLanding boolean
---@field bCanEnterSprint boolean
---@field bCanEnterJogging boolean
---@field LerpToTargetAlpha float
---@field LerpToTargetTime float
local FAnimPlayerTransitionData = {}



---@class FAnimPlayerUnfocusableTargetData
---@field bTargetingUnfocusable boolean
local FAnimPlayerUnfocusableTargetData = {}



---@class FAnimPlayerVaultingData
---@field State EVaultState
---@field bIsVaulting boolean
---@field bIsAnimInProgress boolean
---@field bIsVaultingOver boolean
---@field bIsVaultingOnTop boolean
---@field Sequence UAnimSequence
---@field VaultAlpha float
---@field VaultingSequences TMap<EMainHandEquipmentType, UAnimSequence>
---@field VaultingCrouchedSequences TMap<EMainHandEquipmentType, UAnimSequence>
---@field VaultOverSequences TMap<EMainHandEquipmentType, UAnimSequence>
---@field VaultOverCrouchedSequences TMap<EMainHandEquipmentType, UAnimSequence>
local FAnimPlayerVaultingData = {}



---@class FAnimPlayerWeaponData
---@field bHasWeaponInHands boolean
---@field WeaponMesh USkeletalMeshComponent
---@field AttachMesh USkeletalMeshComponent
---@field BaseWeaponData FAnimPlayerBaseWeaponData
---@field AimingData FAnimPlayerAimingData
---@field FirearmData FAnimPlayerFirearmData
local FAnimPlayerWeaponData = {}



---@class FAnimPlayerWeaponInertiaData
---@field AlphaInterpSpeed float
---@field TranslationInterpSpeed float
---@field RotationInterpSpeed float
---@field InertiaStartThreshold float
---@field RotationCurve UCurveVector
---@field TranslationCurve UCurveVector
---@field TimeScaleCurve UCurveFloat
---@field AmplitudeScaleCurve UCurveFloat
---@field AdditionalInertiaRotation FRotator
---@field AdditionalInertiaTranslation FVector
---@field InertiaAlpha float
local FAnimPlayerWeaponInertiaData = {}



---@class FAnimPlayerWeaponPushbackData
---@field PushbackInteprolateTolerance float
---@field PushbackInteprolateSpeed float
---@field State EAnimPushbackState
---@field Alpha float
---@field WeaponTranslation FVector
---@field WeaponRotation FRotator
---@field Blend FAlphaBlend
local FAnimPlayerWeaponPushbackData = {}



---@class FAnimPlayerWeaponSwingData
---@field ItemTotalRotation FRotator
---@field ItemExtraRotation FRotator
---@field ItemTotalShift FVector
---@field ItemSocketTotalShift FVector
local FAnimPlayerWeaponSwingData = {}



---@class FAnimPoseSearchLocomotionData
---@field Trajectory FTrajectorySampleRange
---@field Tags FGameplayTagContainer
---@field StrafeRotateInterpSpeedCurve UCurveFloat
---@field bForcedIdling boolean
---@field bShouldInterrupt boolean
---@field EnableLookAtAlpha float
---@field Settings FMotionMatchingSettings
---@field ProceduralMovement FPoseSearchProceduralMovement
---@field FloorNormal FWarpingVectorValue
---@field Searchable UPoseSearchSearchableAsset
---@field SlopeWarpingEnabled boolean
---@field SlopeWarpingAlpha float
---@field StrideScale float
---@field LegIKAlpha float
---@field bUseRelaxLocomotion boolean
---@field HistoryExpirationSeconds float
---@field MoveTypeStayInIndexTime TMap<EAnimPoseSearchMoveType, float>
---@field SmartCoverType ESmartCoverType
---@field bUsingSmartCoverAnimPose boolean
---@field MoveBehaviorOnlyTransitionUseTime float
---@field MovementComponent UPoseSearchLocomotionCharacterMovementComponent
local FAnimPoseSearchLocomotionData = {}



---@class FAnimSequenceArray
---@field Animations TArray<TSoftObjectPtr<UAnimSequenceBase>>
local FAnimSequenceArray = {}



---@class FAnimSequenceWeighted
---@field ChanceToPlay float
---@field Animation UAnimSequenceBase
local FAnimSequenceWeighted = {}



---@class FAnimSequenceWeightedArray
---@field Animations TArray<FSoftAnimWeighted>
local FAnimSequenceWeightedArray = {}



---@class FAnimSleepData
---@field bSleep boolean
local FAnimSleepData = {}



---@class FAnimStateData
---@field bAlive boolean
---@field bMoving boolean
---@field bWalking boolean
---@field bRunning boolean
---@field bSprinting boolean
---@field bJogging boolean
---@field bInAir boolean
---@field bCutscene boolean
---@field bIsInContextualAction boolean
---@field bInCombat boolean
---@field bShouldDisableLegIK boolean
local FAnimStateData = {}



---@class FAnimTwoHandsIKData
---@field LeftHand FAnimHandIKData
---@field RightHand FAnimHandIKData
local FAnimTwoHandsIKData = {}



---@class FAnimValveData
---@field ValveState EValveState
local FAnimValveData = {}



---@class FAnimWeaponSwingContainer
---@field ItemRotationCurve UCurveFloat
---@field ItemHorizontalTranslationShiftCurve UCurveFloat
---@field ItemSocketHorizontalTranslationShiftCurve UCurveFloat
---@field ItemVerticalTranslationShiftCurve UCurveFloat
---@field ItemExtraVerticalTranslationShiftCurve UCurveFloat
---@field HorizontalItemTranslationInterpSpeed float
---@field VerticalItemTranslationInterpSpeed float
---@field ItemRotationInterpSpeed float
---@field ItemExtraRotation FRotator
local FAnimWeaponSwingContainer = {}



---@class FAnimWoundedData
---@field bWounded boolean
---@field WoundedState EWoundedAnimState
---@field SlopeCorrectionDelta FRotator
---@field EnterRagdollTime float
---@field SlopeTestSweepUpOffset float
---@field SlopeTestSweepDownOffset float
---@field SlopeTestSweepSphereRadius float
---@field SlopeTestCollisionChannel ECollisionChannel
local FAnimWoundedData = {}



---@class FAnimatedRagdollDeathSettings
---@field IgnorePhysicalHitJoints TArray<FBoneReference>
---@field MaxSpeed float
---@field LinearDamping float
---@field DefaultLinearDamping float
local FAnimatedRagdollDeathSettings = {}



---@class FAnimationSingleHit
---@field bPlay boolean
---@field PlayRate float
---@field HitDirection float
local FAnimationSingleHit = {}



---@class FAnomalyCollection : FBaseTickAggregationCollection
local FAnomalyCollection = {}


---@class FAnomalyHitArgs
local FAnomalyHitArgs = {}


---@class FAnomalyModelCollection : FBaseModelCollection
local FAnomalyModelCollection = {}


---@class FArtifactCollection : FBaseTickAggregationCollection
local FArtifactCollection = {}


---@class FArtifactLightBarStateArgs : FLightBarStateArgs
---@field ArtifactType EArtifactType
local FArtifactLightBarStateArgs = {}



---@class FAsyncSettings
---@field HandleAsync boolean
---@field OnLoadingStart TArray<UAsyncActionBase>
---@field OnLoadingFinished TArray<UAsyncActionBase>
local FAsyncSettings = {}



---@class FAttachDetachAnimations
---@field AttachAnimation FCharacterWeaponAnimations
---@field DetachAnimation FCharacterWeaponAnimations
---@field DetachTwinMagazineShifted FCharacterWeaponAnimations
---@field AttachAnimBlueprint UClass
local FAttachDetachAnimations = {}



---@class FAttachMeshData
---@field MeshComponent UMeshComponent
local FAttachMeshData = {}



---@class FAttachMeshesData
---@field ArrayMeshes TArray<FAttachMeshData>
local FAttachMeshesData = {}



---@class FAttachedMagazineStruct
---@field MagazineMesh UMeshComponent
local FAttachedMagazineStruct = {}



---@class FAttractionPoint
---@field LookAtActor TWeakObjectPtr<AActor>
---@field SkeletalMesh TWeakObjectPtr<USkeletalMeshComponent>
---@field SID FName
local FAttractionPoint = {}



---@class FAutoInteractionData : FInteractionData
local FAutoInteractionData = {}


---@class FBackgroundSettings
---@field Icon UTexture2D
local FBackgroundSettings = {}



---@class FBaseLegIKData
local FBaseLegIKData = {}


---@class FBaseModelCollection : FBaseTickAggregationCollection
local FBaseModelCollection = {}


---@class FBaseTickAggregationCollection
local FBaseTickAggregationCollection = {}


---@class FBodyMeshSIDSelector
---@field Value FString
local FBodyMeshSIDSelector = {}



---@class FBodyPartRestriction
---@field RotationLimit float
---@field RotationSpeed float
---@field RotationBlocked boolean
---@field bShouldRotateIndependently boolean
local FBodyPartRestriction = {}



---@class FBoolOverridableProperty : FOverridableProperty
---@field DefaultValue boolean
---@field CurrentValue boolean
local FBoolOverridableProperty = {}



---@class FBuckRecoilKeys
---@field BuckRecoilKeys TArray<FRecoilKeys>
local FBuckRecoilKeys = {}



---@class FBulletProjectileHitArgs
---@field Type EAmmoType
---@field Caliber EAmmoCaliber
local FBulletProjectileHitArgs = {}



---@class FCaptureConfig
---@field CaptureAngle float
---@field CaptureWarmup float
---@field TileLimitsForZCoords float
---@field LoadTileOverlapSize float
---@field CaptureTileOverlap float
---@field CaptureStartLocation FVector
---@field WorldPartitionTiles int32
---@field LargeImagesNum int32
---@field IterativeCellSize float
---@field SingleTileMinimapResolution uint32
---@field TargetGamma float
---@field bCreateFoliage boolean
local FCaptureConfig = {}



---@class FChangeFireTypeAnimation
---@field FromFireType EFireType
---@field ToFireType EFireType
---@field Animations FCharacterWeaponAnimations
local FChangeFireTypeAnimation = {}



---@class FChangeFireTypeAnimations
---@field AnimationsArray TArray<FChangeFireTypeAnimation>
local FChangeFireTypeAnimations = {}



---@class FCharacterDetectorAnimations
---@field Character UAnimMontage
---@field CharacterWithWeapon TMap<int32, FCharacterWeaponAnimations>
---@field Detector UAnimMontage
---@field Weapon UAnimMontage
local FCharacterDetectorAnimations = {}



---@class FCharacterDetectorFailedLandingAnimations
---@field FailedLanding TMap<EMainHandEquipmentType, UAnimMontage>
local FCharacterDetectorFailedLandingAnimations = {}



---@class FCharacterDetectorWeaponAnimations
---@field CharacterLeftHand UAnimMontage
local FCharacterDetectorWeaponAnimations = {}



---@class FCharacterItemAnimations
---@field Character UAnimMontage
---@field Item UAnimMontage
local FCharacterItemAnimations = {}



---@class FCharacterItemWeightedAnimations
---@field Character UAnimSequence
---@field Item UAnimSequence
---@field Weight float
local FCharacterItemWeightedAnimations = {}



---@class FCharacterWeaponAnimations
---@field Character UAnimMontage
---@field CharacterLeftHand UAnimMontage
---@field Weapon UAnimMontage
---@field PlayRate float
local FCharacterWeaponAnimations = {}



---@class FCodelockInteractionAnimations
---@field CodelockMontage UAnimMontage
local FCodelockInteractionAnimations = {}



---@class FCommonHitArgs
---@field Damage float
---@field ImpulseStr float
---@field ArmorDamage float
---@field ArmorPiercing float
---@field Bleeding float
---@field BleedingChanceIncrement float
---@field ImpulseDir FVector
---@field DamageDealerUID FUID
---@field HitResult FHitResult
---@field DamageType EDamageType
---@field bDirectDamageSkipCalculations boolean
---@field bShouldIgnoreArmor boolean
---@field ApplicableEffects TArray<FEffectValueOverridePair>
---@field DamageSource EDamageSource
---@field Weapon FWeapon
---@field bFlownThroughObject boolean
---@field LaunchTimestamp float
---@field bIsFractionDamage boolean
local FCommonHitArgs = {}



---@class FCompassTypeSettings
---@field bIsCompassType boolean
---@field bVisibleIfTrack boolean
---@field CompassPosition ECompassPosition
---@field ZOrder int32
local FCompassTypeSettings = {}



---@class FComplexAttachAnimations
---@field WeaponIdleType EWeaponIdleType
---@field AttachAttachingAnimation UAnimMontage
---@field AttachDetachingAnimation UAnimMontage
---@field CharacterAttachModeIn UAnimMontage
---@field WeaponAttachModeIn UAnimMontage
---@field AttachAttachModeIn UAnimMontage
---@field CharacterAttachModeOut UAnimMontage
---@field WeaponAttachModeOut UAnimMontage
---@field AttachAttachModeOut UAnimMontage
---@field bIsBindedToWeaponBehaviour boolean
---@field CharacterAttachShoot UAnimMontage
---@field WeaponAttachShoot UAnimMontage
---@field AttachAttachShoot UAnimMontage
---@field CharacterAttachReload UAnimMontage
---@field WeaponAttachReload UAnimMontage
---@field AttachAttachReload UAnimMontage
---@field CharacterAttachReloadTactical UAnimMontage
---@field WeaponAttachReloadTactical UAnimMontage
---@field AttachAttachReloadTactical UAnimMontage
---@field AttachAttachShootEnd UAnimMontage
---@field AttachJamAnimations TArray<UAnimMontage>
---@field WeaponAnimCollection UPlayerFirearmAnimCollection
local FComplexAttachAnimations = {}



---@class FContextualActionGlobalVariablePrototypeSID
---@field Value FString
local FContextualActionGlobalVariablePrototypeSID = {}



---@class FContextualActionModelCollection : FBaseModelCollection
local FContextualActionModelCollection = {}


---@class FContextualActionNotifyWeaponEquipData
---@field ItemSID FPrototypeSID
---@field SlotToEquip EMainHandEquipmentType
local FContextualActionNotifyWeaponEquipData = {}



---@class FContextualActionsGameGraphInfo
---@field GameGraphVertices TArray<uint32>
local FContextualActionsGameGraphInfo = {}



---@class FContextualItemAttachment
---@field ContextualItemAttachType EContextualItemAttachType
---@field SocketName FName
---@field AttachmentName FName
---@field MeshToBeAttached UStaticMesh
---@field SkeletalMeshToBeAttached USkeletalMesh
---@field NiagaraAsset UNiagaraSystem
local FContextualItemAttachment = {}



---@class FContextualItemDetachment
---@field AttachmentName FName
local FContextualItemDetachment = {}



---@class FCoverData
---@field ReliablePoly FNavMeshPolyInfo
---@field SegStart FVector
---@field SegEnd FVector
---@field Type ESmartCoverType
---@field Actions uint16
local FCoverData = {}



---@class FCoverIndexRange
---@field IndexFirst int32
---@field IndexLast int32
local FCoverIndexRange = {}



---@class FCoverStorageImplementation
---@field Bound FBox
---@field NavMeshType ENavmeshType
---@field CoverType ESmartCoverType
---@field CoversArray TArray<FCoverData>
---@field CoversPerPolyMap TMap<uint64, FCoverIndexRange>
local FCoverStorageImplementation = {}



---@class FCreatorTickFunction : FTickFunction
local FCreatorTickFunction = {}


---@class FCriticalHitAnimations
---@field HitBones TSet<FName>
---@field DirectionalAnimations TArray<FDirectionalAnimation>
local FCriticalHitAnimations = {}



---@class FCurvePointSettings
---@field SettingsElements TArray<USettingsElementPercent>
local FCurvePointSettings = {}



---@class FCutsceneBlinkConfig
---@field MinTimeInterval float
---@field MaxTimeInterval float
local FCutsceneBlinkConfig = {}



---@class FDamageInteractVFXData
---@field InteractDamageVFX UNiagaraComponent
local FDamageInteractVFXData = {}



---@class FDeadBodyInteractionData : FActorInteractionData
---@field bOverweight boolean
local FDeadBodyInteractionData = {}



---@class FDeadZoneMapping : FTableRowBase
---@field Keys TArray<FKey>
---@field TargetMappings TArray<UInputMappingContext>
---@field MinDeadZone float
---@field MaxDeadZone float
---@field Step float
local FDeadZoneMapping = {}



---@class FDeadZoneSettings
---@field LowerThreshold float
---@field UpperThreshold float
---@field Type EDeadZoneType
local FDeadZoneSettings = {}



---@class FDeathAnimationPerDirection
---@field Animations TArray<FDeathAnimationsContainer>
local FDeathAnimationPerDirection = {}



---@class FDeathAnimationPerSource
---@field PossibleAnimationsForHitSource TMap<EAnimHitSourceType, FDeathAnimationPerDirection>
---@field Default UAnimSequenceBase
local FDeathAnimationPerSource = {}



---@class FDeathAnimationsContainer
---@field Directions int32
---@field Animations TArray<UAnimSequenceBase>
local FDeathAnimationsContainer = {}



---@class FDeathData
---@field DamageSources TArray<EDamageSource>
---@field DamageTypes TArray<EDamageType>
local FDeathData = {}



---@class FDeathScreenImageData
---@field DeathImage TSoftObjectPtr<UTexture2D>
---@field DeathData FDeathData
local FDeathScreenImageData = {}



---@class FDeathScreenSIDData
---@field SID FName
---@field DeathData FDeathData
local FDeathScreenSIDData = {}



---@class FDebugRestrictionSettings
---@field InRestrictedAreas TArray<TSubclassOf<UNavArea>>
---@field OutRestrictedAreas TArray<TSubclassOf<UNavArea>>
local FDebugRestrictionSettings = {}



---@class FDefaultRestrictions
---@field bEnabled boolean
---@field bIgnoreDuringEmission boolean
---@field GlobalRestriction ESpaceRestrictionType
---@field AgentDomainRestrictions TArray<FAgentDomainRestrictions>
---@field FactionRestrictions TArray<FFactionRestrictions>
local FDefaultRestrictions = {}



---@class FDestructibleModelCollection : FBaseModelCollection
local FDestructibleModelCollection = {}


---@class FDestructibleObjectCollection : FBaseTickAggregationCollection
local FDestructibleObjectCollection = {}


---@class FDestructionAction
local FDestructionAction = {}


---@class FDialogAnimationType
---@field Value EDialogAnimationType
---@field DialogAnimationCategory EDialogAnimationCategory
local FDialogAnimationType = {}



---@class FDialogAnswerInfo
---@field bAvailable boolean
---@field AnswerColor EDialogAnswerColor
local FDialogAnswerInfo = {}



---@class FDialogAnswersStyles
---@field AnswerDisabled FString
---@field AnswerDefault FString
---@field AnswerDefaultHovered FString
---@field AnswerDefaultRead FString
---@field AnswerDefaultHoveredRead FString
---@field AnswerQuest FString
---@field AnswerQuestHovered FString
---@field AnswerQuestRead FString
---@field AnswerQuestHoveredRead FString
---@field AnswerWithDangerAction FString
---@field AnswerWithDangerActionHovered FString
---@field AnswerWithGetAction FString
---@field AnswerWithGetActionHovered FString
---@field AnswerWithGiveAction FString
---@field AnswerWithGiveActionHovered FString
---@field ActionDisabled FString
---@field ActionDefault FString
---@field ActionDefaultHovered FString
---@field ActionQuest FString
---@field ActionQuestHovered FString
---@field ActionDanger FString
---@field ActionDangerHovered FString
---@field ActionGet FString
---@field ActionGetHovered FString
---@field ActionGive FString
---@field ActionGiveHovered FString
---@field BackgroundDisabled FString
---@field BackgroundDefault FString
---@field BackgroundDefaultHovered FString
---@field BackgroundDefaultRead FString
---@field BackgroundDefaultHoveredRead FString
---@field BackgroundQuest FString
---@field BackgroundQuestHovered FString
---@field BackgroundQuestRead FString
---@field BackgroundQuestHoveredRead FString
---@field BackgroundDanger FString
---@field BackgroundDangerHovered FString
---@field BackgroundGet FString
---@field BackgroundGetHovered FString
---@field BackgroundGive FString
---@field BackgroundGiveHovered FString
---@field IconDisabled FString
---@field IconDefault FString
---@field IconDefaultHovered FString
---@field IconDefaultRead FString
---@field IconDefaultHoveredRead FString
---@field IconQuest FString
---@field IconQuestHovered FString
---@field IconQuestRead FString
---@field IconQuestHoveredRead FString
---@field IconDanger FString
---@field IconDangerHovered FString
---@field IconGet FString
---@field IconGetHovered FString
---@field IconGive FString
---@field IconGiveHovered FString
local FDialogAnswersStyles = {}



---@class FDialogFolderInfo
---@field FolderName FText
---@field Answers TArray<FDialogAnswerInfo>
---@field MemberUID FUID
local FDialogFolderInfo = {}



---@class FDialogMemberData
---@field DialogMemberName FString
---@field bOptionalMember boolean
local FDialogMemberData = {}



---@class FDialogUIInfo
local FDialogUIInfo = {}


---@class FDifficultyData
---@field DifficultyImage UTexture2D
---@field DifficultyButtonAction USetDifficulty
local FDifficultyData = {}



---@class FDifficultyPrototypeSID : FPrototypeSID
local FDifficultyPrototypeSID = {}


---@class FDirectionBlendData
---@field Forward float
---@field Backward float
---@field Left float
---@field Right float
---@field ForwardLeft float
---@field ForwardRight float
---@field BackwardLeft float
---@field BackwardRight float
---@field BlendInterpSpeed float
local FDirectionBlendData = {}



---@class FDirectionalAnimation
---@field MinAngle float
---@field MaxAngle float
---@field AnimationAngle float
---@field Animation UAnimMontage
local FDirectionalAnimation = {}



---@class FDirectionalLightState
---@field Light FLightState
---@field LightShafts FLightShaftsState
local FDirectionalLightState = {}



---@class FDisplaySettings
---@field TitleBackgroundStyleId FName
---@field TitleBorderLineStyleId FName
---@field InsideMarkerStyleId FName
---@field MarkerBackgroundStyleId FName
local FDisplaySettings = {}



---@class FDoorMovableData
---@field ComponentName FName
---@field OpenAngularSpeed float
---@field OpenAngle float
---@field StealthOpenAngularSpeed float
---@field StealthOpenAngle float
---@field DoorMeshComponent UStaticMeshComponent
---@field InitialAngle float
---@field CurrentDirection EDoorMoveDirection
local FDoorMovableData = {}



---@class FDoubleLineSettings
---@field FindTag FString
---@field CorrectTag FString
local FDoubleLineSettings = {}



---@class FDragDeadBodyAnimations
---@field PickUpBodyFaceUp UAnimMontage
---@field DropBody UAnimMontage
local FDragDeadBodyAnimations = {}



---@class FDynamicEnvironmentParticleDataRow : FTableRowBase
---@field ParticleType EDynamicParticleType
---@field Providers TSet<TSubclassOf<UNiagaraParameterProvider>>
---@field bCanSpawnOnWater boolean
---@field bStopOnCutscene boolean
---@field IndoorSpawnPrototype FParticleIndoorSpawnPrototype
---@field BiomeSpawnPrototype FParticleBiomePrototype
---@field PlayerDistancePrototype FParticleDistancePrototype
---@field WindIntensityPrototype FParticleWindIntensityPrototype
---@field ActorSpawnPrototypes TMap<EWeather, FParticleActorSpawnPrototype>
---@field PlayerComponentSpawnPrototypes TMap<EWeather, FParticlePlayerComponentSpawnPrototype>
---@field ActorComponentSpawnPrototypes TMap<EWeather, FParticleActorComponentSpawnPrototype>
---@field ActorParticleVFXes TArray<TSoftObjectPtr<UNiagaraSystem>>
---@field PlayerParticleVFX TSoftObjectPtr<UNiagaraSystem>
---@field LightningStrikeVFX FLightningStrikeParticleVFXPrototype
---@field LightningStrikeDamagePrototype FLightningStrikeDamagePrototype
local FDynamicEnvironmentParticleDataRow = {}



---@class FDynamicObstacleAvoidanceAgentSettings
---@field AgentAvoidanceRadiusMargin float
---@field MinMovementSpeed float
---@field AgentTimeOfImpactToConsiderWaiting float
---@field SpeedRecoveryTimeout float
---@field AgentPriorityTimeout float
---@field AgentRepathingTimeout float
---@field AgentFailMovementTimeout float
---@field AllowPriorityAgent boolean
---@field bMergeObstacles boolean
---@field bCanFailMovement boolean
local FDynamicObstacleAvoidanceAgentSettings = {}



---@class FDynamicObstacleAvoidanceQuerrySettings
---@field StartTrackingDistance float
---@field EndTrackingOffset float
---@field PreferredAvoidanceCorridorWidth float
---@field MaxCorridorSectionLength float
---@field ObstaclesQueryDistance float
---@field AgentMinAvoidanceSampleStep float
local FDynamicObstacleAvoidanceQuerrySettings = {}



---@class FDynamicObstacleAvoidanceSystemSettings
---@field bEnabled boolean
---@field MaxUpdateAgentsPerTick int32
local FDynamicObstacleAvoidanceSystemSettings = {}



---@class FEffectPrototypeSID
---@field EffectSID FPrototypeSID
local FEffectPrototypeSID = {}



---@class FEffectValueOverridePair
local FEffectValueOverridePair = {}


---@class FElectroAnomalyBakedData
---@field CirclePointsCount int32
---@field TraceStartPoints TArray<FVector>
---@field TraceEndPoints TArray<FVector>
---@field TraceUpVectors TArray<FVector>
local FElectroAnomalyBakedData = {}



---@class FElectroAnomalyBakedDataFloat
---@field CirclePointsCount int32
---@field TraceStartPoints TArray<FVector3f>
---@field TraceEndPoints TArray<FVector3f>
---@field TraceUpVectors TArray<FVector3f>
local FElectroAnomalyBakedDataFloat = {}



---@class FEncounterSpawnPointData
---@field SpawnTransform FTransform
---@field ObjPrototypeSID FObjPrototypeSID
---@field PsyNPCType EPsyNPCType
local FEncounterSpawnPointData = {}



---@class FEnvironmentParticlePrototype
local FEnvironmentParticlePrototype = {}


---@class FEquipUnequipAnimations
---@field Equip UAnimMontage
---@field Unequip UAnimMontage
---@field FastUnequip UAnimMontage
local FEquipUnequipAnimations = {}



---@class FEquipmentItemSlot
local FEquipmentItemSlot = {}


---@class FEquipmentNavigationPath
---@field MinAngle double
---@field MaxAngle double
---@field TargetSlot EInventoryEquipmentSlot
local FEquipmentNavigationPath = {}



---@class FEquipmentNavigationPaths
---@field NavigationPaths TArray<FEquipmentNavigationPath>
local FEquipmentNavigationPaths = {}



---@class FExplosionEffectCollection : FBaseTickAggregationCollection
local FExplosionEffectCollection = {}


---@class FExplosionHitArgs
---@field ExplosionLocation FVector
---@field ExplosionRadius float
---@field ExplosiveActor TWeakObjectPtr<AActor>
---@field ExplosiveActorPrototypeID FString
---@field ExplosionInstigatorUID FUID
local FExplosionHitArgs = {}



---@class FExponentialHeightFogState
---@field FogDensity FFloatParameter
---@field FogHeightFalloff FFloatParameter
---@field SecondFogDensity FFloatParameter
---@field SecondFogFalloff FFloatParameter
---@field SecondFogOffset FFloatParameter
---@field ScatteringDistribution FFloatParameter
---@field Albedo FLinearColorParameter
---@field Emissive FLinearColorParameter
---@field ExtinctionScale FFloatParameter
---@field SkyAtmosphereAmbientContributionColorScale FLinearColorParameter
---@field DirectionalInscatteringColor FLinearColorParameter
---@field DirectionalInscatteringExponent FFloatParameter
local FExponentialHeightFogState = {}



---@class FEyesLookAtData
---@field CutsceneBlinkConfigs TMap<ECutsceneBlinkProfile, FCutsceneBlinkConfig>
---@field BlinkAnimation UAnimMontage
---@field BlinkOnEyeMoveThreshold float
---@field BlinkOnEyeMoveInterval float
---@field ControlRigEnableInterpSpeed float
---@field ControlRigDisableInterpSpeed float
---@field CutsceneProceduralEyesWeight float
---@field CutsceneProceduralEyesAmplitude float
---@field CutsceneProceduralEyesIntensity float
---@field bShouldBeEnabled boolean
---@field ControlRigAlpha float
---@field CutsceneEyesLookAtWeight float
---@field LookAtLocation FVector
---@field LookAtActor AActor
---@field LookAtSkeletalMesh USkeletalMeshComponent
---@field CutsceneBlinkProfile ECutsceneBlinkProfile
---@field CutsceneEyesIdleProfile ECutsceneEyesIdleProfile
---@field TimeToNextBlink float
---@field BlinkOnEyeMoveCooldown float
---@field CutsceneHeadControlRigAlpha float
---@field CutsceneHeadLookAtWeight float
---@field bShouldOffOnEdges boolean
local FEyesLookAtData = {}



---@class FFactionOverridableProperty : FOverridableProperty
---@field DefaultValue FFactionSelector
---@field CurrentValue FFactionSelector
local FFactionOverridableProperty = {}



---@class FFactionRestrictions
---@field Faction FFactionSelector
---@field RestrictionType ESpaceRestrictionType
local FFactionRestrictions = {}



---@class FFactionSelector
---@field Value FString
---@field AllowedFactionsFilter TSet<FString>
local FFactionSelector = {}



---@class FFactionSelectorArray
---@field Factions TArray<FFactionSelector>
local FFactionSelectorArray = {}



---@class FFeedbackSettings
local FFeedbackSettings = {}


---@class FFireTypeDisplayInfo
---@field DisplayTextSid FString
---@field DisplayTexture UTexture2D
local FFireTypeDisplayInfo = {}



---@class FFireTypeSlotSettings
---@field BackgroundTexture UTexture
local FFireTypeSlotSettings = {}



---@class FFloatParameter : FParameter
---@field Curve UCurveFloat
local FFloatParameter = {}



---@class FFloatValueLocalisationPair
---@field PercentValue float
---@field Loc10N FText
local FFloatValueLocalisationPair = {}



---@class FFogParams
---@field Density float
---@field Height FFloatInterval
local FFogParams = {}



---@class FForceFeedbackArgs
local FForceFeedbackArgs = {}


---@class FForceFeedbackParams
---@field Tag FName
---@field bLooping boolean
---@field bIgnoreTimeDilation boolean
---@field bPlayWhilePaused boolean
local FForceFeedbackParams = {}



---@class FFourLegIKData : FBaseLegIKData
---@field FrontLeftFootIKData FLegIKData
---@field FrontRightFootIKData FLegIKData
---@field BackLeftFootIKData FLegIKData
---@field BackRightFootIKData FLegIKData
local FFourLegIKData = {}



---@class FGSCComponentReference
---@field OtherActor TSoftObjectPtr<AActor>
---@field ComponentProperty FName
---@field PathToComponent FString
local FGSCComponentReference = {}



---@class FGSC_RelationColors : FTableRowBase
---@field ColourStyleID FName
local FGSC_RelationColors = {}



---@class FGSC_WidgetInputIconsOverride
---@field PathToPCDefaultInputIconsDT FString
---@field PathToPCDisabledInputIconsDT FString
local FGSC_WidgetInputIconsOverride = {}



---@class FGSC_WidgetProgressStyle : FTableRowBase
---@field ProgressBarStyle FProgressBarStyle
local FGSC_WidgetProgressStyle = {}



---@class FGSC_WidgetStyle : FTableRowBase
---@field Colour FLinearColor
local FGSC_WidgetStyle = {}



---@class FGUIDIndex
local FGUIDIndex = {}


---@class FGameGraphContextualAction
---@field QuestGuid FGuid
local FGameGraphContextualAction = {}



---@class FGameGraphContextualActions
---@field ContextualActions TArray<FGameGraphContextualAction>
local FGameGraphContextualActions = {}



---@class FGameGraphSceneProxyDrawParams
---@field bEnableMinMaxPathColoring boolean
---@field bEnableAgentSupportMaskColoring boolean
---@field bEnableComponentColoring boolean
---@field bEnablePolyBindConnectivityColoring boolean
---@field bDebugContextualActions boolean
---@field PolyBindConnectivityNavDataIdx int32
---@field DefaultGGColor FColor
local FGameGraphSceneProxyDrawParams = {}



---@class FGlobalVariable
local FGlobalVariable = {}


---@class FGridInfo
---@field GridName FName
---@field OverrideStreamingDistance double
local FGridInfo = {}



---@class FGroomCategory
local FGroomCategory = {}


---@class FGroomVariation
local FGroomVariation = {}


---@class FGroupUID : FUID
local FGroupUID = {}


---@class FHeadFlashlightComponentCollection : FBaseTickAggregationCollection
local FHeadFlashlightComponentCollection = {}


---@class FHintControllerSettings
---@field InputAction FName
---@field CustomInputIconName FName
---@field MappingContext EMappingContext
---@field GamepadAdvancedSettings FAdvancedControllerSettings
---@field KeyboardAdvancedSettings FAdvancedControllerSettings
---@field AsyncSettings FAsyncSettings
---@field bEnableInputTypeExclusion boolean
---@field ExcludedInputTypes TArray<EGSCInputDeviceType>
local FHintControllerSettings = {}



---@class FHintStyleSettings
---@field DescriptionSettings EHintDescriptionSettings
---@field HintDescriptionFontStyleSID FName
---@field HintDescriptionSID FString
---@field bUseDefaultDescriptionGap boolean
---@field HintAndDescriptionGap float
---@field bUseDefaultHintHeight boolean
---@field HintHeight float
---@field HoldHintIconScale FVector2D
---@field bShowBlockedState boolean
---@field bSkipDefautPressedAnimation boolean
local FHintStyleSettings = {}



---@class FHintViewSettings
---@field InputAction FName
---@field MappingContext EMappingContext
---@field InputMappingIndex int32
---@field ProgressType EHintProgressType
---@field HintHeight float
---@field HoldHintIconScale FVector2D
---@field CustomInputAction FName
---@field bSkipPressedAnimation boolean
local FHintViewSettings = {}



---@class FHintsData : FTableRowBase
---@field PlatformIcons TMap<EGSCInputDeviceType, FSlateBrush>
---@field BackgroundColor FLinearColor
---@field bOverrideBackgroundBrush boolean
---@field BackgroundBrush FSlateBrush
---@field BackgroundPadding FMargin
local FHintsData = {}



---@class FHintsDataTable : FTableRowBase
---@field bCheckPlatform boolean
---@field PlatformIcons TMap<EGSCInputDeviceType, FSlateBrush>
---@field PlatformData TMap<EGSCInputDeviceType, FHintsData>
local FHintsDataTable = {}



---@class FHintsInputDataTable : FTableRowBase
---@field PlatformIcons FSlateBrush
local FHintsInputDataTable = {}



---@class FHitBlocker
---@field JointName FName
---@field ElementIndex int32
---@field MaxPiercing float
local FHitBlocker = {}



---@class FHitDamageCollection : FBaseTickAggregationCollection
local FHitDamageCollection = {}


---@class FHoldInteractionData : FInteractionData
---@field HoldTime float
---@field DecreaseTime float
---@field bDoNotDecrease boolean
local FHoldInteractionData = {}



---@class FHumanAnimLocomotionData
---@field Velocity float
---@field AngleDirection float
---@field ClampedDirection float
---@field BPDirection uint8
---@field Direction EDirections
---@field DirectionBlendParams FDirectionBlendData
local FHumanAnimLocomotionData = {}



---@class FHumanDeathAnimArray
---@field Animations TArray<UAnimMontage>
local FHumanDeathAnimArray = {}



---@class FHumanDeathAnimations
---@field BulletDeathAnimations TMap<EAnimHitBodyPart, FHumanDeathDirectionalAnimMap>
---@field ExplosionDeathAnimations TMap<EAnimDirections, FHumanDeathAnimArray>
---@field DeathAnimations TMap<EHumanAnimDamageSource, FHumanDeathAnimArray>
local FHumanDeathAnimations = {}



---@class FHumanDeathDirectionalAnimMap
---@field DirectionalAnimations TMap<EAnimDirections, FHumanDeathAnimArray>
local FHumanDeathDirectionalAnimMap = {}



---@class FHumanExternalAnimations
---@field DefaultHits FHumanHitAnimations
---@field ShotgunHits FHumanHitAnimations
---@field KnockdownAnimations FHumanKnockDownAnimations
---@field LookAt FHumanLookAtAnimations
---@field CombatOver TArray<UAnimMontage>
---@field IdleStand UAnimSequence
---@field IdleCrouch UAnimSequence
---@field IdleRelaxed UAnimSequence
---@field IdleRelaxedAdditive UAnimSequence
---@field StandToCrouch UAnimSequence
---@field CrouchToStand UAnimSequence
---@field StandToRelax UAnimSequence
---@field RelaxToStand UAnimSequence
local FHumanExternalAnimations = {}



---@class FHumanFirearmInternalAnimations
---@field ShootingInHip FCharacterWeaponAnimations
---@field Reloading TMap<EAnimationStates, FHumanStateReloadAnimations>
---@field ReloadingInCover TMap<EAnimationStates, FHumanStateReloadAnimations>
---@field Melee TArray<UAnimMontage>
local FHumanFirearmInternalAnimations = {}



---@class FHumanHitAnimations
---@field Head UBlendSpace1D
---@field UpperBody UBlendSpace1D
---@field LowerBody UBlendSpace1D
---@field LeftLeg UBlendSpace1D
---@field RightLeg UBlendSpace1D
local FHumanHitAnimations = {}



---@class FHumanHumanAttachAnimBlueprintsBySID
---@field AttachAnimBlueprint UClass
local FHumanHumanAttachAnimBlueprintsBySID = {}



---@class FHumanKnockDownAnimations
---@field KnockDownInForward UAnimSequence
---@field KnockDownInBackward UAnimSequence
---@field KnockDownInLeft UAnimSequence
---@field KnockDownInRight UAnimSequence
---@field KnockDownOut UAnimSequence
local FHumanKnockDownAnimations = {}



---@class FHumanLookAtAnimations
---@field CoverStandBlindLeft UBlendSpace
---@field CoverCrouchBlindLeft UBlendSpace
---@field CoverCrouchBlindTop UBlendSpace
local FHumanLookAtAnimations = {}



---@class FHumanStateReloadAnimations
---@field MagazineReload TMap<FName, FMagazineReloadAnimations>
local FHumanStateReloadAnimations = {}



---@class FHumanTransitionAnimations
---@field TransitionTo UAnimMontage
---@field TransitionFrom UAnimMontage
local FHumanTransitionAnimations = {}



---@class FHumanWeaponAnimations
---@field AnimCollection UHumanAnimCollection
---@field HumanAnimBlueprint UClass
---@field AttachBlueprintbySID TMap<FString, FHumanHumanAttachAnimBlueprintsBySID>
---@field EquipWeapon FCharacterWeaponAnimations
---@field UnequipWeapon FCharacterWeaponAnimations
---@field EquipWeaponFast FCharacterWeaponAnimations
---@field UnequipWeaponFast FCharacterWeaponAnimations
---@field EquipWeaponRelax FCharacterWeaponAnimations
---@field UnequipWeaponRelax FCharacterWeaponAnimations
local FHumanWeaponAnimations = {}



---@class FHumanWeaponExternalAnimations
---@field IdleCommon UAnimSequence
---@field IdleCrouchCommon UAnimSequence
---@field Idle UAnimSequence
---@field IdleRelaxed UAnimSequence
---@field IdleAdd UAnimSequence
---@field IdleRelaxedAdd UAnimSequence
---@field LowCoverIdleAdditive UAnimSequence
---@field HighCoverIdleAdditive UAnimSequence
local FHumanWeaponExternalAnimations = {}



---@class FIconSettings
---@field StyleAction StyleManagerActionType
---@field bIconCheckPlatform boolean
---@field Brush FSlateBrush
---@field bEnableResize boolean
---@field IconSize FVector2D
local FIconSettings = {}



---@class FInfoScreenSettings
---@field TitleText FText
---@field DescriptionText FText
---@field Image FSoftObjectPath
local FInfoScreenSettings = {}



---@class FInitScreenData
---@field Screen TSubclassOf<UWidgetBase>
---@field Sound TSoftObjectPtr<UAkAudioEvent>
local FInitScreenData = {}



---@class FInitialCollectionSize
---@field AgentView int32
---@field AgentModel int32
---@field AnomalyView int32
---@field AnomalyModel int32
---@field ArtifactView int32
---@field ProjectileView int32
---@field AIComponent int32
---@field AkComponent int32
---@field AkLateReverbComponent int32
---@field AkRoomComponent int32
---@field AkSurfaceReflectorSetComponent int32
---@field ItemContainer int32
---@field DestructibleView int32
---@field DestructibleModel int32
---@field WetnessComponent int32
---@field FlashlightComponent int32
---@field ContextualActionModel int32
---@field QuestNode int32
---@field LODSyncComponent int32
---@field HitDamages int32
---@field ExplosionEffect int32
---@field WaterContactController int32
local FInitialCollectionSize = {}



---@class FInjectorAnimations
---@field PlayerHealAnimation UAnimMontage
---@field HumanHealAnimation UAnimMontage
local FInjectorAnimations = {}



---@class FInputBufferIPUStruct
local FInputBufferIPUStruct = {}


---@class FInputMappingSettingsElementModels
---@field IsAnchor boolean
---@field AnchorLocalization FString
---@field SaveAnchor boolean
---@field Action UInputAction
---@field MappingContext EMappingContext
---@field IsMappable boolean
---@field PlayerMappableOption FName
---@field AlternativePlayerMappableOption FName
---@field IsActive boolean
---@field bHaveBindedActions boolean
---@field BindedPlayerMappableOption FName
---@field BindedAltPlayerMappableOption FName
---@field DisplayCategory FText
---@field NameLocSID FString
---@field DescriptionLocSID FString
local FInputMappingSettingsElementModels = {}



---@class FInspectArtifactAnimations
---@field InspectArtifact UAnimMontage
---@field InspectArtifactWithBackpack UAnimMontage
local FInspectArtifactAnimations = {}



---@class FIntInterval
---@field Min int32
---@field Max int32
local FIntInterval = {}



---@class FInteractEffectData
---@field PrototypeSID FPrototypeSID
local FInteractEffectData = {}



---@class FInteractObject
---@field PrototypeSID FPrototypeSID
---@field Count int32
---@field bConsumedOnUse boolean
local FInteractObject = {}



---@class FInteractObjectData
---@field PrototypeSID FPrototypeSID
---@field Count int32
---@field MinDurability float
---@field MaxDurability float
---@field bSpawnWeaponWithoutAmmo boolean
local FInteractObjectData = {}



---@class FInteractableAnimations
---@field Item UAnimMontage
---@field Character UAnimMontage
---@field CharacterWithDetector UAnimMontage
local FInteractableAnimations = {}



---@class FInteractableDisplayInfo
---@field TitleText FText
---@field InteractActionText FText
---@field InteractActionTextSmall FText
---@field InteractionType EInteractionType
---@field DisplayPriority EDisplayPriority
---@field bOverweight boolean
---@field bShowDurability boolean
---@field bShowUpgrade boolean
local FInteractableDisplayInfo = {}



---@class FInteractionData
---@field InteractableTextToolAction FString
local FInteractionData = {}



---@class FInteractionHitInfo
---@field HitActor TWeakObjectPtr<AActor>
---@field HitComponent TWeakObjectPtr<UPrimitiveComponent>
---@field Interactions TArray<TWeakObjectPtr<UInteractionComponent>>
local FInteractionHitInfo = {}



---@class FItemContainerData : FActorInteractionData
---@field bShowDurability boolean
---@field DurabilityPercent float
---@field bShowUpgrade boolean
local FItemContainerData = {}



---@class FItemContainerModelCollection : FBaseTickAggregationCollection
local FItemContainerModelCollection = {}


---@class FItemContainerUID : FUID
local FItemContainerUID = {}


---@class FItemLock
---@field ItemCount int32
local FItemLock = {}



---@class FItemUID : FUID
local FItemUID = {}


---@class FJournalQuest
local FJournalQuest = {}


---@class FJournalQuestStageData
local FJournalQuestStageData = {}


---@class FKeyframedTransformData
---@field Locations TArray<FVector>
---@field Rotations TArray<FQuat>
---@field TimeOffsets TArray<double>
local FKeyframedTransformData = {}



---@class FLODSyncComponentCollection : FBaseTickAggregationCollection
---@field LODSyncComponents TArray<ULODSyncComponent>
local FLODSyncComponentCollection = {}



---@class FLegIKData
---@field FootName FName
---@field FootSocketName FName
local FLegIKData = {}



---@class FLightShaftsState
---@field BloomTint FLinearColorParameter
local FLightShaftsState = {}



---@class FLightState
---@field Intensity FFloatParameter
---@field LightColor FLinearColorParameter
---@field Temperature FFloatParameter
---@field ShadowAmount FFloatParameter
---@field MoonOpacity FFloatParameter
---@field CloudScatteredLuminanceScale FLinearColorParameter
---@field SunDiskColorScale FLinearColorParameter
---@field VolumetricScatteringIntensity FFloatParameter
local FLightState = {}



---@class FLightningBallNavigationData
---@field bIsPatrolPoint boolean
---@field PointLocation FVector
---@field NeighborPoints TArray<int32>
local FLightningBallNavigationData = {}



---@class FLightningStrikeDamagePrototype : FEnvironmentParticlePrototype
---@field PlayerHitProbability float
---@field PlayerHitCheckTime float
---@field HeightPriorityRadius float
---@field HeightPriorityUsageProbability float
---@field PlayerHitEffects TArray<FEffectPrototypeSID>
---@field NPCHitEffects TArray<FEffectPrototypeSID>
local FLightningStrikeDamagePrototype = {}



---@class FLightningStrikeParticleVFXPrototype : FEnvironmentParticlePrototype
---@field LightningStrikeDefault TSoftObjectPtr<UNiagaraSystem>
---@field LightningStrikeMetal FLightningStrikeVFXMaterialPrototype
---@field LightningStrikeWater FLightningStrikeVFXMaterialPrototype
---@field LightningStrikeWood FLightningStrikeVFXMaterialPrototype
local FLightningStrikeParticleVFXPrototype = {}



---@class FLightningStrikeVFXMaterialPrototype
---@field NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@field PhysicalMaterialTypes TArray<EPhysicalMaterialType>
local FLightningStrikeVFXMaterialPrototype = {}



---@class FLineSplineData
---@field Curve UCurveFloat
---@field SelectedSplinePointIndex uint8
local FLineSplineData = {}



---@class FLineSplineWidgetData
---@field CurvePadding float
---@field SelectedPointColor FLinearColor
---@field DefaultPointColor FLinearColor
---@field SelectedColorRatio float
---@field SelectedColorTransitionRatio float
---@field CircleRadius float
---@field LineThickness float
local FLineSplineWidgetData = {}



---@class FLinearColorParameter : FParameter
---@field Curve UCurveLinearColor
local FLinearColorParameter = {}



---@class FLoadingScreenBehaviourSettings
---@field MinimumLoadingScreenDisplayTime float
---@field bAutoCompleteWhenLoadingComplete boolean
---@field bWaitForManualStop boolean
local FLoadingScreenBehaviourSettings = {}



---@class FLockStruct
---@field LockedByItems TArray<FItemLock>
---@field LockedByGlobalVariables TMap<FString, FGlobalVariable>
local FLockStruct = {}



---@class FLookAtAngleParams
---@field bAllowEyeRotate boolean
---@field MaxAngleOfEyeRotate FRotator
---@field bAllowHeadRotate boolean
---@field MaxAngleOfHeadRotate FRotator
---@field bAllowBodyRotate boolean
---@field MaxAngleOfBodyRotate FRotator
local FLookAtAngleParams = {}



---@class FLookAtMutantData
---@field AimingYaw double
---@field AimingPitch double
---@field MaxRotationAngleYaw float
---@field MaxRotationAnglePitch float
---@field RotationSpeed float
local FLookAtMutantData = {}



---@class FMagazineReloadAnimations
---@field MagazineReloadAnimations TMap<EAnimationReloadTypes, FCharacterWeaponAnimations>
---@field MagazineReloadStates TMap<EAnimationReloadTypes, FMagazineReloadStates>
local FMagazineReloadAnimations = {}



---@class FMagazineReloadStates
---@field LeftHandAnimationSupportedReloadStates uint8
---@field OverridenReloadBlendInArgs TMap<EMagazineReloadState, FAlphaBlendArgs>
local FMagazineReloadStates = {}



---@class FManagerTickFunction : FTickFunction
local FManagerTickFunction = {}


---@class FMapTypeSettings
---@field bIsMapType boolean
---@field ZoomInterval FZoomInterval
---@field TrackedZoomInterval FZoomInterval
---@field ZOrder int32
---@field bSupportHubFolding boolean
local FMapTypeSettings = {}



---@class FMarkerIconData : FTableRowBase
---@field MarkerStateIcons TMap<EMarkerState, FMarkerStateIconsData>
local FMarkerIconData = {}



---@class FMarkerIconPair
---@field Active UTexture2D
---@field Innactive UTexture2D
local FMarkerIconPair = {}



---@class FMarkerIconSettings
---@field Texture UTexture2D
---@field TextureTracked UTexture2D
---@field RelativeScale double
---@field ColorSID FName
local FMarkerIconSettings = {}



---@class FMarkerStateIconsData
---@field ColorStyle FName
---@field Compass FMarkerIconPair
---@field Map FMarkerIconPair
local FMarkerStateIconsData = {}



---@class FMarkerTypeSettings
---@field IconSettings FMarkerIconSettings
---@field bTrackable boolean
---@field bHaveDiscoveredState boolean
---@field CompassTypeSettings FCompassTypeSettings
---@field MapTypeSettings FMapTypeSettings
local FMarkerTypeSettings = {}



---@class FMaterialScalarDrivingProperties
---@field MaterialCollectionToUpdate UMaterialParameterCollection
---@field ParameterName FName
---@field InterpolationTime float
---@field TargetValue float
local FMaterialScalarDrivingProperties = {}



---@class FMeleeHitArgs
local FMeleeHitArgs = {}


---@class FMenuButtonData
---@field ButtonStyleClass TSoftClassPtr<UMenuButtonBase>
---@field ButtonNameSID FString
---@field ButtonAction UMenuButtonActionBase
---@field ButtonShortcuts TArray<FShortcutData>
---@field ButtonDefiners TArray<UMenuButtonStateDefiner>
local FMenuButtonData = {}



---@class FMenuHintSettings
---@field MappingContext EMappingContext
---@field KeyboardAndMouseMappingIndex int32
---@field GamepadMappingIndex int32
---@field TriggerIndex int32
---@field bEnableInputTypeExclusion boolean
---@field ExcludedInputTypes TArray<EGSCInputDeviceType>
local FMenuHintSettings = {}



---@class FMeshCategory
---@field MeshCategory FName
---@field MeshesData TArray<FMeshesData>
local FMeshCategory = {}



---@class FMeshSoundPlacerDataRow : FTableRowBase
---@field RaycastSphereRadius float
---@field RubberBandDistanceAtWalk float
---@field RubberBandDistanceAtRun float
---@field RubberBandDistanceAtSprint float
---@field RubberBandDistanceAtJogging float
---@field RubberBandSpeed float
---@field StopAkEvent TSoftObjectPtr<UAkAudioEvent>
---@field MeshCategories TArray<FMeshCategory>
local FMeshSoundPlacerDataRow = {}



---@class FMeshSoundPlacerEventData
---@field AkEvent TSoftObjectPtr<UAkAudioEvent>
---@field RelativeTransform FVector
local FMeshSoundPlacerEventData = {}



---@class FMeshesData
---@field StaticMesh TSoftObjectPtr<UStaticMesh>
---@field EventsData TArray<FMeshSoundPlacerEventData>
local FMeshesData = {}



---@class FModEntryActionHintVisibilityCondition
---@field bShouldTagListBeFocused boolean
---@field InputDeviceType EGSCInputDeviceType
local FModEntryActionHintVisibilityCondition = {}



---@class FModOperationTrackerEvent
local FModOperationTrackerEvent = {}


---@class FModelSpawnerParams
local FModelSpawnerParams = {}


---@class FModifyVFXValue
---@field AttachmentName FName
---@field ValueToBeModified FName
---@field ValueModifierPerSec float
local FModifyVFXValue = {}



---@class FModioLegendData
---@field BrowseShortcutsModel UModioLegendModel
---@field DetailsShortcutsModel UModioLegendModel
---@field DetailsShortcutsModelShort UModioLegendModel
---@field DetailsGalleryViewShortcutsModel UModioLegendModel
local FModioLegendData = {}



---@class FMontageSection
---@field Value FString
local FMontageSection = {}



---@class FMoveSettings
---@field SpeedMapZoom float
---@field Speed float
local FMoveSettings = {}



---@class FMovementParams
---@field WalkSpeed float
---@field RunSpeed float
---@field CrouchSpeed float
---@field LowCrouchSpeed float
---@field SprintSpeed float
---@field JoggingSpeed float
---@field ClimbSpeedCoef float
---@field JumpSpeedCoef float
---@field LimpSpeedCoef float
---@field WalkDiagonalBackCoef float
---@field RunDiagonalBackCoef float
---@field WalkBackCoef float
---@field RunBackCoef float
---@field MoveBackCrouchCoef float
---@field MoveBackLowCrouchCoef float
---@field AirControlCoef float
---@field WalkTransitionCoef float
---@field BaseTurnRate float
---@field BaseLookUpRate float
---@field MaxSlowdownValue float
---@field StaggerAngle float
---@field bCanDash boolean
local FMovementParams = {}



---@class FMovementPlayRateStructure
---@field ForwardValue float
---@field RightValue float
---@field PlayRate float
---@field LastForwardValue float
---@field LastRightValue float
local FMovementPlayRateStructure = {}



---@class FMovementRotationStructure
---@field TurnTime float
---@field TurnAngle float
---@field bEnableTurnInterp boolean
---@field TurnInterpSpeed float
---@field TurnInterpThreshold float
local FMovementRotationStructure = {}



---@class FMultiClickInteractionData : FInteractionData
---@field ClickPercentageIncrease float
---@field PercentageDecrease float
---@field bDoNotDecrease boolean
local FMultiClickInteractionData = {}



---@class FNameDisplaySettings
---@field Margin FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local FNameDisplaySettings = {}



---@class FNamesWidgetDisplaySettings
---@field Margin FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
---@field SlateChildSize FSlateChildSize
local FNamesWidgetDisplaySettings = {}



---@class FNavDataLayerCombinationHandle
---@field Group TSoftObjectPtr<ANavDataLayerGroup>
---@field Combination TSoftObjectPtr<UNavDataLayerCombination>
local FNavDataLayerCombinationHandle = {}



---@class FNavMeshPolyInfo
---@field X int32
---@field Y int32
---@field Layer int32
---@field RelativePolyIndex uint32
local FNavMeshPolyInfo = {}



---@class FNavModifierBodyConfig
---@field PhysicalBodyName FName
---@field ShapeIndexesToProcess TArray<int32>
local FNavModifierBodyConfig = {}



---@class FNavModifierHolder
local FNavModifierHolder = {}


---@class FNavigationBudget
---@field NavAddGeneratedTilesTime int32
---@field MaxNumTasksToProcessPerTile int32
---@field NavAttachTilesTime int32
---@field CoversStorageMaxTilesProcessingTime int32
---@field bProcessCoverTilesAsync boolean
---@field CoverTilesAsyncChunkSize int32
local FNavigationBudget = {}



---@class FNiagaraValueCopyFromTo
---@field AttachmentName FName
---@field CopyFrom FName
---@field CopyTo FName
local FNiagaraValueCopyFromTo = {}



---@class FNoteFilterSettings
---@field bIsEnableFilter boolean
---@field Filter ENoteType
local FNoteFilterSettings = {}



---@class FNotificationModel
---@field Title FText
---@field Description FText
---@field Count int32
---@field HintType EHintType
---@field bItemsRemoved boolean
---@field Type EInteractionSystemNotificationsType
---@field Location FVector
---@field AudiologChainPrototypeID FString
---@field AudiologDuration float
local FNotificationModel = {}



---@class FObjPrototypeSID
---@field ObjSID FPrototypeSID
local FObjPrototypeSID = {}



---@class FObjWaterControllerCollection : FBaseTickAggregationCollection
local FObjWaterControllerCollection = {}


---@class FObjectArmorData
---@field Armor float
---@field ArmorDifferenceCoef float
---@field bCalculateAsHumanoid boolean
local FObjectArmorData = {}



---@class FObjectPhaseSettings
local FObjectPhaseSettings = {}


---@class FOverlapVolumeEffect
---@field EffectPrototype FPrototypeSID
---@field AddOnBeginOverlap boolean
---@field RemoveOnEndOverlap boolean
---@field IgnorePlayer boolean
---@field IgnoreAI boolean
local FOverlapVolumeEffect = {}



---@class FOverridableProperty
local FOverridableProperty = {}


---@class FPDAQuestDetailsStatusSettings
---@field StatusLocalizationSID FString
---@field AccentColorStyleID FName
---@field bOverrideNameColor boolean
---@field NameAccentColorOverrideStyleID FName
local FPDAQuestDetailsStatusSettings = {}



---@class FPDAQuestTaskStatusSettings
---@field AccentColorStyleID FName
---@field Icon UTexture2D
---@field TextStyleID FName
local FPDAQuestTaskStatusSettings = {}



---@class FPDAUsageAnimations
---@field EquipPDA UAnimSequenceBase
---@field InteractWithPDA UAnimSequenceBase
---@field UnequipPDA UAnimSequenceBase
local FPDAUsageAnimations = {}



---@class FParameter
---@field TransitionOverrides TMap<EWeather, FParameterTransition>
local FParameter = {}



---@class FParameterTransition
---@field StartOffset float
---@field Duration float
local FParameterTransition = {}



---@class FParticleActorComponentSpawnPrototype : FEnvironmentParticlePrototype
---@field ActorSpawnPrototype FParticleActorSpawnPrototype
---@field PlayerComponentSpawnPrototype FParticlePlayerComponentSpawnPrototype
local FParticleActorComponentSpawnPrototype = {}



---@class FParticleActorSpawnPrototype : FEnvironmentParticlePrototype
---@field BaseSpawnProbability float
---@field SpawnProbabilityIncrement float
---@field SpawnProbabilityCheckTime float
---@field MinSpawnDistance float
---@field MaxSpawnDistance float
---@field SurfaceHeightOffset float
---@field LocationCheckTime float
---@field MaxParticleCount int32
---@field bSpawnInPlayerViewport boolean
local FParticleActorSpawnPrototype = {}



---@class FParticleBiomePrototype : FParticleConditionPrototype
---@field AllowedBiomeNames TArray<FString>
---@field CountableBiomeNames TArray<FString>
---@field BiomeCheckRadius float
---@field MinBiomeCompatabilityPercent float
local FParticleBiomePrototype = {}



---@class FParticleConditionPrototype : FEnvironmentParticlePrototype
local FParticleConditionPrototype = {}


---@class FParticleDaytimePrototype : FParticleConditionPrototype
---@field SpawnTime float
---@field DespawnTime float
local FParticleDaytimePrototype = {}



---@class FParticleDistancePrototype : FParticleConditionPrototype
---@field MaxDistance float
local FParticleDistancePrototype = {}



---@class FParticleExplosionPrototype : FEnvironmentParticlePrototype
---@field ExplosionDistance float
local FParticleExplosionPrototype = {}



---@class FParticleGunshotPrototype : FEnvironmentParticlePrototype
---@field GunshotDistance float
local FParticleGunshotPrototype = {}



---@class FParticleIndoorSpawnPrototype : FEnvironmentParticlePrototype
---@field IgnoredAudioRoomPresets TArray<EAudioRoomPresetBase>
---@field ForbiddenBandwidthTypes TArray<EAudioRoomPresetBandwidth>
---@field MinDistanceToAudioVolume float
local FParticleIndoorSpawnPrototype = {}



---@class FParticleLairPrototype : FParticleConditionPrototype
---@field LairCheckDistance float
---@field AllowedNPCTypes TArray<EAgentType>
local FParticleLairPrototype = {}



---@class FParticlePlayerComponentSpawnPrototype : FEnvironmentParticlePrototype
---@field BaseSpawnProbability float
---@field SpawnProbabilityIncrement float
---@field SpawnProbabilityCheckTime float
---@field LocationCheckTime float
---@field PlayerHeadOffset FVector
local FParticlePlayerComponentSpawnPrototype = {}



---@class FParticleRainIntensityPrototype : FParticleConditionPrototype
---@field AllowedRainIntensityInterval FFloatInterval
local FParticleRainIntensityPrototype = {}



---@class FParticleWeatherPrototype : FParticleConditionPrototype
---@field AllowedWeatherTypes TArray<EWeather>
local FParticleWeatherPrototype = {}



---@class FParticleWindIntensityPrototype : FParticleConditionPrototype
---@field AllowedWindIntensityInterval FFloatInterval
local FParticleWindIntensityPrototype = {}



---@class FPhysicalManagerCollection : FBaseTickAggregationCollection
local FPhysicalManagerCollection = {}


---@class FPhysicsHitArgs
---@field StimulusActor AActor
local FPhysicsHitArgs = {}



---@class FPhysicsObjectCollection : FBaseTickAggregationCollection
local FPhysicsObjectCollection = {}


---@class FPlayAnimationOnAttachedItemData
---@field AttachmentName FName
---@field AnimationAsset UAnimationAsset
local FPlayAnimationOnAttachedItemData = {}



---@class FPlayerAutoCoverAnimations
---@field StandInCoverPose UAnimSequence
---@field ApproachCover UAnimSequence
---@field ApproachCoverLeft UAnimSequence
---@field ApproachCoverRight UAnimSequence
---@field ExitCover UAnimSequence
---@field CanLeanLeftPose UAnimSequence
---@field CanLeanRightPose UAnimSequence
---@field AimLeftPose UAnimSequence
---@field AimRightPose UAnimSequence
---@field AimLeftPoseBlendSpace UBlendSpace
---@field AimRightPoseBlendSpace UBlendSpace
---@field AimUpPose UAnimSequence
---@field AimlessShootLeftPose UAnimSequence
---@field AimlessShootRightPose UAnimSequence
---@field AimlessShootUpPose UAnimSequence
local FPlayerAutoCoverAnimations = {}



---@class FPlayerDeathAnimArray
---@field Animations TArray<UAnimMontage>
local FPlayerDeathAnimArray = {}



---@class FPlayerDeathAnimations
---@field BulletDeathAnimations TMap<EAnimDirections, FPlayerDeathAnimArray>
---@field ExplosionDeathAnimations TMap<EAnimDirections, FPlayerDeathAnimArray>
---@field DeathAnimations TMap<EPlayerAnimDamageSource, FPlayerDeathAnimArray>
local FPlayerDeathAnimations = {}



---@class FPlayerDetectorBasePoses
---@field Idle UAnimSequence
---@field AimIdle UAnimSequence
---@field IdleToAim UAnimSequence
---@field AimToIdle UAnimSequence
---@field LongIdle UAnimSequence
---@field RunBlendSpace UBlendSpace
---@field SprintBlendSpace UBlendSpace
---@field JoggingBlendSpace UBlendSpace
local FPlayerDetectorBasePoses = {}



---@class FPlayerDialogAnimations
---@field DialogAnimations TMap<EDialogAnimationType, UAnimSequenceBase>
local FPlayerDialogAnimations = {}



---@class FPlayerExternalAnimations
---@field UpperBody FPlayerLocomotionAnimations
---@field LowerBody FPlayerLocomotionAnimations
---@field LookVertical UAnimSequence
---@field Leans FPlayerLeansAnimations
local FPlayerExternalAnimations = {}



---@class FPlayerFirearmInternalAnimations
---@field ShootingInHip FCharacterWeaponAnimations
---@field ShootingInAim FCharacterWeaponAnimations
---@field Shooting TMap<EAnimationShootingTypes, FCharacterWeaponAnimations>
---@field ShootingWithScope TMap<FName, FCharacterWeaponAnimations>
---@field AttachingBySID TMap<FString, FAttachDetachAnimations>
---@field Jamming TArray<FCharacterWeaponAnimations>
---@field UniqueAttachJamming TMap<FName, FCharacterWeaponAnimations>
---@field Reloading TMap<FName, FMagazineReloadAnimations>
---@field OneHandReloading TMap<FName, FMagazineReloadAnimations>
---@field MeleeAnimation FCharacterWeaponAnimations
---@field SwitchFireType TMap<EAnimSwitchFireTypeMode, FChangeFireTypeAnimations>
---@field PickUpItem UAnimMontage
---@field CharacterHipIdleSequence UAnimSequence
---@field WeaponHipIdleSequence UAnimSequence
---@field CharacterOffsetAimIdleSequence UAnimSequence
---@field WeaponOffsetAimIdleSequence UAnimSequence
local FPlayerFirearmInternalAnimations = {}



---@class FPlayerGadgetAnimations
---@field ToggleFlashlight TMap<EGadgetAnimationType, FCharacterItemAnimations>
---@field EnableNightVision TMap<EGadgetAnimationType, FCharacterItemAnimations>
---@field DisableNightVision TMap<EGadgetAnimationType, FCharacterItemAnimations>
local FPlayerGadgetAnimations = {}



---@class FPlayerGuitarAnimations
---@field ChordTransition UAnimMontage
---@field GuitarItemEnterAnimation UAnimSequence
---@field GuitarItemExitAnimation UAnimSequence
---@field StrumUpSounds TMap<EAnimGuitarState, UAkAudioEvent>
---@field StrumDownSounds TMap<EAnimGuitarState, UAkAudioEvent>
---@field GlissSounds TMap<EAnimGuitarState, UAkAudioEvent>
local FPlayerGuitarAnimations = {}



---@class FPlayerInternalAnimations
---@field JumpLand UAnimMontage
---@field JumpLandLowCrouch UAnimMontage
---@field FailedLanding UAnimMontage
---@field EnterRagdollCurve UCurveFloat
---@field GadgetAnimations FPlayerGadgetAnimations
---@field EquipUnequip FEquipUnequipAnimations
---@field RemoveReturnLeftHand FEquipUnequipAnimations
---@field DragWeaponByNPC TMap<EAgentType, UAnimMontage>
local FPlayerInternalAnimations = {}



---@class FPlayerKnifeInternalAnimations
---@field Hit FCharacterWeaponAnimations
---@field OneHandHit FCharacterWeaponAnimations
---@field StealthKills TMap<EAnimStealthKillPose, FCharacterWeaponAnimations>
---@field PlayingWithKnife FCharacterWeaponAnimations
local FPlayerKnifeInternalAnimations = {}



---@class FPlayerLeansAnimations
---@field LeanLeftIn UAnimSequence
---@field LeanLeftOut UAnimSequence
---@field LeanRightIn UAnimSequence
---@field LeanRightOut UAnimSequence
local FPlayerLeansAnimations = {}



---@class FPlayerLocomotionAnimations
---@field StandIdleInHip UAnimSequence
---@field CrouchIdleInHip UAnimSequence
---@field LowCrouchIdleInHip UAnimSequence
---@field StandToCrouch FTransitionAnimations
---@field CrouchToLowCrouch FTransitionAnimations
---@field StandToLowCrouch FTransitionAnimations
---@field Sprint UBlendSpace
---@field SprintWithDetector UBlendSpace
---@field Run UBlendSpace
---@field RunWithDetector UBlendSpace
---@field RunCombat UBlendSpace
---@field Walk UBlendSpace
---@field WalkWithDetector UBlendSpace
---@field WalkAim UBlendSpace
---@field WalkLimp UBlendSpace
---@field Crouch UBlendSpace
---@field CrouchAim UBlendSpace
---@field LowCrouch UBlendSpace
---@field LowCrouchAim UBlendSpace
---@field Jogging UBlendSpace
---@field JoggingWithDetector UBlendSpace
---@field WalkStart UBlendSpace
---@field WalkStop UBlendSpace
---@field RunStart UBlendSpace
---@field RunStop UBlendSpace
---@field RunToSprint UBlendSpace
---@field SprintStop UBlendSpace
---@field SprintToRun UAnimSequence
---@field RunToJogging UBlendSpace
---@field JoggingStop UBlendSpace
---@field JoggingToRun UAnimSequence
---@field SprintToJogging UAnimSequence
---@field StandTurnInPlace UAnimSequence
---@field CrouchTurnInPlace UAnimSequence
---@field JumpStart UAnimSequence
---@field JumpLoop UAnimSequence
---@field JumpEnd UAnimSequence
---@field JumpStartLowCrouch UAnimSequence
---@field JumpLoopLowCrouch UAnimSequence
---@field JumpEndLowCrouch UAnimSequence
local FPlayerLocomotionAnimations = {}



---@class FPlayerMappableReplace : FTableRowBase
---@field NewPlayerMappableOption FName
local FPlayerMappableReplace = {}



---@class FPlayerThrowableItemInternalAnimations
---@field Throw TMap<EAnimationThrowingType, FCharacterWeaponAnimations>
---@field CancelThrow TMap<EAnimationThrowingType, FCharacterWeaponAnimations>
---@field StrongThrowForceCurve UCurveFloat
---@field LightThrowForceCurve UCurveFloat
---@field StrongThrowDirectionOffsetCurve UCurveVector
---@field LightThrowDirectionOffsetCurve UCurveVector
local FPlayerThrowableItemInternalAnimations = {}



---@class FPlayerWeaponAnimations
---@field AnimCollection UPlayerAnimCollection
---@field AttachWeaponAnimCollections TMap<FName, UPlayerFirearmAnimCollection>
---@field PlayerAnimBlueprint UClass
---@field AdditionalAnimLayers TArray<UClass>
---@field EquipWeapon FCharacterWeaponAnimations
---@field UnequipWeapon FCharacterWeaponAnimations
---@field PlayerWeaponBasePoses FPlayerWeaponBasePoses
---@field AttachSelectorUnequip UAnimMontage
---@field RemoveReturnLeftHand FEquipUnequipAnimations
---@field WeaponSwingConfigInHip FAnimWeaponSwingContainer
---@field WeaponSwingConfigInAim FAnimWeaponSwingContainer
---@field WeaponSwingConfigInOffsetAim FAnimWeaponSwingContainer
---@field StopHipSwingInertia FWeaponInertiaContainer
---@field StopAimSwingInertia FWeaponInertiaContainer
---@field StopOffsetAimSwingInertia FWeaponInertiaContainer
---@field SprintStopInertia FWeaponInertiaContainer
---@field HipPushback FWeaponPushbackContainer
---@field AimPushback TMap<FName, FWeaponPushbackContainer>
---@field OffsetAimPushback FWeaponPushbackContainer
---@field InactiveLongIdles FPlayerWeaponIdlingAnimations
local FPlayerWeaponAnimations = {}



---@class FPlayerWeaponBasePoses
---@field GripIdle UAnimSequence
---@field GripAimIdle UAnimSequence
---@field GrenadeLauncherIdle UAnimSequence
---@field GrenadeLauncherActionIdle UAnimSequence
---@field BuckLauncherIdle UAnimSequence
---@field BuckLauncherActionIdle UAnimSequence
---@field IdleAdditive UAnimSequence
---@field GrenadeLauncherIdleAdditive UAnimSequence
---@field GrenadeLauncherActionIdleAdditive UAnimSequence
---@field BuckLauncherIdleAdditive UAnimSequence
---@field BuckLauncherActionIdleAdditive UAnimSequence
---@field IdleToAim UAnimSequence
---@field AimToIdle UAnimSequence
---@field AimIdleAdditive UAnimSequence
---@field IdleToOffsetAim UAnimSequence
---@field OffsetAimToIdle UAnimSequence
---@field OffsetAimIdleAdditive UAnimSequence
local FPlayerWeaponBasePoses = {}



---@class FPlayerWeaponIdlingAnimations
---@field TimeToLaunchInactiveIdle float
---@field Idles TArray<FCharacterItemWeightedAnimations>
local FPlayerWeaponIdlingAnimations = {}



---@class FPoseSearchForceRunInsteadSprintConfigs
---@field DistanceFromPathStart float
---@field DistanceToPathEnd float
---@field DistanceToNextPortal float
---@field PortalRotationAngleThreshold float
local FPoseSearchForceRunInsteadSprintConfigs = {}



---@class FPoseSearchLocomotionAnimCollectionData
---@field Searchable UPoseSearchSearchableAsset
---@field SearchableRelaxState UPoseSearchSearchableAsset
---@field Descriptor UPoseSearchLocomotionDescriptor
---@field DescriptorRelaxState UPoseSearchLocomotionDescriptor
---@field MovementTagConfigs FPoseSearchMovementTagConfigs
local FPoseSearchLocomotionAnimCollectionData = {}



---@class FPoseSearchMovementTagConfigs
---@field ForceRunInsteadSprintConfigs FPoseSearchForceRunInsteadSprintConfigs
local FPoseSearchMovementTagConfigs = {}



---@class FPossibleInhabitantFaction
---@field Faction FFactionSelector
---@field SpawnSettingsPerPlayerRanks FSpawnSettingsPerPlayerRank
local FPossibleInhabitantFaction = {}



---@class FPossibleInhabitantFactionsOverridableProperty : FOverridableProperty
---@field DefaultValue TArray<FPossibleInhabitantFaction>
---@field CurrentValue TArray<FPossibleInhabitantFaction>
local FPossibleInhabitantFactionsOverridableProperty = {}



---@class FPostProcessSimplifiedSettings
---@field ColorSaturation FVector4
---@field ColorContrast FVector4
---@field ColorGamma FVector4
---@field bOverride_ColorSaturation boolean
---@field bOverride_ColorContrast boolean
---@field bOverride_ColorGamma boolean
---@field FilmToe float
---@field bOverride_FilmToe boolean
---@field WeightedBlendables FWeightedBlendables
local FPostProcessSimplifiedSettings = {}



---@class FPostProcessState
---@field DiffuseColorBoost FFloatParameter
---@field SkylightLeaking FFloatParameter
local FPostProcessState = {}



---@class FProcessorsArray
---@field ListOfProcessors TArray<UForceFeedbackProcessorBase>
local FProcessorsArray = {}



---@class FProgressMaterialData
---@field ProgressMaterialBrush FSlateBrush
---@field MaterialParameterName FName
local FProgressMaterialData = {}



---@class FProjectileCollection : FBaseTickAggregationCollection
---@field Projectiles TArray<AProjectile>
local FProjectileCollection = {}



---@class FProjectileHitArgs
local FProjectileHitArgs = {}


---@class FProjectileImpactFXData
---@field HitAgent AAgent
local FProjectileImpactFXData = {}



---@class FPrototypeFeedbackArgs : FForceFeedbackArgs
---@field PrototypeSID FString
local FPrototypeFeedbackArgs = {}



---@class FPrototypeSID
---@field Value FString
local FPrototypeSID = {}



---@class FPsySpawnStruct
---@field GameGraphMinComponentVerticesCount uint32
---@field CurrentPsyPrototypeClass TSoftClassPtr<AAgent>
local FPsySpawnStruct = {}



---@class FQuestInfo
local FQuestInfo = {}


---@class FQuestNodeCollection : FBaseTickAggregationCollection
local FQuestNodeCollection = {}


---@class FQuestNotificationHeaderStyleSettings
---@field AccentColorStyleID FName
---@field QuestStatusBackgroundColorStyleID FName
---@field QuestStatusTextColorStyleID FName
---@field QuestStatusTextSID FString
local FQuestNotificationHeaderStyleSettings = {}



---@class FRainState
---@field Intensity FFloatParameter
---@field WeatherLightningSpawnRate FFloatParameter
---@field Wetness FFloatParameter
---@field Drying FFloatParameter
---@field MaxWetnessValue FFloatParameter
---@field LightningColor FLinearColorParameter
local FRainState = {}



---@class FRazerChromaDamageSettings
---@field Event FRazerChromaEvent
---@field DamageThreshold float
---@field DamageSources TArray<EDamageSource>
local FRazerChromaDamageSettings = {}



---@class FRazerChromaEvent
---@field AnimationName FString
---@field Priority int32
---@field bLoopAnimation boolean
---@field bSendSensaEvent boolean
---@field bSendSensaOnlyIfActive boolean
local FRazerChromaEvent = {}



---@class FRazerChromaVitalsSettings
---@field Event FRazerChromaEvent
---@field Threshold float
---@field bEnableIfHigher boolean
local FRazerChromaVitalsSettings = {}



---@class FRazerSensaDamageSettings
---@field NearLeftEvent FRazerSensaEvent
---@field FarLeftEvent FRazerSensaEvent
---@field NearFrontEvent FRazerSensaEvent
---@field FarFrontEvent FRazerSensaEvent
---@field NearRightEvent FRazerSensaEvent
---@field FarRightEvent FRazerSensaEvent
---@field NearBackEvent FRazerSensaEvent
---@field FarBackEvent FRazerSensaEvent
---@field DamageThreshold float
---@field FarThreshold float
---@field DamageSources TArray<EDamageSource>
local FRazerSensaDamageSettings = {}



---@class FRazerSensaEvent
---@field HapticsName FString
local FRazerSensaEvent = {}



---@class FReactionDesc
---@field RelationToProvoker ERelationLevel
---@field RelationToRequester ERelationLevel
---@field ReactionValue int32
local FReactionDesc = {}



---@class FRebuildData
---@field SocketName FName
---@field ParentSocketName FName
---@field bIsFlipped boolean
---@field Mesh UStaticMesh
local FRebuildData = {}



---@class FRecoilKeys
---@field X float
---@field Y float
local FRecoilKeys = {}



---@class FRelationLevelRange
---@field Start int32
---@field End int32
local FRelationLevelRange = {}



---@class FRelationRequestDesc
---@field Reactions TArray<FReactionDesc>
local FRelationRequestDesc = {}



---@class FReloadTransitionRulesData
---@field NextReloadSectionName FName
---@field ConditionalShutterState EShutterState
local FReloadTransitionRulesData = {}



---@class FRengeSettings
---@field Min int32
---@field Max int32
---@field WarningColor FLinearColor
local FRengeSettings = {}



---@class FRequiredDataLayerCombinations
local FRequiredDataLayerCombinations = {}


---@class FRestrictionsMap
---@field bIsFullBodyRotationBlocked boolean
---@field UpperBodyHorizontalLimit float
---@field UpperBodyVerticalLimit float
---@field bRotateFullBodyDespiteUpperBody boolean
---@field InteractLimit float
---@field bOnlyHeadRotateOnUpperBody boolean
---@field bFullBodyRotateSatisfyAngle float
---@field PoseRotationOffset FRotator
local FRestrictionsMap = {}



---@class FRichWidgetRow : FTableRowBase
---@field WidgetToDisplay TSubclassOf<UUserWidget>
local FRichWidgetRow = {}



---@class FRightClickMenuData
---@field ClickedItemSlot UItemSlotBaseWidget
local FRightClickMenuData = {}



---@class FRightClickMenuItemData
local FRightClickMenuItemData = {}


---@class FRoleDisplaySettings
---@field Margin FMargin
local FRoleDisplaySettings = {}



---@class FRotationBodyPart
---@field BodyType ERotationPartType
---@field Rotation float
---@field FinalRotation float
local FRotationBodyPart = {}



---@class FSIDLightBarStateArgs : FLightBarStateArgs
---@field PrototypeSID FPrototypeSID
local FSIDLightBarStateArgs = {}



---@class FSIDStateArgs : FStateArgs
---@field PrototypeSID FPrototypeSID
local FSIDStateArgs = {}



---@class FScarPhaseData
---@field EffectsToApply TArray<FEffectPrototypeSID>
---@field EffectsToRemove TArray<FEffectPrototypeSID>
---@field AbilitiesToGive TArray<FAbilityPrototypeSID>
---@field PhaseHPThreshold float
local FScarPhaseData = {}



---@class FSectionTitleDisplaySettings
---@field Margin FMargin
---@field HorizontalAlignment EHorizontalAlignment
local FSectionTitleDisplaySettings = {}



---@class FShootingPatternKey
local FShootingPatternKey = {}


---@class FShortcutData
---@field LegendButtonWidgetClassOverride TSubclassOf<UHintControllerBase>
---@field bShowLegend boolean
---@field LegendButtonStyle FHintStyleSettings
---@field MenuHintSettings FMenuHintSettings
---@field InputAction FString
---@field ExecuteAction UMenuButtonActionBase
---@field InputEventType ETriggerEvent
---@field bHideInGame boolean
local FShortcutData = {}



---@class FSignalToReceive
---@field SenderComponentRef FGSCComponentReference
local FSignalToReceive = {}



---@class FSignalToSend
---@field ReceiverComponentRef FGSCComponentReference
---@field ReceiverGuid FGuid
local FSignalToSend = {}



---@class FSimpleMovingAnimations
---@field Forward UAnimSequence
---@field Backward UAnimSequence
---@field Left UAnimSequence
---@field Right UAnimSequence
---@field ForwardLeft UAnimSequence
---@field ForwardRight UAnimSequence
---@field BackwardLeft UAnimSequence
---@field BackwardRight UAnimSequence
local FSimpleMovingAnimations = {}



---@class FSingleClickInteractionData : FInteractionData
local FSingleClickInteractionData = {}


---@class FSkyAtmosphereBaseState
---@field MultiScattering FFloatParameter
---@field AbsorptionScale FFloatParameter
---@field Absorption FLinearColorParameter
---@field SkyLuminanceFactor FLinearColorParameter
---@field AerialPerspectiveDistanceScale FFloatParameter
---@field HeightFogContribution FFloatParameter
---@field ColorPower FFloatParameter
local FSkyAtmosphereBaseState = {}



---@class FSkyAtmosphereRayleighMieState
---@field RayleighScatteringScale FFloatParameter
---@field RayleighScattering FLinearColorParameter
---@field RayleighExponentialDistribution FFloatParameter
---@field MieScatteringScale FFloatParameter
---@field MieScattering FLinearColorParameter
---@field MieScatteringAbsorption FFloatParameter
---@field MieAbsorption FLinearColorParameter
---@field MieAnisotropy FFloatParameter
---@field MieExponentialDistribution FFloatParameter
local FSkyAtmosphereRayleighMieState = {}



---@class FSkyAtmosphereState
---@field Base FSkyAtmosphereBaseState
---@field RayleighMie FSkyAtmosphereRayleighMieState
local FSkyAtmosphereState = {}



---@class FSkyLightState
---@field Intensity FFloatParameter
---@field SkyLightColor FLinearColorParameter
local FSkyLightState = {}



---@class FSkySphereState
---@field AtmosphereBrightness FFloatParameter
---@field EmissiveBrightness FFloatParameter
---@field ZenithColor FLinearColorParameter
---@field HorizonColor FLinearColorParameter
local FSkySphereState = {}



---@class FSlateSpline
---@field Points TArray<FRichCurveKey>
local FSlateSpline = {}



---@class FSlotFilterSettings
---@field FilterIconStyleIdEnable FName
---@field FilterIconStyleIdDisable FName
local FSlotFilterSettings = {}



---@class FSlotScaleSettings
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local FSlotScaleSettings = {}



---@class FSmartCoverActionSide
---@field Side EAvailableCoverActionsSide
local FSmartCoverActionSide = {}



---@class FSmartCoverActionWithSide
---@field Side EAvailableCoverActionsSide
---@field Montage UAnimMontage
local FSmartCoverActionWithSide = {}



---@class FSmartCoverAnimCollectionData
---@field WeaponTypeAnimationsData TMap<EWeaponType, FSmartCoverWeaponTypeData>
local FSmartCoverAnimCollectionData = {}



---@class FSmartCoverAnimationMainLoopData
---@field ActionType ESmartCoverActionType
---@field LookAtOwnerState ELookAtOwnerState
---@field TargetActionSide EAvailableCoverActionsSide
---@field LookFromCoverMontages TArray<FSmartCoverActionWithSide>
---@field HideBehindCoverMontages TArray<FSmartCoverActionWithSide>
---@field IdleMontage UAnimMontage
---@field ThrowGrenadeMontage UAnimMontage
local FSmartCoverAnimationMainLoopData = {}



---@class FSmartCoverEnterTypes
---@field Side EAvailableCoverActionsSide
---@field EnterType EAvailableCoverEnterTypes
local FSmartCoverEnterTypes = {}



---@class FSmartCoverExitTypes
---@field Side EAvailableCoverActionsSide
---@field ExitType EAvailableCoverExitTypes
local FSmartCoverExitTypes = {}



---@class FSmartCoverPerCoverTypeData
---@field EnterData TArray<FSmartCoverEnterTypes>
---@field ExitData TArray<FSmartCoverExitTypes>
---@field IdlesData TArray<FSmartCoverActionSide>
---@field TransitionsData TArray<FSmartCoverTransitionSides>
---@field TransitionMontage UAnimMontage
---@field ActionAnimationsData TArray<FSmartCoverAnimationMainLoopData>
local FSmartCoverPerCoverTypeData = {}



---@class FSmartCoverTransitionSides
---@field Side EAvailableCoverActionsSide
---@field ResultSide EAvailableCoverActionsSide
local FSmartCoverTransitionSides = {}



---@class FSmartCoverWeaponTypeData
---@field AnimationsData TMap<ESmartCoverType, FSmartCoverPerCoverTypeData>
local FSmartCoverWeaponTypeData = {}



---@class FSnapshotMapping
---@field SourceNodeTag FName
---@field TargetNodeTag FName
local FSnapshotMapping = {}



---@class FSoftAnimWeighted
---@field ChanceToPlay float
---@field Animation TSoftObjectPtr<UAnimSequenceBase>
local FSoftAnimWeighted = {}



---@class FSpawnNiagaraSystemAtLocation
---@field AttachmentName FName
---@field SpawnNiagaraAtLocation ESpawnNiagaraAtLocation
---@field NiagaraAsset UNiagaraSystem
local FSpawnNiagaraSystemAtLocation = {}



---@class FSpawnPhantomParams
local FSpawnPhantomParams = {}


---@class FSpawnSettingsPerArchetype
---@field PrototypeSID FPrototypeSID
---@field MinQuantity int32
---@field SpawnWeight float
local FSpawnSettingsPerArchetype = {}



---@class FSpawnSettingsPerPlayerRank
---@field PlayerRank ERank
---@field MaxSpawnQuantity int32
---@field SoftCap int32
---@field InitialSpawnQuantityPercent float
---@field InitialSpawnQuantityRespawnTimeSeconds float
---@field MaxSpawnQuantityRespawnTimeSeconds float
---@field WipeRespawnTimeoutSeconds float
---@field SpawnSettingsPerArchetypes TArray<FSpawnSettingsPerArchetype>
local FSpawnSettingsPerPlayerRank = {}



---@class FSpawnedItem
---@field PrototypeSID FString
---@field Weight float
---@field MinDurability float
---@field MaxDurability float
local FSpawnedItem = {}



---@class FSplinePointMeshData
---@field StrandStaticMesh UStaticMesh
---@field SeparatorStaticMesh UStaticMesh
---@field PrefabStrandMesh UPrefabAsset
---@field PrefabSeparatorMesh UPrefabAsset
local FSplinePointMeshData = {}



---@class FStashPrototypeSID : FPrototypeSID
local FStashPrototypeSID = {}


---@class FStatStates
---@field Weak float
---@field Medium float
---@field Strong float
local FStatStates = {}



---@class FStaticEnvironmentParticleDataRow : FTableRowBase
---@field ParticleType EStaticParticleType
---@field Providers TSet<TSubclassOf<UNiagaraParameterProvider>>
---@field IndoorSpawnPrototype FParticleIndoorSpawnPrototype
---@field WeatherTypePrototype FParticleWeatherPrototype
---@field LairPrototype FParticleLairPrototype
---@field PlayerDistancePrototype FParticleDistancePrototype
---@field DaytimePrototype FParticleDaytimePrototype
---@field RainIntensityPrototype FParticleRainIntensityPrototype
---@field WindIntensityPrototype FParticleWindIntensityPrototype
---@field NiagaraSystems TArray<TSoftObjectPtr<UNiagaraSystem>>
local FStaticEnvironmentParticleDataRow = {}



---@class FStealthParams
---@field FlashLightCoef float
---@field VisibilitySizeFactor float
---@field VisibilityCrouchCoef float
---@field VisibilityJumpCoef float
---@field VisibilityObstacleHeadCoef float
---@field VisibilityObstacleBodyCoef float
---@field NoiseObstacleCoef float
---@field NoiseCrouchCoef float
---@field NoiseJumpCoef float
local FStealthParams = {}



---@class FStrandFinalData
---@field SplineComponentsData TArray<FStrandSplineComponent>
---@field StaticMeshComponentsData TArray<FStrandStaticMeshComponent>
local FStrandFinalData = {}



---@class FStrandSplineComponent
---@field WorldPos FVector
---@field StaticMesh UStaticMesh
---@field StartPos FVector
---@field StartTangent FVector
---@field EndPos FVector
---@field EndTangent FVector
---@field Rotation FRotator
---@field RelativeScale FVector
local FStrandSplineComponent = {}



---@class FStrandStaticMeshComponent
---@field WorldPos FVector
---@field StaticMesh UStaticMesh
---@field RelativeRotation FRotator
---@field WorldRotation FRotator
---@field RelativeScale FVector
local FStrandStaticMeshComponent = {}



---@class FStreamingDistanceOverrideTickFunction : FTickFunction
local FStreamingDistanceOverrideTickFunction = {}


---@class FStreamingDistanceOverrideVolumeState
---@field Volume AStreamingDistanceOverridingVolume
local FStreamingDistanceOverrideVolumeState = {}



---@class FStringOverridableProperty : FOverridableProperty
---@field DefaultValue FString
---@field CurrentValue FString
local FStringOverridableProperty = {}



---@class FStructConditionalGeneration
---@field RefreshGameTime double
---@field PlayerRanks TArray<ERank>
---@field Difficulties TArray<EGameDifficulty>
---@field ReputationThreshold int32
local FStructConditionalGeneration = {}



---@class FStructItemGenerationCategory
---@field Category EItemGenerationCategory
---@field PossibleItems TArray<FStructItemGeneratorSingleElement>
---@field bAllowSameCategoryGeneration boolean
local FStructItemGenerationCategory = {}



---@class FStructItemGeneratorElementCountedPart
---@field MinCount int32
---@field MaxCount int32
local FStructItemGeneratorElementCountedPart = {}



---@class FStructItemGeneratorSingleElement : FStructItemGeneratorElementCountedPart
---@field Chance float
---@field Weight float
---@field MinDurability float
---@field MaxDurability float
---@field WeaponGenerationFlags EWeaponGenerationFlags
local FStructItemGeneratorSingleElement = {}



---@class FSwarmDamageHandleImpact
---@field bSpawnCorpseOnDestroy boolean
---@field bApplyImpulseToCorpse boolean
---@field bAttachImpactEffectToCorpse boolean
---@field bSetMaterialParametersToCorpse boolean
---@field ImpulseScale float
---@field AngularImpulseScale float
---@field SpawnCorpseTemplate TSubclassOf<AActor>
---@field ImpactEffect UNiagaraSystem
---@field EnvironmentEffect UNiagaraSystem
local FSwarmDamageHandleImpact = {}



---@class FSwarmInstanceSimulationConfig
---@field AvoidenceRadius float
---@field AlignmentRadius float
---@field CohesionRadius float
---@field MaxForce float
---@field SeparationWeight float
---@field AlignmentWeight float
---@field CohesionWeight float
---@field AttractionPointWeight float
---@field FlowWeight float
---@field MaxSpeed float
---@field LinearDrag float
---@field HeightDisplacementRadius float
---@field HeightDisplacementAmmount float
---@field MaxHeightDisplacement float
---@field ImpulseFriction float
---@field VATAnimation FName
local FSwarmInstanceSimulationConfig = {}



---@class FSwarmVATAnimation
---@field StateName FName
---@field FrameStart float
---@field FrameEnd float
---@field FrameRate float
---@field PlaybackRate float
---@field BlendOutDuration float
---@field bIsLooped boolean
local FSwarmVATAnimation = {}



---@class FTeleportData
local FTeleportData = {}


---@class FTeleportParams
local FTeleportParams = {}


---@class FTextProperties
---@field TextAlignment EHorizontalAlignment
---@field TextMargin FMargin
local FTextProperties = {}



---@class FTextSettings
---@field FontStyleId FName
---@field bUseFontColor boolean
---@field FontStyle FTextBlockStyle
---@field Justification ETextJustify::Type
---@field bAutoWrap boolean
---@field WrappingTextAt float
---@field TextTransformPolicy ETextTransformPolicy
---@field LineHeightPercentage float
local FTextSettings = {}



---@class FThreatPointerSettings
---@field ThreatIndicatorMoveRadius float
---@field OpacityChangingSpeed float
---@field ThreatLevelChangingSpeed float
---@field ThreatIndicatorLevelMin float
---@field ThreatIndicatorLevelMax float
---@field ThreatThreatPointerRotationSpeed float
---@field AlertAnimationSpeed float
---@field AlertAnimationNumberLoops int32
local FThreatPointerSettings = {}



---@class FTimeBudget
---@field AgentView int32
---@field AgentModel int32
---@field AnomalyView int32
---@field AnomalyModel int32
---@field ArtifactView int32
---@field ItemContainer int32
---@field DestructibleView int32
---@field DestructibleModel int32
---@field WetnessComponent int32
---@field FlashlightComponent int32
---@field ContextualActionModel int32
---@field QuestNode int32
---@field ViewDestruction int32
---@field AIComponent int32
---@field WaterContactController int32
---@field OverallMax int32
---@field HitDamages int32
---@field ExplosionEffect int32
local FTimeBudget = {}



---@class FTipPositionArgs
---@field Row int32
---@field Column int32
---@field size double
---@field Direction ESlotDirection
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
---@field Translation FVector2D
local FTipPositionArgs = {}



---@class FTopazScannerVFX
---@field NiagaraSystem UNiagaraSystem
---@field SpawnTransform FTransform
---@field EnableTime float
---@field DisableTime float
---@field NiagaraComponent TWeakObjectPtr<UNiagaraComponent>
---@field OwnerScanner TWeakObjectPtr<ATopazScanner>
local FTopazScannerVFX = {}



---@class FTransitionAnimations
---@field To UAnimSequence
---@field From UAnimSequence
local FTransitionAnimations = {}



---@class FTutorialFilterSettings
---@field bIsEnableFilter boolean
---@field Filter EPDATutorialCategory
local FTutorialFilterSettings = {}



---@class FTwoBlendedAnimationData
---@field FirstAnimation UAnimSequence
---@field SecondAnimation UAnimSequence
---@field FirstBlendIn float
---@field SecondBlendIn float
---@field bUseFirstAnimation boolean
local FTwoBlendedAnimationData = {}



---@class FTwoLegIKData : FBaseLegIKData
---@field LeftFootIKData FLegIKData
---@field RightFootIKData FLegIKData
local FTwoLegIKData = {}



---@class FUID
---@field UID int32
local FUID = {}



---@class FUIWarningSettings : FTableRowBase
---@field IsGlobalEnable boolean
---@field WorningType UIWorningType
---@field PerfectTextSize int32
---@field bShouldIgnoreTag boolean
---@field RowSize float
---@field PerfectRow int32
---@field DefoultRengeSettings FWarningSettings
---@field RengeSettings TArray<FWarningSettings>
local FUIWarningSettings = {}



---@class FUpgrade
local FUpgrade = {}


---@class FUpgradeFilterSettings
---@field bEnableFilter boolean
---@field Filter EInventoryEquipmentSlot
local FUpgradeFilterSettings = {}



---@class FUpgradeSlotData
local FUpgradeSlotData = {}


---@class FUserAchievements
---@field Achievements TMap<FString, FAchievementData>
local FUserAchievements = {}



---@class FVATAnimation
---@field StateName FName
---@field FrameStart float
---@field FrameEnd float
---@field FrameRate float
---@field PlaybackRate float
---@field BlendOutDuration float
---@field bIsLooped boolean
local FVATAnimation = {}



---@class FValueLocalisationPair
---@field Value int32
---@field Loc10N FText
local FValueLocalisationPair = {}



---@class FVelocityDebug
---@field LinearVelocity double
---@field AngularVelocity double
local FVelocityDebug = {}



---@class FVictoryInput
---@field ActionName FString
---@field Key FKey
---@field KeyAsString FString
---@field bShift boolean
---@field bCtrl boolean
---@field bAlt boolean
---@field bCmd boolean
---@field bGamepad boolean
---@field Category EKeyCategory
local FVictoryInput = {}



---@class FVictoryInputAxis
---@field AxisName FString
---@field KeyAsString FString
---@field Key FKey
---@field Scale float
---@field Category EKeyCategory
local FVictoryInputAxis = {}



---@class FViewOpenSettings
---@field bShouldEffectCursorOnShow boolean
---@field bShoudShowMouseCursor boolean
---@field bShoudIdleAnimation boolean
---@field bShoudIgnoreInputOnPause boolean
---@field bShoudClearInputOnClose boolean
---@field bShoudSendOpenUpdateEvent boolean
---@field bShoudCheckOpenView boolean
---@field bShoudIgnoreCheckOpenView boolean
---@field bShoudIgnoreLowPriority boolean
---@field bNewerCloseOtherViews boolean
---@field CloseType ECloseType
---@field WidgetsToHideThisWhenOpen TArray<EWidgetNameEx>
---@field CloseWidgetNames TArray<EWidgetNameEx>
---@field PriorityZOrder int32
---@field bCanBeRestoredAfterPause boolean
local FViewOpenSettings = {}



---@class FVolumetricCloudState
---@field CloudMapBias FFloatParameter
---@field CloudMapDensity FFloatParameter
---@field NoiseFlowMapAMultiplier FFloatParameter
---@field NoiseFlowMapABias FFloatParameter
---@field NoiseFlowMapADetail FFloatParameter
---@field NoiseFlowMapABottomNoise FFloatParameter
---@field NoiseFlowMapBBias FFloatParameter
---@field NoiseFlowMapBDetail FFloatParameter
---@field NoiseFlowMapBScale FFloatParameter
---@field BillowyStormyCloudsHeight FFloatParameter
---@field DensityVariationScale FFloatParameter
---@field DensityVariationPower FFloatParameter
---@field DensityVariationOutFirst FFloatParameter
---@field DensityVariationOutSecond FFloatParameter
---@field DensityVariationDarkMinDensity FFloatParameter
---@field CloudBaseCapMaskRadius FFloatParameter
---@field CloudBaseSpeedMultiplier FFloatParameter
---@field CloudBaseECX FLinearColorParameter
---@field CloudBasePreExponentialDensity FFloatParameter
---@field CloudBaseAlbedo FLinearColorParameter
---@field CloudBaseSecondAlbedo FLinearColorParameter
---@field EmissionParamPositionIntensity FLinearColorParameter
---@field EmissionParamColor FLinearColorParameter
---@field PhaseBlend FFloatParameter
---@field PhaseG FFloatParameter
---@field PhaseGSecond FFloatParameter
---@field MultiScatteringContribution FFloatParameter
---@field MultiScatteringOcclusion FFloatParameter
---@field MultiScatteringOcclusionPower FFloatParameter
---@field MultiScatteringEccentricity FFloatParameter
---@field LayerHeight FFloatParameter
---@field LayerBottomAltitude FFloatParameter
---@field CloudMaskRadius float
local FVolumetricCloudState = {}



---@class FVortexSplineDataPoint
---@field TargetSpeed float
---@field DistanceFromStart float
---@field PointIndex int32
local FVortexSplineDataPoint = {}



---@class FWLCylinderShapeParams
---@field Location FVector
---@field Radius float
---@field ZMin float
---@field ZMax float
local FWLCylinderShapeParams = {}



---@class FWLParticlesPropertyState
---@field PropertyName FName
---@field TargetValue float
---@field InterpolationSpeed float
local FWLParticlesPropertyState = {}



---@class FWLSplinePointTiming
local FWLSplinePointTiming = {}


---@class FWanderingLightInstanceData
---@field BaseLocation FVector
---@field HorizontalMovementCurve FInterpCurveVector
---@field HorizontalMovementDuration float
---@field HorizontalMovementDenom float
---@field BaseVerticalOffset float
---@field bCircularMovement boolean
local FWanderingLightInstanceData = {}



---@class FWarningSettings
---@field Localization TArray<ELocalizationLanguage>
---@field RengeSettings TArray<FRengeSettings>
local FWarningSettings = {}



---@class FWaterHitArgs
local FWaterHitArgs = {}


---@class FWaterSurfaceObstructionResult
---@field bObstructed boolean
---@field DistanceToWater double
local FWaterSurfaceObstructionResult = {}



---@class FWeapon
local FWeapon = {}


---@class FWeaponAttachMeshesData
---@field AttachMeshesMap TMap<EAttachType, FAttachMeshesData>
---@field BulletMeshes TArray<TWeakObjectPtr<UMeshComponent>>
---@field MagazineMeshes TArray<FAttachedMagazineStruct>
---@field WeaponStaticMeshParts TArray<FAttachMeshData>
local FWeaponAttachMeshesData = {}



---@class FWeaponFireEvents
---@field FireEventOneShot UAkAudioEvent
---@field FireEventLoop UAkAudioEvent
---@field FireEventBreak UAkAudioEvent
local FWeaponFireEvents = {}



---@class FWeaponInertiaContainer
---@field InertiaRotationCurve UCurveVector
---@field InertiaTranslationCurve UCurveVector
---@field InertiaTimeScaleCurve UCurveFloat
---@field AmplitudeScaleCurve UCurveFloat
local FWeaponInertiaContainer = {}



---@class FWeaponPushbackContainer
---@field DelayBeforeBlendStarting float
---@field BlendInArgs FAlphaBlendArgs
---@field BlendOutArgs FAlphaBlendArgs
---@field PushbackRotationCurve UCurveVector
---@field PushbackTranslationCurve UCurveVector
local FWeaponPushbackContainer = {}



---@class FWeatherHistoryData
---@field WeatherType EWeather
---@field BlendWeight float
---@field BlendWeightIncrease float
---@field Cooldown int32
---@field MaxRepeatAmount int32
---@field RepeatAmount int32
---@field bPaused boolean
---@field bAllowInDialogueTransition boolean
local FWeatherHistoryData = {}



---@class FWeatherState
---@field SkySphere FSkySphereState
---@field DirLight FDirectionalLightState
---@field SkyLight FSkyLightState
---@field SkyAtmosphere FSkyAtmosphereState
---@field VolumetricCloud FVolumetricCloudState
---@field ExponentialHeightFog FExponentialHeightFogState
---@field GlobalVolumetricValue FFloatParameter
---@field LocalVolumetricValue FFloatParameter
---@field Rain FRainState
---@field PostProcess FPostProcessState
---@field WindIntensity FFloatParameter
---@field WaterWindNormalMultiplier FFloatParameter
---@field WaterWindBaseSpeedMultiplier FFloatParameter
---@field FoliageAnimationSpeed FFloatParameter
---@field FoliageWindIntensityAmplitude FFloatParameter
---@field FoliageRotationAmount FFloatParameter
---@field FoliageRotationSpeedFraction FFloatParameter
---@field FoliageVariationSpeedFraction FFloatParameter
---@field FoliageVariationAmount FFloatParameter
---@field TransitionDurations TMap<EWeather, float>
local FWeatherState = {}



---@class FWeightedFacialAnimation
---@field Weight float
---@field FaceAnimation UAnimSequenceBase
---@field StartTime float
local FWeightedFacialAnimation = {}



---@class FWetnessComponentCollection : FBaseTickAggregationCollection
local FWetnessComponentCollection = {}


---@class FWind
---@field FoliageWindDirection FVector2D
---@field FoliageWindIntensity float
---@field PreviousFoliageWindDirection FVector2D
---@field PreviousFoliageWindIntensity float
---@field Intensity float
---@field WindDirectionChangeIntensity float
---@field bLockedDirection boolean
---@field Direction FVector2D
---@field TargetDirection FVector2D
---@field PreviousDirection FVector2D
local FWind = {}



---@class FZoomInterval
---@field MinZoomLevel int32
---@field MaxZoomLevel int32
local FZoomInterval = {}



---@class FZoomLevelSettings
---@field MapZoom float
---@field LocationFillOpacity float
---@field MoveSettings FMoveSettings
local FZoomLevelSettings = {}



---@class FZoomMarkerSettings
---@field MaxZoomLevelToShow int32
---@field MinZoomLevelToShow int32
---@field MaxZoomLevelToShowHab int32
---@field MinZoomLevelToShowHub int32
local FZoomMarkerSettings = {}



---@class IActorInteractionDataInterface : IInterface
local IActorInteractionDataInterface = {}


---@class IAimAssistTargetInterface : IInterface
local IAimAssistTargetInterface = {}


---@class IAsyncMixin : IInterface
local IAsyncMixin = {}


---@class IBossInterface : IInterface
local IBossInterface = {}

function IBossInterface:OnStunEnd() end
function IBossInterface:OnStunBegin() end
function IBossInterface:OnDashAbilityEnd() end
function IBossInterface:OnDashAbilityBegin() end


---@class IBusVolumeDataReceiver : IInterface
local IBusVolumeDataReceiver = {}


---@class ICustomDamageHandleComponent : IInterface
local ICustomDamageHandleComponent = {}


---@class IGameplayEventListener : IInterface
local IGameplayEventListener = {}

---@param EventTag FGameplayTag
---@param EventData UGSCGameplayEventData
function IGameplayEventListener:OnGameplayEvent(EventTag, EventData) end


---@class IGuidInterface : IInterface
local IGuidInterface = {}

---@return FGuid
function IGuidInterface:GetGUID() end


---@class IHUDRestore : IInterface
local IHUDRestore = {}


---@class IHitReceiver : IInterface
local IHitReceiver = {}


---@class IInteractPaintInterface : IInterface
local IInteractPaintInterface = {}

---@param bInteractPaint boolean
function IInteractPaintInterface:OnPaintSettingsChanged(bInteractPaint) end


---@class INavigationSlotInterface : IInterface
local INavigationSlotInterface = {}


---@class IObjBase : IInterface
local IObjBase = {}


---@class IPhysible : IInterface
local IPhysible = {}


---@class IPlayerWeaponAnimCollectionInterface : IInterface
local IPlayerWeaponAnimCollectionInterface = {}


---@class IRestorableComponent : IInterface
local IRestorableComponent = {}


---@class ISaveableComponent : IInterface
local ISaveableComponent = {}


---@class IUpscalingSettingElementInterface : IInterface
local IUpscalingSettingElementInterface = {}


---@class IValueFormater : IInterface
local IValueFormater = {}


---@class IVideoWidget : IInterface
local IVideoWidget = {}


---@class IWeaponDisplayInterface : IInterface
local IWeaponDisplayInterface = {}


---@class IWildlifeBehaviourInterface : IInterface
local IWildlifeBehaviourInterface = {}

function IWildlifeBehaviourInterface:OnEmissionWeatherStarted() end


---@class UAIConstraintSubsystem : UWorldSubsystem
local UAIConstraintSubsystem = {}


---@class UAICoreSubsystem : UWorldSubsystem
local UAICoreSubsystem = {}


---@class UAIDebugSubsystem : UGameInstanceSubsystem
local UAIDebugSubsystem = {}


---@class UAIFeatureManager : UBaseManager
local UAIFeatureManager = {}


---@class UAIFlashlightUseManager : UBaseManager
local UAIFlashlightUseManager = {}


---@class UAILuminanceManager : UBaseManager
local UAILuminanceManager = {}


---@class UAISwarmComponent : USceneComponent
---@field SoundLocation FVector3f
---@field LocomotionSoundRadius float
---@field VoiceSoundRadius float
---@field MaxInstancesInSwarm int32
---@field FlockRadius float
---@field CellSize float
---@field WallPadding float
---@field SimulationGridPadding float
---@field MovementVariationRange float
---@field SwarmBoundsCellCountClamp int32
---@field PathFindingCostLimit float
---@field MaxAttackingInstances int32
---@field AttackTimeout float
---@field InstanceCollisionRadius float
---@field HeavyProjectileDamageThreashold float
---@field MaterialVariantPropertyName FName
---@field MaxTextureVariants int32
---@field VisualsSeed int32
---@field InstanceScaleRange FVector2D
---@field MeshMaterial UMaterialInterface
---@field StaticMesh UStaticMesh
---@field SwarmInstancedMesh UInstancedStaticMeshComponent
---@field VATAnimationsConfig UVATAnimationsConfig
---@field DamageImpactConfig TMap<EDamageAffectorType, FSwarmDamageHandleImpact>
---@field SwarmConfigurations TMap<ESwarmInstanceStates, FSwarmInstanceSimulationConfig>
local UAISwarmComponent = {}

---@param SwarmHealth float
function UAISwarmComponent:SpawnInstances(SwarmHealth) end
---@param DeltaTime float
function UAISwarmComponent:Simulate(DeltaTime) end
---@param Target AActor
---@param OffsetToGroundLevel float
---@param EngageRadius float
function UAISwarmComponent:SetDamageTarget(Target, OffsetToGroundLevel, EngageRadius) end
---@return TArray<FName>
function UAISwarmComponent:GetVATAnimationNames() end


---@class UAITickComponent : UActorComponent
local UAITickComponent = {}


---@class UAITickManager : UBaseTickableManager
local UAITickManager = {}


---@class UAIUpdateDecisionAsyncManager : UBaseTickableManager
local UAIUpdateDecisionAsyncManager = {}


---@class UAIVisionUpdateSubsystem : UBaseManager
local UAIVisionUpdateSubsystem = {}


---@class UALifeDirector : UBaseTickableManager
local UALifeDirector = {}


---@class UALifePOISubsystem : UTickableWorldSubsystem
local UALifePOISubsystem = {}


---@class UALifePolicyManager : UBaseTickableManager
local UALifePolicyManager = {}


---@class UALifePopulationManager : UBaseTickableManager
local UALifePopulationManager = {}


---@class UAbilityEventData : UGSCGameplayEventData
local UAbilityEventData = {}

---@return FName
function UAbilityEventData:GetActivationTag() end
---@return EAbility
function UAbilityEventData:GetAbilityType() end


---@class UAbstractProgressBar : UWidgetBase
---@field bEnableStyleManager boolean
---@field ProgressValue float
---@field ProgressStyleId FName
local UAbstractProgressBar = {}

---@param InProgress float
function UAbstractProgressBar:SetProgressValue(InProgress) end
---@return float
function UAbstractProgressBar:GetProgressValue() end


---@class UAccessibilitySettingsWidget : USettingsPage
---@field ColorBlindness USettingElementSwitcher
local UAccessibilitySettingsWidget = {}



---@class UAchievementManager : UBaseManager
---@field UsersToProgress TMap<FString, FUserAchievements>
---@field DefaultUserAchievements FUserAchievements
local UAchievementManager = {}



---@class UAchievementTracker : UObject
local UAchievementTracker = {}


---@class UAchievementTracker_ArchiHoarder : UAchievementTracker_ArtifactBaseHoarder
local UAchievementTracker_ArchiHoarder = {}


---@class UAchievementTracker_ArtiHoarder : UAchievementTracker_ArtifactBaseHoarder
local UAchievementTracker_ArtiHoarder = {}


---@class UAchievementTracker_ArtifactBaseHoarder : UAchievementTracker_HoarderBase
local UAchievementTracker_ArtifactBaseHoarder = {}


---@class UAchievementTracker_BlueHoarder : UAchievementTracker_HoarderBase
local UAchievementTracker_BlueHoarder = {}


---@class UAchievementTracker_Bouncy : UAchievementTracker
local UAchievementTracker_Bouncy = {}


---@class UAchievementTracker_BreakEquipment : UAchievementTracker
local UAchievementTracker_BreakEquipment = {}


---@class UAchievementTracker_CanOpener : UAchievementTracker
local UAchievementTracker_CanOpener = {}


---@class UAchievementTracker_CatchingUp : UAchievementTracker
local UAchievementTracker_CatchingUp = {}


---@class UAchievementTracker_ChimeraRun : UAchievementTracker
local UAchievementTracker_ChimeraRun = {}


---@class UAchievementTracker_CouponsToBurn : UAchievementTracker
local UAchievementTracker_CouponsToBurn = {}


---@class UAchievementTracker_Debug : UAchievementTracker
local UAchievementTracker_Debug = {}


---@class UAchievementTracker_Demoman : UAchievementTracker
local UAchievementTracker_Demoman = {}


---@class UAchievementTracker_Discovery : UAchievementTracker
local UAchievementTracker_Discovery = {}


---@class UAchievementTracker_DoHeadshots : UAchievementTracker
local UAchievementTracker_DoHeadshots = {}


---@class UAchievementTracker_DoStealthKills : UAchievementTracker
local UAchievementTracker_DoStealthKills = {}


---@class UAchievementTracker_DrunkMaster : UAchievementTracker
local UAchievementTracker_DrunkMaster = {}


---@class UAchievementTracker_EatFoodSet : UAchievementTracker
local UAchievementTracker_EatFoodSet = {}


---@class UAchievementTracker_FinishSquad : UAchievementTracker
local UAchievementTracker_FinishSquad = {}


---@class UAchievementTracker_Gunsmith : UAchievementTracker
local UAchievementTracker_Gunsmith = {}


---@class UAchievementTracker_HeadshotStreak : UAchievementTracker
local UAchievementTracker_HeadshotStreak = {}


---@class UAchievementTracker_HoarderBase : UAchievementTracker
local UAchievementTracker_HoarderBase = {}


---@class UAchievementTracker_Lockpick : UAchievementTracker
local UAchievementTracker_Lockpick = {}


---@class UAchievementTracker_LonerShooter : UAchievementTracker
local UAchievementTracker_LonerShooter = {}


---@class UAchievementTracker_MerryGoRound : UAchievementTracker
local UAchievementTracker_MerryGoRound = {}


---@class UAchievementTracker_MutantHunter : UAchievementTracker
local UAchievementTracker_MutantHunter = {}


---@class UAchievementTracker_NoObstacleTooBig : UAchievementTracker
local UAchievementTracker_NoObstacleTooBig = {}


---@class UAchievementTracker_PerfectBarter : UAchievementTracker
local UAchievementTracker_PerfectBarter = {}


---@class UAchievementTracker_PurchaseUpgrade : UAchievementTracker
local UAchievementTracker_PurchaseUpgrade = {}


---@class UAchievementTracker_RoyalFlush : UAchievementTracker
local UAchievementTracker_RoyalFlush = {}


---@class UAchievementTracker_SitNearBonfire : UAchievementTracker
local UAchievementTracker_SitNearBonfire = {}


---@class UAchievementTracker_SneakyClearLair : UAchievementTracker
local UAchievementTracker_SneakyClearLair = {}


---@class UAchievementTracker_UseDifferentWeapons : UAchievementTracker
local UAchievementTracker_UseDifferentWeapons = {}


---@class UAchievementTracker_WipedOut : UAchievementTracker
local UAchievementTracker_WipedOut = {}


---@class UActionBlockerConditionBase : UObject
local UActionBlockerConditionBase = {}

---@return boolean
function UActionBlockerConditionBase:CanTrigger() end


---@class UActionMimicButton : UWidgetBase
---@field bInitializeAutomatically boolean
---@field MimicSettings FActionMimicSettings
---@field ButtonElement UButton
---@field InputAction UInputAction
---@field InputTrigger UInputTrigger
local UActionMimicButton = {}

function UActionMimicButton:OnMouseButtonReleased() end
function UActionMimicButton:OnMouseButtonPressed() end


---@class UActivitiesProcessingSubsystem : UGameInstanceSubsystem
local UActivitiesProcessingSubsystem = {}


---@class UAddConfigsPathGameFeatureAction : UGameFeatureAction
---@field ConfigPathName FName
---@field ConfigPath FString
local UAddConfigsPathGameFeatureAction = {}



---@class UAddLocalizationSource : UGameFeatureAction
---@field LocalizationDatabase TSoftObjectPtr<ULocalizationDatabase>
local UAddLocalizationSource = {}



---@class UAddNeedEffect : UContextualActionEffect
---@field ContextualActionNeedForAdd EContextualActionNeeds
local UAddNeedEffect = {}



---@class UAdultUserButtonStateDefiner : UMenuButtonStateDefiner
local UAdultUserButtonStateDefiner = {}


---@class UAgentBehaviourEventData : UGSCGameplayEventData
local UAgentBehaviourEventData = {}

---@return EGoalType
function UAgentBehaviourEventData:GetGoalType() end


---@class UAimAssistBloodsuckerComponent : UAimAssistInvisibleTargetComponent
---@field InvisibilityThreshold float
local UAimAssistBloodsuckerComponent = {}



---@class UAimAssistComponent : UActorComponent
---@field SnappingTimeCurve UCurveFloat
local UAimAssistComponent = {}



---@class UAimAssistCustomTargetComponent : UActorComponent
---@field AimAssistTargetData UAimAssistTargetDataAsset
local UAimAssistCustomTargetComponent = {}



---@class UAimAssistInvisibleTargetComponent : UActorComponent
---@field InvisibleAimAssistTargetData UAimAssistTargetDataAsset
---@field VisibleAimAssistTargetData UAimAssistTargetDataAsset
local UAimAssistInvisibleTargetComponent = {}



---@class UAimAssistPoltergeistComponent : UAimAssistInvisibleTargetComponent
local UAimAssistPoltergeistComponent = {}


---@class UAimAssistTargetDataAsset : UDataAsset
---@field HeightModifiers TMap<EAimAssistType, float>
---@field IntensityModifiers TMap<EAimAssistType, float>
local UAimAssistTargetDataAsset = {}



---@class UAimIPU : UBehaviorBasedIPU
local UAimIPU = {}


---@class UAimProcessorComponent : UActorComponent
local UAimProcessorComponent = {}


---@class UAmmoTypeWidget : UUserWidget
---@field Background UImage
---@field AmmoTypeIcon UImage
---@field TypeToTexture TMap<EAmmoType, UTexture2D>
---@field TypeToColor TMap<EAmmoType, FSlateColor>
---@field bApplyColor boolean
---@field bApplyBackgroundColor boolean
local UAmmoTypeWidget = {}



---@class UAmmoWidget : UChildViewBase
---@field AmmoCount UTextBlock
---@field AmmoCountMax UTextBlock
---@field Divider UTextBlock
---@field CaliberText UTextBlock
---@field AmmoIcon UImageWidget
---@field AmmoCounter UHorizontalBox
---@field FireTypeCounter UHorizontalBox
---@field AmmoTypeList UVerticalBox
---@field GrenadeLauncherIcon UFireTypeWidget
---@field GrenadeLauncherDivider UImage
---@field AmmoTypeWidget UAmmoTypeWidget
---@field AnimAmmoHide UWidgetAnimation
---@field AnimAmmoShow UWidgetAnimation
---@field AmmoWidgetSettings UAmmoWidgetSettingsAsset
---@field InventoryNew UInventoryNew
---@field TradeView UTradeView
---@field FireTypeWidgets TArray<UFireTypeWidget>
local UAmmoWidget = {}



---@class UAmmoWidgetSettingsAsset : UDataAsset
---@field MinAmmoCount float
---@field FireIcons TMap<EFireType, UTexture>
---@field AmmoTypeDotsActiveColor FLinearColor
---@field AmmoTypeDotsUnactiveColor FLinearColor
---@field AnimAmmoHideSpeed float
---@field AnimAmmoShowSpeed float
---@field AnimAmmoColor FLinearColor
local UAmmoWidgetSettingsAsset = {}



---@class UAnalyticsManager : UBaseManager
local UAnalyticsManager = {}


---@class UAnimCollectionFootPlacementSettings : UFootPlacementNodeSettingsAsset
local UAnimCollectionFootPlacementSettings = {}


---@class UAnimCollectionLegIKSettings : ULegIKNodeSettingsAsset
local UAnimCollectionLegIKSettings = {}


---@class UAnimCollectionSlopeWarpingSettings : USlopeWarpingSettingsAsset
---@field bSlopeWarpingEnabled boolean
local UAnimCollectionSlopeWarpingSettings = {}



---@class UAnimCollectionStrideWarpingSettings : UStrideWarpingSettingsAsset
local UAnimCollectionStrideWarpingSettings = {}


---@class UAnimInstanceBase : UAnimInstance
---@field Owner TWeakObjectPtr<AObj>
---@field SkeletalMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field DummyAnimation UAnimSequence
---@field DummyBlueprint UClass
local UAnimInstanceBase = {}

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UAnimInstanceBase:OnSkeletalMeshHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end


---@class UAnimInstanceCodelock : UAnimInstanceBase
---@field CodelockAnimCollection UPlayerCodelockAnimCollection
local UAnimInstanceCodelock = {}



---@class UAnimInstanceContextualFace : UAnimInstanceBase
---@field HumanBody USkeletalMeshComponent
local UAnimInstanceContextualFace = {}



---@class UAnimInstanceFace : UAnimInstanceBase
---@field StateData FAnimHumanStateData
---@field FaceData FAnimHumanFaceData
---@field WoundedData FAnimWoundedData
---@field SleepData FAnimSleepData
---@field CutsceneData FAnimCutsceneData
local UAnimInstanceFace = {}



---@class UAnimInstanceHuman : UAnimInstanceBase
---@field WeaponData FAnimHumanWeaponData
---@field HitData FAnimHitData
---@field WoundedData FAnimWoundedData
---@field KnockDownData FAnimKnockDownData
---@field CollectionsData FAnimHumanCollectionsData
---@field StateData FAnimHumanStateData
---@field HandsIKData FAnimTwoHandsIKData
---@field LegsIKData FAnimLegsIKData
---@field FaceData FAnimHumanFaceData
---@field LookAtData FAnimHumanLookAtData
---@field DialogData FAnimHumanDialogData
---@field PoseSearchLocomotionData FAnimPoseSearchLocomotionData
---@field PhysicalData FAnimPhysicalData
---@field CutsceneData FAnimCutsceneData
---@field LastGestureAnimation UAnimSequenceBase
---@field AbilityData FAnimAbilityData
local UAnimInstanceHuman = {}



---@class UAnimInstanceHumanFirearm : UAnimInstanceBase
---@field WeaponAnimCollection UHumanFirearmAnimCollection
---@field WeaponAnimCollectionAsset FSoftObjectPath
---@field ZombieWeaponAnimCollection UHumanFirearmAnimCollection
---@field ZombieWeaponAnimCollectionAsset FSoftObjectPath
---@field WeaponConfig FAnimHumanWeaponConfig
---@field RelaxedWeaponConfig FAnimHumanWeaponConfig
---@field AimingData FAnimHumanAimingData
---@field PoseSearchLocomotionData FAnimPoseSearchLocomotionData
---@field bIsZombie boolean
---@field bUsingSmartCoverAnimPose boolean
---@field SmartCoverType ESmartCoverType
local UAnimInstanceHumanFirearm = {}



---@class UAnimInstanceItem : UAnimInstanceBase
---@field ItemAnimCollection UItemAnimCollection
local UAnimInstanceItem = {}



---@class UAnimInstanceMutant : UAnimInstanceBase
---@field HitData FAnimHitData
---@field StateData FAnimMutantStateData
---@field CollectionData FAnimMutantCollectionsData
---@field PhysicalData FAnimPhysicalData
---@field AbilityData FAnimAbilityData
---@field LegsIKData FAnimLegsIKData
---@field PoseSearchDataInstance UPoseSearchLocomotionDataObject
---@field LookAtData FLookAtMutantData
---@field MutantEvalAnimLayerClass TSubclassOf<UAnimInstance>
local UAnimInstanceMutant = {}



---@class UAnimInstancePlayer : UAnimInstanceBase
---@field LocomotionData FAnimLocomotionData
---@field WeaponData FAnimPlayerWeaponData
---@field CameraData FAnimPlayerCameraData
---@field TransitionData FAnimPlayerTransitionData
---@field StateData FAnimPlayerStateData
---@field CollectionData FAnimPlayerCollectionsData
---@field HandsIKData FAnimTwoHandsIKData
---@field LegsIKData FTwoLegIKData
---@field IdleSwayData FAnimPlayerIdleSwayData
---@field ClimbingData FAnimPlayerClimbingData
---@field WeaponSwingData FAnimPlayerWeaponSwingData
---@field WeaponInertiaData FAnimPlayerWeaponInertiaData
---@field WeaponPushbackData FAnimPlayerWeaponPushbackData
---@field DetectorData FAnimPlayerDetectorData
---@field HandItemData FAnimHandItemData
---@field MaterialData FAnimPlayerMaterialData
---@field LookAtData FAnimPlayerLookAtData
---@field AutoCoverData FAnimPlayerAutoCoverData
---@field HitData FAnimPlayerHitData
---@field GuitarData FAnimPlayerGuitarData
---@field DodgeData FAnimPlayerDodgeData
---@field DialogData FAnimPlayerDialogData
---@field AnimPlayerUnfocusableTargetData FAnimPlayerUnfocusableTargetData
---@field VaultingData FAnimPlayerVaultingData
---@field ShadowData FAnimPlayerShadowData
---@field StealthData FAnimPlayerStealthData
---@field CutsceneData FAnimCutsceneData
local UAnimInstancePlayer = {}

function UAnimInstancePlayer:AnimNotify_InteractionEvent() end


---@class UAnimInstancePlayerDetector : UAnimInstanceBase
---@field DetectorAnimCollection UPlayerDetectorAnimCollection
local UAnimInstancePlayerDetector = {}



---@class UAnimInstancePlayerFirearm : UAnimInstancePlayerWeaponBase
---@field WeaponAnimCollection UPlayerFirearmAnimCollection
---@field AimingData FAnimPlayerAimingData
---@field FirearmData FAnimPlayerFirearmData
local UAnimInstancePlayerFirearm = {}



---@class UAnimInstancePlayerInjector : UAnimInstanceBase
---@field InjectorAnimations FInjectorAnimations
local UAnimInstancePlayerInjector = {}



---@class UAnimInstancePlayerKnife : UAnimInstancePlayerWeaponBase
---@field WeaponAnimCollection UPlayerKnifeAnimCollection
---@field StealthData FAnimPlayerStealthData
local UAnimInstancePlayerKnife = {}



---@class UAnimInstancePlayerShadow : UAnimInstanceBase
---@field ShadowData FAnimPlayerShadowData
---@field StateData FAnimPlayerStateData
local UAnimInstancePlayerShadow = {}



---@class UAnimInstancePlayerThrowable : UAnimInstancePlayerWeaponBase
---@field WeaponAnimCollection UPlayerThrowableItemAnimCollection
---@field AimingData FAnimPlayerAimingData
local UAnimInstancePlayerThrowable = {}



---@class UAnimInstancePlayerWeaponAttach : UAnimInstanceBase
---@field AttachAnimCollection UWeaponAttachAnimCollection
---@field FirearmData FAnimPlayerFirearmData
---@field AimingData FAnimPlayerAimingData
local UAnimInstancePlayerWeaponAttach = {}



---@class UAnimInstancePlayerWeaponBase : UAnimInstanceBase
---@field BaseData FAnimPlayerBaseWeaponData
local UAnimInstancePlayerWeaponBase = {}



---@class UAnimInstanceReplicateMesh : UAnimInstance
---@field SkeletalMeshComponent USkeletalMeshComponent
local UAnimInstanceReplicateMesh = {}



---@class UAnimInstanceSyncPoint : UAnimInstance
local UAnimInstanceSyncPoint = {}


---@class UAnimInstanceTestFace : UAnimInstanceFace
---@field bUseBlendShapeAnimations boolean
local UAnimInstanceTestFace = {}



---@class UAnimInstanceValve : UAnimInstanceBase
---@field ValveData FAnimValveData
local UAnimInstanceValve = {}

---@param ValveState EValveState
function UAnimInstanceValve:SetValveState(ValveState) end


---@class UAnimNotifyBase : UAnimNotify
---@field NotifyTriggerType ENotifyTriggerType
local UAnimNotifyBase = {}



---@class UAnimNotifyState_ApplyDurationalEffectContextualAction : UAnimNotifyState
---@field ModifyVFXAttachmentsValue TArray<FModifyVFXValue>
local UAnimNotifyState_ApplyDurationalEffectContextualAction = {}



---@class UAnimNotifyState_AttachDetachItemContextualAction : UAnimNotifyState
---@field ContextualItemAttachments TArray<FContextualItemAttachment>
local UAnimNotifyState_AttachDetachItemContextualAction = {}



---@class UAnimNotifyState_AttachItemInteractAction : UAnimNotifyState
---@field AttachItemType EAttachItemType
---@field BoneReference FBoneReference
---@field RequiredItemIndex int32
---@field MeshToAttach UStreamableRenderAsset
---@field bShouldPlayAnimation boolean
---@field AnimationToPlay UAnimSequenceBase
---@field AttachedMesh UMeshComponent
local UAnimNotifyState_AttachItemInteractAction = {}



---@class UAnimNotifyState_Attack : UAnimNotifyState
local UAnimNotifyState_Attack = {}


---@class UAnimNotifyState_BoundsScale : UAnimNotifyState
---@field BoundsScale float
local UAnimNotifyState_BoundsScale = {}



---@class UAnimNotifyState_DIsableLookAtRestriction : UAnimNotifyState
local UAnimNotifyState_DIsableLookAtRestriction = {}


---@class UAnimNotifyState_DisableDialogContextualAction : UAnimNotifyState
local UAnimNotifyState_DisableDialogContextualAction = {}


---@class UAnimNotifyState_FOVBlend : UAnimNotifyState
---@field bIsBlendIn boolean
---@field BlendOption EAlphaBlendOption
---@field CustomCurve UCurveFloat
---@field bShouldBlendWeaponInHands boolean
---@field bShouldIgnoreNotifyEndOnInterrupt boolean
local UAnimNotifyState_FOVBlend = {}



---@class UAnimNotifyState_ForceReloadingEnd : UAnimNotifyState
---@field IsUnloading boolean
local UAnimNotifyState_ForceReloadingEnd = {}



---@class UAnimNotifyState_ForceWarpActorRotation : UAnimNotifyState
---@field WarpTargetName FName
---@field bShouldExcludeWarpTargetAfterComplete boolean
local UAnimNotifyState_ForceWarpActorRotation = {}



---@class UAnimNotifyState_LookAt : UAnimNotifyState
---@field AttractionPointType EAttractionPointType
---@field bLookAtPlayer boolean
---@field LookAtPlaceholderQuestGuid FName
---@field LookAtActorFName FName
---@field TargetLocation FVector
---@field BoneName FName
---@field ReactionTime float
---@field Priority int32
---@field CollisionChannel ECollisionChannel
---@field ApplyRestrictionType EApplyRestrictionType
---@field HorizontalRestrictions TMap<ERotationPartType, FBodyPartRestriction>
---@field VerticalRestrictions TMap<ERotationPartType, FBodyPartRestriction>
local UAnimNotifyState_LookAt = {}



---@class UAnimNotifyState_MotionAudioEnveloper : UAnimNotifyState
---@field PlayAkEvent UAkAudioEvent
---@field StopAkEvent UAkAudioEvent
---@field MotionSpeedRTPC UAkRtpc
---@field BoneName FName
---@field MinBoneVelocity float
---@field MaxBoneVelocity float
---@field InterpolationTime int32
---@field bShowBoneVelocityInfo boolean
---@field AttachedAudioComponent UAkComponent
local UAnimNotifyState_MotionAudioEnveloper = {}



---@class UAnimNotifyState_PreciseRootMotion : UAnimNotifyState
---@field DeltaTimeModifier EPreciseRootMotionDeltaTimeModifier
---@field LoopTimeCompareTolerance float
local UAnimNotifyState_PreciseRootMotion = {}



---@class UAnimNotifyState_SpawnParticleTimeline : UAnimNotifyState
---@field ParticlePFX UFXSystemAsset
---@field BoneToSpawnOnName FName
---@field bIsAttachToBone boolean
local UAnimNotifyState_SpawnParticleTimeline = {}



---@class UAnimNotifyState_StandToRelaxIdle : UAnimNotifyState
local UAnimNotifyState_StandToRelaxIdle = {}


---@class UAnimNotifyState_ThrowGrenade : UAnimNotify_GSCPlayMontageNotifyWindow
---@field BoneName FName
local UAnimNotifyState_ThrowGrenade = {}



---@class UAnimNotify_AIAnimationAction : UAnimNotifyBase
---@field AnimationAction EAIAnimationAction
local UAnimNotify_AIAnimationAction = {}



---@class UAnimNotify_AnyFootOnGround : UAnimNotify
---@field Foot EFootType
---@field SocketName FName
---@field ToeSocketName FName
---@field bAttachedParticle boolean
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field Scale FVector
local UAnimNotify_AnyFootOnGround = {}



---@class UAnimNotify_AttachItem : UAnimNotifyBase
---@field AttachAction EAttachAction
---@field bForceBindedHandsLookVertical boolean
---@field bShouldOverwritePitch boolean
---@field PitchRotation float
---@field SocketName FName
---@field AttachedItem EAttachType
---@field BindedAttachSid FString
---@field AttachMesh USkeletalMesh
local UAnimNotify_AttachItem = {}



---@class UAnimNotify_AttachItemContextualAction : UAnimNotifyBase
---@field ContextualItemAttachments TArray<FContextualItemAttachment>
local UAnimNotify_AttachItemContextualAction = {}



---@class UAnimNotify_AttachNiagaraSystem : UAnimNotify_PlayNiagaraEffect
---@field AttachAction EParticleAction
local UAnimNotify_AttachNiagaraSystem = {}



---@class UAnimNotify_AttackHitDetection : UAnimNotifyState
local UAnimNotify_AttackHitDetection = {}


---@class UAnimNotify_BedInteract : UAnimNotifyBase
local UAnimNotify_BedInteract = {}


---@class UAnimNotify_BlendToSection : UAnimNotifyBase
---@field SectionName FName
---@field BlendOption FAlphaBlend
local UAnimNotify_BlendToSection = {}



---@class UAnimNotify_ChangeFaceMask : UAnimNotifyBase
---@field FaceMask EEmotionalFaceMasks
local UAnimNotify_ChangeFaceMask = {}



---@class UAnimNotify_ChangeWeaponIdle : UAnimNotifyBase
---@field WeaponIdle EWeaponIdleState
---@field NewShutterState EShutterState
---@field NewJamIndex int32
---@field NewUnderbarrelState EWeaponIdleType
---@field NewAimState EAnimationAimState
---@field AdditionalType EWeaponCustomAdditionalIdle
local UAnimNotify_ChangeWeaponIdle = {}



---@class UAnimNotify_ClimbingActions : UAnimNotifyBase
---@field AnimationType EAnimationType
local UAnimNotify_ClimbingActions = {}



---@class UAnimNotify_ClothState : UAnimNotifyBase
---@field ClothSimState EClothSimulationState
local UAnimNotify_ClothState = {}



---@class UAnimNotify_CodelockKeyPress : UAnimNotifyBase
---@field KeyType ECodelockKeyType
---@field CodeDigit int32
local UAnimNotify_CodelockKeyPress = {}



---@class UAnimNotify_ContextualSectionEnding : UAnimNotifyBase
local UAnimNotify_ContextualSectionEnding = {}


---@class UAnimNotify_CopyNiagaraValueFromAnotherContextualAction : UAnimNotifyBase
---@field CopyFromTo FNiagaraValueCopyFromTo
local UAnimNotify_CopyNiagaraValueFromAnotherContextualAction = {}



---@class UAnimNotify_DeathEnded : UAnimNotifyBase
local UAnimNotify_DeathEnded = {}


---@class UAnimNotify_DetachItemContextualAction : UAnimNotifyBase
---@field ContextualItemAttachments TArray<FContextualItemDetachment>
local UAnimNotify_DetachItemContextualAction = {}



---@class UAnimNotify_DialogAction : UAnimNotifyBase
---@field NotifyDialogAction ENotifyDialogAction
local UAnimNotify_DialogAction = {}



---@class UAnimNotify_DragDeadBody : UAnimNotifyBase
---@field DragDeadBodyState EDragDeadBodyState
local UAnimNotify_DragDeadBody = {}



---@class UAnimNotify_DragWeapon : UAnimNotifyBase
---@field DragImpulseRange FInputRange
local UAnimNotify_DragWeapon = {}



---@class UAnimNotify_EjectMagazine : UAnimNotifyBase
---@field Lifetime float
---@field InitialImpulse FVector
---@field MagazineSocketName FName
---@field bHideMagOnEject boolean
local UAnimNotify_EjectMagazine = {}



---@class UAnimNotify_EnableStateTagForDuration : UAnimNotifyState
---@field StateTag EStateTag
---@field bDisableIfDied boolean
local UAnimNotify_EnableStateTagForDuration = {}



---@class UAnimNotify_EquipItemContextualAction : UAnimNotifyBase
---@field ItemSID FPrototypeSID
---@field BoneToEquip FBoneReference
---@field bForceChangeItemInHand boolean
local UAnimNotify_EquipItemContextualAction = {}



---@class UAnimNotify_EquipWeaponContextualAction : UAnimNotifyBase
---@field ItemsToEquip TArray<FContextualActionNotifyWeaponEquipData>
---@field bForceChangeItemInHand boolean
local UAnimNotify_EquipWeaponContextualAction = {}



---@class UAnimNotify_FootIKState : UAnimNotifyState
---@field bShouldAffectAllBones boolean
---@field AffectedBones TArray<FBoneReference>
local UAnimNotify_FootIKState = {}



---@class UAnimNotify_ForceFeedback : UAnimNotifyBase
---@field FeedbackTag FGameplayTag
local UAnimNotify_ForceFeedback = {}



---@class UAnimNotify_ForceStopGadgetAction : UAnimNotifyBase
---@field ForceStopCondition EGadgetForceStopCondition
---@field bUseForceStopCustomBlendOutSettings boolean
---@field ForceStopBlendOutSettings FMontageBlendSettings
local UAnimNotify_ForceStopGadgetAction = {}



---@class UAnimNotify_GSCPlayMontageNotify : UAnimNotify
---@field NotifyTag FGameplayTag
local UAnimNotify_GSCPlayMontageNotify = {}



---@class UAnimNotify_GSCPlayMontageNotifyWindow : UAnimNotifyState
---@field NotifyTag FGameplayTag
local UAnimNotify_GSCPlayMontageNotifyWindow = {}



---@class UAnimNotify_GSCPoseSearchBlockTransition : UAnimNotifyState_PoseSearchBlockTransition
local UAnimNotify_GSCPoseSearchBlockTransition = {}


---@class UAnimNotify_GuitarAction : UAnimNotifyBase
---@field GuitarAction ENotifyGuitarAction
local UAnimNotify_GuitarAction = {}



---@class UAnimNotify_HandIK : UAnimNotifyBase
---@field HandToApply EAnimationHands
---@field bForceSetStartValue boolean
---@field StartValue float
---@field EndValue float
---@field BlendTime float
---@field BlendOption EAlphaBlendOption
local UAnimNotify_HandIK = {}



---@class UAnimNotify_HandIKState : UAnimNotifyState
---@field HandToApply EAnimationHands
---@field StartValue float
---@field EndValue float
---@field BlendTime float
---@field BlendOption EAlphaBlendOption
local UAnimNotify_HandIKState = {}



---@class UAnimNotify_HealReceived : UAnimNotifyBase
local UAnimNotify_HealReceived = {}


---@class UAnimNotify_HideBones : UAnimNotifyBase
---@field BoneInteractionType EBoneInteractionType
---@field ParentBoneName FName
---@field ChildAttachName FName
---@field bPropagateToChildren boolean
---@field bHideBone boolean
---@field AmmoCount int32
local UAnimNotify_HideBones = {}



---@class UAnimNotify_IOAnimEnd : UAnimNotifyBase
local UAnimNotify_IOAnimEnd = {}


---@class UAnimNotify_InteractAction : UAnimNotifyBase
---@field InteractAction EAnimInteractAction
local UAnimNotify_InteractAction = {}



---@class UAnimNotify_Jump : UAnimNotifyBase
---@field JumpState EJumpState
local UAnimNotify_Jump = {}



---@class UAnimNotify_LaunchDialogAnimation : UAnimNotifyBase
---@field DialogAnimationType EDialogAnimationType
local UAnimNotify_LaunchDialogAnimation = {}



---@class UAnimNotify_LaunchVoiceOver : UAnimNotifyBase
---@field VoiceOverSID FString
---@field bQuest boolean
local UAnimNotify_LaunchVoiceOver = {}

---@return TArray<FString>
function UAnimNotify_LaunchVoiceOver:GetVoiceoverSIDOptions() end


---@class UAnimNotify_LookAt : UAnimNotifyBase
---@field LookAtAction ELookAtAction
---@field LookAtOwnerState ELookAtOwnerState
---@field AttractionPointType EAttractionPointType
---@field bLookAtPlayer boolean
---@field LookAtPlaceholderQuestGuid FName
---@field LookAtActorFName FName
---@field TargetLocation FVector
---@field BoneName FName
---@field ReactionTime float
---@field Priority int32
---@field CollisionChannel ECollisionChannel
---@field ApplyRestrictionType EApplyRestrictionType
---@field HorizontalRestrictions TMap<ERotationPartType, FBodyPartRestriction>
---@field VerticalRestrictions TMap<ERotationPartType, FBodyPartRestriction>
local UAnimNotify_LookAt = {}



---@class UAnimNotify_MakeAttack : UAnimNotifyBase
---@field bInstantAttack boolean
local UAnimNotify_MakeAttack = {}



---@class UAnimNotify_ParkourCameraRelease : UAnimNotifyBase
local UAnimNotify_ParkourCameraRelease = {}


---@class UAnimNotify_ParkourFinalPosition : UAnimNotifyBase
local UAnimNotify_ParkourFinalPosition = {}


---@class UAnimNotify_PlayAnimationOnAttachedItemContextualAction : UAnimNotifyBase
---@field PlayAnimationOnAttachedItemData TArray<FPlayAnimationOnAttachedItemData>
local UAnimNotify_PlayAnimationOnAttachedItemContextualAction = {}



---@class UAnimNotify_PlayFacialAnimationContextualAction : UAnimNotifyBase
---@field FacialAnimations TArray<FWeightedFacialAnimation>
local UAnimNotify_PlayFacialAnimationContextualAction = {}



---@class UAnimNotify_PlayInteractablesFX : UAnimNotifyBase
---@field BoneName FName
---@field CustomBoneName FName
---@field InteractFXType EInteractFXType
local UAnimNotify_PlayInteractablesFX = {}

---@return TArray<FString>
function UAnimNotify_PlayInteractablesFX:GetAvailableBones() end


---@class UAnimNotify_PlaySoundDependOnMaterialContextualAction : UAnimNotifyBase
---@field ImpactSound UAkAudioEvent
---@field BoneReference FBoneReference
---@field TraceDirection FRotator
---@field TraceLength float
local UAnimNotify_PlaySoundDependOnMaterialContextualAction = {}



---@class UAnimNotify_PlayerAction : UAnimNotifyBase
---@field PlayerActionResult EPlayerActionResult
---@field PlayerActionType EActionType
---@field PlayerTriggerToOverride EPlayerTriggerState
---@field PlayerActionTypeToOverride EActionType
local UAnimNotify_PlayerAction = {}



---@class UAnimNotify_PlayerActionTrigger : UAnimNotifyBase
---@field TriggerNewState EPlayerActionTriggerState
---@field ActionTrigger EPlayerTriggerState
local UAnimNotify_PlayerActionTrigger = {}



---@class UAnimNotify_PlayerUIEvent : UAnimNotifyBase
---@field EventType EPlayerUIEvent
local UAnimNotify_PlayerUIEvent = {}



---@class UAnimNotify_RagdollAction : UAnimNotifyBase
---@field RagdollAction ERagdollAction
local UAnimNotify_RagdollAction = {}



---@class UAnimNotify_RelaxToStandFinished : UAnimNotifyBase
local UAnimNotify_RelaxToStandFinished = {}


---@class UAnimNotify_ResetControlRotation : UAnimNotifyBase
local UAnimNotify_ResetControlRotation = {}


---@class UAnimNotify_RetargetedAkEvent : UAnimNotify
local UAnimNotify_RetargetedAkEvent = {}

---@param Mesh USkeletalMeshComponent
---@param Socket FName
---@param AnimSequenceBase UAnimSequenceBase
---@return UAkComponent
function UAnimNotify_RetargetedAkEvent:GetAkComponentForSocket(Mesh, Socket, AnimSequenceBase) end
---@param AkComponent UAkComponent
---@param Event TSoftObjectPtr<UAkAudioEvent>
function UAnimNotify_RetargetedAkEvent:AsyncPostAkEventOnComponent(AkComponent, Event) end
---@param Mesh USkeletalMeshComponent
---@param Event TSoftObjectPtr<UAkAudioEvent>
function UAnimNotify_RetargetedAkEvent:AsyncPostAkEventAtMeshLocation(Mesh, Event) end


---@class UAnimNotify_SetAdditiveWeaponMode : UAnimNotifyState
---@field TargetWeaponAdditivePoseMod EAnimWeaponAdditivePoseMode
local UAnimNotify_SetAdditiveWeaponMode = {}



---@class UAnimNotify_SetStateTag : UAnimNotifyBase
---@field StateTag EStateTag
---@field bEnabled boolean
local UAnimNotify_SetStateTag = {}



---@class UAnimNotify_SetWeaponEnabled : UAnimNotifyBase
---@field bEnabled boolean
local UAnimNotify_SetWeaponEnabled = {}



---@class UAnimNotify_SpawnNiagaraSystemAtLocationContextualAction : UAnimNotifyBase
---@field SpawnNiagaraSystemAtLocation FSpawnNiagaraSystemAtLocation
local UAnimNotify_SpawnNiagaraSystemAtLocationContextualAction = {}



---@class UAnimNotify_SpawnParticle : UAnimNotifyBase
---@field ParticlePFX UFXSystemAsset
---@field BoneToSpawnOnName FName
---@field bIsAttachToBone boolean
---@field bListenCollision boolean
local UAnimNotify_SpawnParticle = {}



---@class UAnimNotify_StashSound : UAnimNotifyBase
---@field StashActionType EStashActionType
local UAnimNotify_StashSound = {}



---@class UAnimNotify_ThroatAnimationEnded : UAnimNotifyBase
local UAnimNotify_ThroatAnimationEnded = {}


---@class UAnimNotify_ToggleEyesLookAt : UAnimNotifyBase
---@field bIsEnabled boolean
---@field bShouldChangeEyesIdle boolean
---@field NewEyesIdleProfile ECutsceneEyesIdleProfile
local UAnimNotify_ToggleEyesLookAt = {}



---@class UAnimNotify_ToggleFlashlight : UAnimNotifyBase
local UAnimNotify_ToggleFlashlight = {}


---@class UAnimNotify_ToggleNightVision : UAnimNotifyBase
local UAnimNotify_ToggleNightVision = {}


---@class UAnimNotify_TopazActions : UAnimNotifyBase
---@field TopazAction EAnimTopazAction
local UAnimNotify_TopazActions = {}



---@class UAnimNotify_UnequipItemContextualAction : UAnimNotifyBase
---@field SlotToUnequip EMainHandEquipmentType
local UAnimNotify_UnequipItemContextualAction = {}



---@class UAnimNotify_UpdateMagazineVisibililty : UAnimNotifyBase
---@field bShowMagazine boolean
---@field TargetAttachedMagazineType EAttachedMagazineType
---@field UpdateSource EUpdateSource
local UAnimNotify_UpdateMagazineVisibililty = {}



---@class UAnimNotify_UseConsumable : UAnimNotifyBase
local UAnimNotify_UseConsumable = {}


---@class UAnimNotify_UseHandItem : UAnimNotifyBase
---@field HandItem EHandItem
local UAnimNotify_UseHandItem = {}



---@class UAnimNotify_WeaponAction : UAnimNotifyBase
---@field WeaponAction EWeaponAction
---@field bEnableTwinMagazineShift boolean
---@field ForcedIdle EShutterState
---@field AttachIdleType EAttackActionType
---@field ShowBulletMeshes boolean
---@field MagazineReloadState EMagazineReloadState
---@field ReloadTransitionRules FReloadTransitionRulesData
---@field bUnloadPerBullet boolean
---@field IsUnlocked boolean
local UAnimNotify_WeaponAction = {}



---@class UAnimNotify_ZombieWeaponEquipState : UAnimNotifyBase
---@field bEquipped boolean
---@field bShouldToggleHandIK boolean
local UAnimNotify_ZombieWeaponEquipState = {}



---@class UAnimatedItemContainerInteractionComponent : UItemContainerInteractionComponent
local UAnimatedItemContainerInteractionComponent = {}


---@class UAnimationBudgetSubsystem : UWorldSubsystem
---@field SignificanceMultiplierCurve UCurveFloat
local UAnimationBudgetSubsystem = {}



---@class UAnimationUtilitiesBPFunctionLibrary : UBlueprintFunctionLibrary
local UAnimationUtilitiesBPFunctionLibrary = {}

---@param PC APC
---@param bLock boolean
---@param InteractionData FAnimInteractableData
function UAnimationUtilitiesBPFunctionLibrary:SetPlayerLockState(PC, bLock, InteractionData) end
---@param Montage UAnimMontage
---@param Section FName
---@param NextSection FName
function UAnimationUtilitiesBPFunctionLibrary:SetMontageSectionNextSection(Montage, Section, NextSection) end
---@param Object UObject
---@param LODSyncComponent ULODSyncComponent
function UAnimationUtilitiesBPFunctionLibrary:RefreshLodSyncComponents(Object, LODSyncComponent) end
---@param Montage UAnimSequenceBase
---@param NotifyClass TSubclassOf<UAnimNotify>
---@param bShouldNotifiesBeChangedToBranchingPoint boolean
---@return boolean
function UAnimationUtilitiesBPFunctionLibrary:MoveAnimNotifiesFromInvalidPoints(Montage, NotifyClass, bShouldNotifiesBeChangedToBranchingPoint) end
---@param PC APC
---@param InteractionComponent UInteractionComponent
---@param InteractionData FAnimInteractableData
function UAnimationUtilitiesBPFunctionLibrary:LerpPlayerToInteractable(PC, InteractionComponent, InteractionData) end
---@param Object UObject
---@param GroomAsset UGroomAsset
---@return boolean
function UAnimationUtilitiesBPFunctionLibrary:IsSimulationEnable(Object, GroomAsset) end
---@param Obj AObj
---@return UAnimInstance
function UAnimationUtilitiesBPFunctionLibrary:GetCharacterAnimInstance(Obj) end


---@class UAnomalyDetectorComponent : UPassiveDetectorComponent
local UAnomalyDetectorComponent = {}


---@class UApplyAutoQuality : UMenuButtonActionBase
local UApplyAutoQuality = {}


---@class UApplyEffectComponent : UActorComponent
---@field bCanUseStackableEffects boolean
---@field EffectsToApply TArray<FInteractEffectData>
local UApplyEffectComponent = {}

---@param TargetObject AObj
function UApplyEffectComponent:RemoveEffects(TargetObject) end
---@param TargetObject AObj
function UApplyEffectComponent:ApplyEffects(TargetObject) end


---@class UApplyFirstTimeSettingsAction : UMenuButtonActionBase
local UApplyFirstTimeSettingsAction = {}


---@class UApplySettings : UStartGameAction
local UApplySettings = {}


---@class UApplySettingsAction : UMenuButtonActionBase
local UApplySettingsAction = {}


---@class UArtifactInteractableComponent : USingleClickComponent
local UArtifactInteractableComponent = {}


---@class UArtifactLightBarState : ULightBarStateBase
---@field ArtifactToEffect TMap<EArtifactType, UGSCLightBarColorEffectBase>
local UArtifactLightBarState = {}



---@class UArtifactSpawnerActivationComponent : UActorComponent
local UArtifactSpawnerActivationComponent = {}


---@class UArtifactStrafeBehaviourComponent : UActorComponent
---@field bHasScheduledJump boolean
---@field TimeTillJump float
---@field OuterRadiusJumpChance float
---@field AnotherAnomalyJumpChance float
local UArtifactStrafeBehaviourComponent = {}



---@class UAsyncActionBase : UObject
local UAsyncActionBase = {}

---@param InHintController UHintControllerBase
function UAsyncActionBase:ExecuteAction(InHintController) end


---@class UAsyncHintBox : UWidgetBase
---@field SpaceBetweenHints float
---@field HorizontalBox UHorizontalBox
---@field LegendButtonList TArray<UHintControllerBase>
local UAsyncHintBox = {}



---@class UAsyncVisibilityAction : UAsyncActionBase
---@field Visibility ESlateVisibility
local UAsyncVisibilityAction = {}



---@class UAttachSelectorIPU : UBehaviorBasedIPU
local UAttachSelectorIPU = {}


---@class UAttachSelectorSelectUnselectIPU : UInputProcessingUnit
---@field TriggerWithBiggestTime UInputTrigger
local UAttachSelectorSelectUnselectIPU = {}



---@class UAttachSelectorSlot : UWidgetBase
---@field SlotSize FVector2D
---@field SlotDirection ESlotDirection
---@field AttachIcon UImageWidget
---@field AttachButton UButton
---@field AttachBackground UImage
---@field DeactivateBackground UImage
---@field AttachBackgroundHighlighted UImage
---@field AttachBackgroundSelected UImage
---@field AttachWidgetSwitcher UWidgetSwitcher
---@field DefaultAttachIcon UImageWidget
---@field SelectedAttachIcon UImageWidget
---@field AttachSlotIndex int32
---@field DetachSlotIndex int32
---@field DefaultSlotIndex int32
---@field SelectorTip UAttachSelectorTip
---@field AttachSlotState EAttachSlotState
---@field SlotStateFlagEditorOnly uint8
---@field DisabledOpacity float
---@field SelectedHighlightedOpacity float
---@field FilledOpacity float
---@field EmptyOpacity float
---@field DetachHighlightIconScale FVector2D
---@field Shake UWidgetAnimation
---@field MoveRight UWidgetAnimation
---@field MoveLeft UWidgetAnimation
---@field MoveUp UWidgetAnimation
---@field MoveDown UWidgetAnimation
---@field MoveDownLeft UWidgetAnimation
---@field MoveDownRight UWidgetAnimation
---@field MoveUpRight UWidgetAnimation
---@field MoveUpLeft UWidgetAnimation
---@field Select UWidgetAnimation
---@field SelectDetach UWidgetAnimation
---@field ResetUnhighlighted UWidgetAnimation
---@field ResetHighlighted UWidgetAnimation
---@field CurrentPlayingAnimation UWidgetAnimation
---@field bCurrentAnimationReverse boolean
---@field bShouldCallResetAnimation boolean
---@field FramesDelay int32
---@field RemainingFrames int32
local UAttachSelectorSlot = {}

function UAttachSelectorSlot:SelectAndEquipAttach() end
function UAttachSelectorSlot:OnUnhoverSlot() end
function UAttachSelectorSlot:OnButtonHover() end


---@class UAttachSelectorTip : UWidgetBase
---@field Text UTextWidget
---@field TipPadding float
---@field ParentGridSlot UUniformGridSlot
---@field ParentPanelWidget UPanelWidget
local UAttachSelectorTip = {}

function UAttachSelectorTip:Show() end
function UAttachSelectorTip:Hide() end


---@class UAttachSelectorView : UViewBaseExtended
---@field SlotGridPanel UUniformGridPanel
---@field AttachSelectorTip UAttachSelectorTip
---@field LeftSlots TArray<UAttachSelectorSlot>
---@field RightSlots TArray<UAttachSelectorSlot>
---@field UpSlots TArray<UAttachSelectorSlot>
---@field DownSlots TArray<UAttachSelectorSlot>
---@field AllSlots TArray<UAttachSelectorSlot>
---@field FastChangeSlotTime float
---@field DetachSlot UAttachSelectorSlot
---@field CurrentChooseLine ESlotDirection
---@field IndexCurrentSelectedSlot int32
---@field SelectedSlot UAttachSelectorSlot
---@field LastHoveredAttach UAttachSelectorSlot
---@field LastTriggeredDirection ESlotDirection
local UAttachSelectorView = {}

function UAttachSelectorView:UIIterateUpSlots() end
function UAttachSelectorView:UIIterateRightSlots() end
function UAttachSelectorView:UIIterateLeftSlots() end
function UAttachSelectorView:UIIterateDownSlots() end
---@param InCurrentChooseLine ESlotDirection
function UAttachSelectorView:SetCurrentChooseLine(InCurrentChooseLine) end
function UAttachSelectorView:DetachAllAttachByDirection() end
function UAttachSelectorView:AttachSelectorSlotUp() end
function UAttachSelectorView:AttachSelectorSlotSelect() end
function UAttachSelectorView:AttachSelectorSlotRight() end
function UAttachSelectorView:AttachSelectorSlotLeft() end
function UAttachSelectorView:AttachSelectorSlotDown() end
function UAttachSelectorView:AttachSelectorDetachAll() end


---@class UAttachToLairStrategy : USquadStrategy
local UAttachToLairStrategy = {}


---@class UAttackComponent : UActorComponent
---@field ActiveState EAttackActionType
local UAttackComponent = {}



---@class UAudioRoomBakedReflectionComponent : UActorComponent
---@field AudioRoomBakedReflection UAkSwitchValue
local UAudioRoomBakedReflectionComponent = {}



---@class UAudioRoomBandwidthComponent : UActorComponent
---@field AudioRoomBandwidth UAkStateValue
local UAudioRoomBandwidthComponent = {}



---@class UAudioScattererDataAsset : UDataAsset
---@field TileBitmap UTileBitmapAdapter
---@field WorldTopLeftCoords FVector
---@field WorldWidth float
---@field WorldHeight float
local UAudioScattererDataAsset = {}



---@class UAudioSettingsWidget : USettingsPage
---@field MainVolume USettingsElementPercent
---@field MuteAllVolume USettingElementOnOff
---@field MusicVolume USettingsElementPercent
---@field PlayMusicInCombat USettingElementOnOff
---@field DialogueVolume USettingsElementPercent
---@field EffectsVolume USettingsElementPercent
---@field AudioOutputDeviceId USettingElementSwitcher
---@field TypeOfSoundDevice USettingElementSwitcher
---@field ForceMono USettingElementOnOff
---@field DynamicRange USettingElementSwitcher
---@field HelmetEffects USettingElementOnOff
---@field UseControllerSpeaker USettingElementSwitcher
---@field HazardsSoundGroup USettingElementSwitcher
---@field RadioSoundGroup USettingElementSwitcher
---@field DiegeticSoundGroup USettingElementSwitcher
---@field InterfaceSoundGroup USettingElementSwitcher
---@field InteractiveObjectsSoundGroup USettingElementSwitcher
---@field CriticalHitSound USettingElementOnOff
---@field ControllerSpeakerSpecificElements TArray<UWidget>
---@field ControllerSpeakerSoundGroupFields TArray<UWidget>
local UAudioSettingsWidget = {}



---@class UAutoInteractionComponent : UInteractionComponent
---@field InteractionData FAutoInteractionData
local UAutoInteractionComponent = {}



---@class UAutoSaveManager : UBaseManager
local UAutoSaveManager = {}


---@class UBackToSettings : UMenuButtonActionBase
local UBackToSettings = {}


---@class UBackgroundBlurView : UViewBase
local UBackgroundBlurView = {}


---@class UBarbedWireComponent : UUIDActorComponent
---@field BarbedWirePrototypeSID FString
local UBarbedWireComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UBarbedWireComponent:OnOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UBarbedWireComponent:OnOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UBarbedWireComponent:OnCompHit(HitComp, OtherActor, OtherComp, NormalImpulse, Hit) end


---@class UBarkManager : UBaseTickableManager
local UBarkManager = {}


---@class UBaseConsoleManager : UBaseTickableManager
local UBaseConsoleManager = {}


---@class UBaseDLCInstanceSubsystem : UGameInstanceSubsystem
local UBaseDLCInstanceSubsystem = {}


---@class UBaseInteractableAction : UObject
local UBaseInteractableAction = {}

function UBaseInteractableAction:RunAlternativeAction() end
function UBaseInteractableAction:RunAction() end
---@return boolean
function UBaseInteractableAction:CanInteract() end


---@class UBaseLoadingScreenWidget : UUserWidget
local UBaseLoadingScreenWidget = {}


---@class UBaseManager : UObject
local UBaseManager = {}


---@class UBaseTickableManager : UBaseManager
local UBaseTickableManager = {}


---@class UBaseVolumeComponent : UStaticMeshComponent
---@field MeshType ECollisionFormType
---@field bBlockNegativeScale boolean
---@field bForceRoundCylinderBase boolean
---@field bForceUniformSphereScale boolean
local UBaseVolumeComponent = {}



---@class UBedHoldComponent : UHoldComponent
local UBedHoldComponent = {}


---@class UBehaviorBasedIPU : UInputProcessingUnit
local UBehaviorBasedIPU = {}


---@class UBestiaryIPU : UInputProcessingUnit
local UBestiaryIPU = {}


---@class UBlockedSaveButtonPopupAction : UMenuButtonActionBase
---@field AcceptButtonNameSID FString
---@field DeclineButtonNameSID FString
local UBlockedSaveButtonPopupAction = {}



---@class UBloodsuckerInvisibilityComponent : UActorComponent
---@field InvisibilityChangeCurve UCurveFloat
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
local UBloodsuckerInvisibilityComponent = {}



---@class UBookViewBase : UViewBaseExtended
---@field DefaultPageIndex int32
---@field bShouldOpenDefaultPage boolean
---@field bShouldEnableNavigation boolean
---@field bShouldEnableClick boolean
---@field Switcher UWidgetSwitcher
---@field NavigationPanel UNavigationPanel
local UBookViewBase = {}

---@param InButtonIndex int32
function UBookViewBase:ClickMenuButton(InButtonIndex) end
function UBookViewBase:ChangeSelectButton() end


---@class UBusVolumeInterpolatorComponent : UActorComponent
local UBusVolumeInterpolatorComponent = {}


---@class UButtonBase : UWidgetBase
---@field OnButtonClicked FButtonBaseOnButtonClicked
---@field Button UButton
---@field bShouldEnableClick boolean
---@field bShouldEnableHover boolean
---@field ButtonId FName
local UButtonBase = {}

function UButtonBase:ButtonReleased() end
function UButtonBase:ButtonPressed() end
function UButtonBase:ButtonClicked() end


---@class UCSVProfilerButtonStateDefiner : UMenuButtonStateDefiner
local UCSVProfilerButtonStateDefiner = {}


---@class UCameraManager : UBaseTickableManager
---@field CameraComponent UCameraComponent
---@field PlayerCameraManager APlayerCameraManager
---@field CachedCameraLookAtMod UCameraModifier_LookAt
---@field FovMPC UMaterialParameterCollectionInstance
---@field EnvironmentMPC UMaterialParameterCollectionInstance
local UCameraManager = {}



---@class UCameraModifier_AbilityCamModifier : UCameraModifier
---@field OnStageChanged FCameraModifier_AbilityCamModifierOnStageChanged
---@field Stages TArray<FAbilityCamModifierStage>
local UCameraModifier_AbilityCamModifier = {}

---@param NewLocation FVector
function UCameraModifier_AbilityCamModifier:UpdateCameraTargetLocation(NewLocation) end
function UCameraModifier_AbilityCamModifier:ResetCameraTargetLocation() end


---@class UCameraModifier_LookAt : UCameraModifier
---@field PlayerController APlayerController
local UCameraModifier_LookAt = {}



---@class UCameraModifier_PsyAttackFocusTarget : UCameraModifier
local UCameraModifier_PsyAttackFocusTarget = {}


---@class UCameraModifier_ResetRelativeRotation : UCameraModifier
local UCameraModifier_ResetRelativeRotation = {}


---@class UCampaignManager : UBaseManager
---@field SaveLoadIO USaveLoadIO
local UCampaignManager = {}



---@class UCampaignSlotButton : UMenuButtonBase
---@field SlotIndex UTextWidget
---@field LastSaveName UTextWidget
---@field LastSaveDateTime UTextWidget
---@field LastSaveLocationName UTextWidget
---@field LastSaveDifficulty UTextWidget
---@field LastSaveThumbnail UImage
---@field Background UImage
---@field DifficultyPrefix UTextWidget
---@field DifficultyDots UTextWidget
---@field RegionPrefix UTextWidget
---@field RegionDots UTextWidget
---@field DateTimeFormat FString
---@field EmptySlotNameSID FString
---@field SaveIcons TArray<TSoftObjectPtr<UTexture2D>>
local UCampaignSlotButton = {}



---@class UCampaignSlotsSubView : UMenuSubViewBase
---@field CampaignSlotButtonClass TSubclassOf<UCampaignSlotButton>
---@field EmptyCampaignSlotButtonClass TSubclassOf<UCampaignSlotButton>
---@field EmptyCampaignSlotButtonAction UMenuButtonActionBase
---@field CampaignSlotButtonAction UMenuButtonActionBase
---@field CampaignSlotButtonShortcuts TArray<FShortcutData>
---@field EmptyCampaignSlotButtonShortcuts TArray<FShortcutData>
local UCampaignSlotsSubView = {}



---@class UCapturePGO : UMenuButtonActionBase
local UCapturePGO = {}


---@class UChangeMagazineToRoundIPU : UInputProcessingUnit
local UChangeMagazineToRoundIPU = {}


---@class UChangeMagazineToTwinIPU : UInputProcessingUnit
local UChangeMagazineToTwinIPU = {}


---@class UChangeScopeZoomIPU : UInputProcessingUnit
local UChangeScopeZoomIPU = {}


---@class UChangeWidgetSwitcher : UWidgetSwitcher
---@field SwitcherId FName
local UChangeWidgetSwitcher = {}

function UChangeWidgetSwitcher:PreDestructUpdate() end
function UChangeWidgetSwitcher:PreConstructUpdate() end


---@class UCharacterStatSlot : UWidgetBase
---@field StatImage UImage
---@field ProgressImage UImage
---@field ProgressBeckground UImage
---@field bShouldShowProgress boolean
---@field StatIcon UTexture2D
local UCharacterStatSlot = {}



---@class UCheckBoxWidget : UWidgetBase
---@field ImageObj UImageWidget
---@field bShouldStartChecked boolean
---@field bEnableMouseEvent boolean
---@field bEnableHoverRecolor boolean
---@field HoverTint FLinearColor
---@field NormalTint FLinearColor
---@field bEnableStyleManager boolean
---@field CheckedStyleId FName
---@field UnCheckedStyleId FName
---@field OnChangeCheck FCheckBoxWidgetOnChangeCheck
---@field OnCheckBoxClick FCheckBoxWidgetOnCheckBoxClick
local UCheckBoxWidget = {}

---@param bInChecked boolean
---@param bBrodcastOnChangeCheck boolean
function UCheckBoxWidget:SetChecked(bInChecked, bBrodcastOnChangeCheck) end
---@return boolean
function UCheckBoxWidget:GetChecked() end


---@class UChildViewBase : UWidgetBase
local UChildViewBase = {}


---@class UCinematicManager : UBaseManager
---@field CinematicSectionParams FCinematicSectionParams
local UCinematicManager = {}

---@param NPCSID FString
---@param DialogSID FString
function UCinematicManager:OnSubtitleSectionStart(NPCSID, DialogSID) end
function UCinematicManager:OnSubtitleSectionEnd() end
---@param InCinematicSectionParams FCinematicSectionParams
function UCinematicManager:OnKeyFrameSectionStart(InCinematicSectionParams) end
---@param SectionName FName
function UCinematicManager:OnKeyFrameSectionEnd(SectionName) end
---@param ForceFeeedbackEffectTag FGameplayTag
function UCinematicManager:OnHapticFeedbackStart(ForceFeeedbackEffectTag) end
---@param ForceFeeedbackEffectTag FGameplayTag
function UCinematicManager:OnHapticFeedbackEnd(ForceFeeedbackEffectTag) end
---@param bFadeOut boolean
---@param FadeTargetColor FLinearColor
---@param FadeAmount float
---@param FadeTime float
function UCinematicManager:OnFadeScreenEnd(bFadeOut, FadeTargetColor, FadeAmount, FadeTime) end
function UCinematicManager:OnCinematicStopped() end
function UCinematicManager:OnCinematicStarted() end


---@class UClothSimulationManager : UBaseTickableManager
local UClothSimulationManager = {}


---@class UCodeComponent : UGuidActorComponent
---@field CorrectCode FString
---@field MaximumCodeLength int32
local UCodeComponent = {}

function UCodeComponent:ResetCode() end


---@class UCodelockClearAllIPU : UInputProcessingUnit
local UCodelockClearAllIPU = {}


---@class UCodelockClearOneIPU : UInputProcessingUnit
local UCodelockClearOneIPU = {}


---@class UCodelockConfirmIPU : UInputProcessingUnit
local UCodelockConfirmIPU = {}


---@class UCodelockDirectionBaseIPU : UInputProcessingUnit
local UCodelockDirectionBaseIPU = {}


---@class UCodelockDownIPU : UCodelockDirectionBaseIPU
local UCodelockDownIPU = {}


---@class UCodelockExitIPU : UInputProcessingUnit
local UCodelockExitIPU = {}


---@class UCodelockLeftIPU : UCodelockDirectionBaseIPU
local UCodelockLeftIPU = {}


---@class UCodelockMousePressIPU : UInputProcessingUnit
local UCodelockMousePressIPU = {}


---@class UCodelockNumBaseIPU : UInputProcessingUnit
local UCodelockNumBaseIPU = {}


---@class UCodelockPressIPU : UInputProcessingUnit
local UCodelockPressIPU = {}


---@class UCodelockRightIPU : UCodelockDirectionBaseIPU
local UCodelockRightIPU = {}


---@class UCodelockSingleClickComponent : USingleClickComponent
local UCodelockSingleClickComponent = {}

---@param InteractedActor AObj
function UCodelockSingleClickComponent:Interact(InteractedActor) end


---@class UCodelockUpIPU : UCodelockDirectionBaseIPU
local UCodelockUpIPU = {}


---@class UCombatSubsystem : UBaseManager
local UCombatSubsystem = {}


---@class UCombatSynchronizerSubsystem : UWorldSubsystem
local UCombatSynchronizerSubsystem = {}


---@class UCombinationLock : UInteractableComponent
---@field bAvailableToPlayer boolean
---@field Code int32
---@field Opened boolean
local UCombinationLock = {}



---@class UCommonVerticalBox : UVerticalBox
local UCommonVerticalBox = {}


---@class UCompassManager : UBaseTickableManager
local UCompassManager = {}


---@class UCompassWidget : UChildViewBase
---@field StealthNoiseIndicator UImage
---@field BackgroundImage UImage
---@field CompassCardinalDirectionImage UImage
---@field BodyCompassLine UImage
---@field LineRight UImage
---@field LineLeft UImage
---@field NoiseProgress UProgressBar
---@field NoiseProgressBottomLines UProgressBar
---@field Arrow UImage
---@field MarkerContainer UCanvasPanel
---@field CompassSize USizeBox
---@field LineSizeBox USizeBox
---@field MultiplyBodyLineSpeedPercent float
---@field CenterZoneWidth float
---@field MaskZoneWidth float
---@field HiddeMarkerZone float
---@field CenterCompassBorder float
---@field UpdateBackgroundTime float
---@field TopMarkerHeight float
---@field BottomMarkerHeigth float
---@field bShouldEnableAutoUpdate boolean
---@field NoiseBarFillSpeed float
---@field NoiseBarReduceSpeed float
---@field bShouldEnableAutoHideCompaas boolean
---@field TimeUpdateHideCompaasMax float
---@field TimeUpdateHideCompaas float
---@field bShouldEnableTurnAngleAutoHide boolean
---@field PlayerTurnAngleMax float
---@field ApproximationPlayerLocation float
---@field ColorInRadiasMain FLinearColor
---@field ColorInRadiasSecondary FLinearColor
---@field ColorForBattleModAnimation FLinearColor
---@field ColorForQuestZoneSearchAnimation FLinearColor
---@field bDisableNoiseIndicator boolean
---@field ShowAnimation UWidgetAnimation
---@field SlowShowAnimationSpeedMultiplier float
---@field FastShowAnimationSpeedMultiplier float
---@field StealthNoiseWavingAnimation UWidgetAnimation
local UCompassWidget = {}



---@class UConfirmUpgradePopup : UWidgetBase
---@field Title UTextWidget
---@field RichDescription URichTextWidget
---@field ConfirmHint UHintInputController
---@field CancelHint UHintInputController
local UConfirmUpgradePopup = {}



---@class UContextualActionAssetDataShared : UBaseManager
local UContextualActionAssetDataShared = {}


---@class UContextualActionCommunicationManager : UBaseTickableManager
local UContextualActionCommunicationManager = {}


---@class UContextualActionComponent : UUIDActorComponent
---@field AttachmentItemRule EAttachmentRule
---@field DetachmentItemLocationRule EDetachmentRule
---@field DetachmentItemRotationRule EDetachmentRule
local UContextualActionComponent = {}



---@class UContextualActionEffect : UObject
local UContextualActionEffect = {}


---@class UContextualActionNeedEffect : UContextualActionEffect
---@field ContextualActionNeed EContextualActionNeeds
---@field ChangeValuePerSelector float
local UContextualActionNeedEffect = {}



---@class UContextualActionSubsystem : UTickableWorldSubsystem
local UContextualActionSubsystem = {}


---@class UContinueButtonStateDefiner : UMenuButtonStateDefiner
local UContinueButtonStateDefiner = {}


---@class UControlSettingsPopup : UPopupBase
---@field DescriptionLegendText URichTextBlock
---@field DescriptionSID FString
---@field ActionTextStyleID FName
---@field KeyImageIndex int32
---@field TextImageIndex int32
local UControlSettingsPopup = {}



---@class UControlsSettingsWidget : USettingsPage
---@field DisableAdaptiveTriggerPopupTitleSID FString
---@field DisableAdaptiveTriggerPopupDescSID FString
---@field DisableAdaptiveTriggerPopupConfirmSID FString
---@field DisableAdaptiveTriggerPopupCancelSID FString
---@field RestoreRightDeadZoneTriggersTitleSID FString
---@field RestoreRightDeadZoneTriggersDescSID FString
---@field RestoreRightDeadZoneTriggersConfirmSID FString
---@field RestoreRightDeadZoneTriggersCancelSID FString
---@field VerticalInversion USettingElementOnOff
---@field HorizontalInversion USettingElementOnOff
---@field CursorSensitivity USettingsElementPercent
---@field MouseAimSensitivity USettingsElementPercent
---@field OpenKeyboardMappingButton USettingElementButton
---@field VibrationFeedbackSwitchPC USettingElementSwitcher
---@field VibrationFeedbackSwitch USettingElementSwitcher
---@field AdaptiveTriggersIntensity USettingElementSwitcher
---@field AdaptiveTriggers USettingElementOnOff
---@field AutoLean USettingElementOnOff
---@field GamepadVerticalInversion USettingElementOnOff
---@field GamepadHorizontalInversion USettingElementOnOff
---@field GamepadSensitivity USettingsElementPercent
---@field GamepadAimSensitivity USettingsElementPercent
---@field MotionAimAssist USettingElementOnOff
---@field MotionVerticalInversion USettingElementOnOff
---@field MotionHorizontalInversion USettingElementOnOff
---@field MotionVerticalSensitivity USettingsElementPercent
---@field MotionHorizontalSensitivity USettingsElementPercent
---@field AimAssistType USettingElementSwitcher
---@field AimAssistSnappingAutomaticTargetChange USettingElementOnOff
---@field AimAssistSnappingCameraRadiusTolerance USettingElementOnOff
---@field AimAssistSnappingModifier USettingElementOnOff
---@field AimAssistSnappingTime USnappingTimeSettingsElement
---@field AimAssistStickiness USettingsElementPercent
---@field AimAssistTracking USettingsElementPercent
---@field MotionGestures USettingElementOnOff
---@field AimOnHold USettingElementSwitcher
---@field HoldBreathOnHold USettingElementSwitcher
---@field CrouchOnHold USettingElementSwitcher
---@field ItemSelectorOnHold USettingElementSwitcher
---@field SprintOnHold USettingElementSwitcher
---@field WalkOnHold USettingElementSwitcher
---@field AttachSelectorOnHold USettingElementSwitcher
---@field LeanOnHold USettingElementSwitcher
---@field LadderOnHold USettingElementSwitcher
---@field LeftThumbstickMin USettingsElementPercent
---@field LeftThumbstickMax USettingsElementPercent
---@field RightThumbstickMin USettingsElementPercent
---@field RightThumbstickMax USettingsElementPercent
---@field LeftTriggerMin USettingsElementPercent
---@field LeftTriggerMax USettingsElementPercent
---@field RightTriggerMin USettingsElementPercent
---@field RightTriggerMax USettingsElementPercent
---@field MovementCurve USettingElementSwitcher
---@field MovementStickValue0 USettingsElementPercent
---@field MovementCurveValue0 USettingsElementPercent
---@field MovementLeaveTangent0 USettingsElementPercent
---@field MovementLeaveTangentWeight0 USettingsElementPercent
---@field MovementStickValue1 USettingsElementPercent
---@field MovementCurveValue1 USettingsElementPercent
---@field MovementArriveTangent1 USettingsElementPercent
---@field MovementArriveTangentWeight1 USettingsElementPercent
---@field MovementLeaveTangent1 USettingsElementPercent
---@field MovementLeaveTangentWeight1 USettingsElementPercent
---@field MovementStickValue2 USettingsElementPercent
---@field MovementCurveValue2 USettingsElementPercent
---@field MovementArriveTangent2 USettingsElementPercent
---@field MovementArriveTangentWeight2 USettingsElementPercent
---@field CameraCurve USettingElementSwitcher
---@field CameraStickValue0 USettingsElementPercent
---@field CameraCurveValue0 USettingsElementPercent
---@field CameraLeaveTangent0 USettingsElementPercent
---@field CameraLeaveTangentWeight0 USettingsElementPercent
---@field CameraStickValue1 USettingsElementPercent
---@field CameraCurveValue1 USettingsElementPercent
---@field CameraArriveTangent1 USettingsElementPercent
---@field CameraArriveTangentWeight1 USettingsElementPercent
---@field CameraLeaveTangent1 USettingsElementPercent
---@field CameraLeaveTangentWeight1 USettingsElementPercent
---@field CameraStickValue2 USettingsElementPercent
---@field CameraCurveValue2 USettingsElementPercent
---@field CameraArriveTangent2 USettingsElementPercent
---@field CameraArriveTangentWeight2 USettingsElementPercent
---@field KAMSpecificElements TArray<UWidget>
---@field GamepadSpecificElements TArray<UWidget>
---@field CameraStickSpecificElements TArray<USettingElement>
---@field MovementStickSpecificElements TArray<USettingElement>
---@field MovementCurveSettingSwitchers TArray<FCurvePointSettings>
---@field CameraCurveSettingSwitchers TArray<FCurvePointSettings>
local UControlsSettingsWidget = {}



---@class UCoverUtilitiesBPFunctionLibrary : UBlueprintFunctionLibrary
local UCoverUtilitiesBPFunctionLibrary = {}


---@class UCoversStorage : UBaseManager
local UCoversStorage = {}


---@class UCppMediator : UBlueprintFunctionLibrary
local UCppMediator = {}

---@param Lines TArray<FString>
---@param RelativePath FString
---@param bAddUtf8Bom boolean
---@param bOverwrite boolean
---@return boolean
function UCppMediator:WriteCSV(Lines, RelativePath, bAddUtf8Bom, bOverwrite) end
---@param AffectedActor AActor
function UCppMediator:UnbindInteractPaintMaterial(AffectedActor) end
---@param PrototypeID FString
function UCppMediator:UIManagerOnQuestDeselected(PrototypeID) end
---@return FString
function UCppMediator:UIManagerGenerateAndGetDefaultNameSave() end
---@param SID FPrototypeSID
function UCppMediator:StartQuestNode(SID) end
---@param WorldContextObject UObject
---@param DecalMaterial UMaterialInterface
---@param DecalSize FVector
---@param Location FVector
---@param Rotation FRotator
---@param LifeSpan float
---@return UTriplanarDecalComponent
function UCppMediator:SpawnTriplanarDecalAtLocation(WorldContextObject, DecalMaterial, DecalSize, Location, Rotation, LifeSpan) end
---@param Obj AObj
---@param bShowOnMap boolean
---@param bShowOnCompass boolean
function UCppMediator:SpawnSearchPoint(Obj, bShowOnMap, bShowOnCompass) end
---@param PrevSolarTime float
---@param SolarTime float
---@param UpdateSunDeltaTime float
---@return boolean
function UCppMediator:ShouldUpdateSolarTime(PrevSolarTime, SolarTime, UpdateSunDeltaTime) end
---@param AffectedMesh UMeshComponent
---@param YellowPaintMaterial TSoftObjectPtr<UMaterialInterface>
---@param DefaultMaterial TSoftObjectPtr<UMaterialInterface>
---@param bPaintEnabled boolean
---@param MaterialSlot int32
function UCppMediator:SetupMaterialForInteractPaint(AffectedMesh, YellowPaintMaterial, DefaultMaterial, bPaintEnabled, MaterialSlot) end
function UCppMediator:SettingsManagerRestoreCachedSettings() end
function UCppMediator:SettingsManagerCacheCurrentSettings() end
function UCppMediator:SettingsManagerApplySettings() end
---@param InSelectedLanguage ELocalizationLanguage
function UCppMediator:SetSelectedTextLanguage(InSelectedLanguage) end
---@param InSelectedLanguage ELocalizationLanguage
function UCppMediator:SetSelectedLanguage(InSelectedLanguage) end
---@param InSelectedLanguage ELocalizationLanguage
function UCppMediator:SetSelectedAudioLanguage(InSelectedLanguage) end
---@param VariableName FString
---@param Val int32
function UCppMediator:SetScalabilityVariableInt(VariableName, Val) end
---@param VariableName FString
---@param Val float
function UCppMediator:SetScalabilityVariableFloat(VariableName, Val) end
---@param bInMuteAllVolume boolean
function UCppMediator:SetMuteAllVolume(bInMuteAllVolume) end
---@param InMusicVolume float
function UCppMediator:SetMusicVolume(InMusicVolume) end
---@param InMouseSensitivityCoef float
function UCppMediator:SetMouseSensitivityCoef(InMouseSensitivityCoef) end
---@param Mesh UStaticMesh
---@param bEnable boolean
function UCppMediator:SetMeshNaniteSettings(Mesh, bEnable) end
---@param InVolume float
function UCppMediator:SetMainVolume(InVolume) end
---@param InEffectsVolume float
function UCppMediator:SetEffectsVolume(InEffectsVolume) end
---@param InDialogueVolume float
function UCppMediator:SetDialogueVolume(InDialogueVolume) end
---@param InAimMouseSensitivityCoef float
function UCppMediator:SetAimMouseSensitivityCoef(InAimMouseSensitivityCoef) end
---@param HumanDefaultAnimCollection UHumanDefaultAnimCollection
function UCppMediator:SerializeCoverOffsetsToConfig(HumanDefaultAnimCollection) end
---@param SettingCategoryType ESettingCategoryType
function UCppMediator:SelectCurrentSettings(SettingCategoryType) end
---@param CharacterSID FString
---@param MeshGenerator UMeshGeneratorEditor
---@param bSaveObj boolean
---@param bSaveItemGenerator boolean
---@param SaveObjConfigPath FString
---@param ParentItemGenerator FString
---@param NewRank FString
function UCppMediator:SaveCharacter(CharacterSID, MeshGenerator, bSaveObj, bSaveItemGenerator, SaveObjConfigPath, ParentItemGenerator, NewRank) end
---@return UWorld
function UCppMediator:RuntimeGetWorld() end
function UCppMediator:ResetSelectedSettings() end
---@param Obj AObj
function UCppMediator:ResetInvulnerable(Obj) end
---@param Component USceneComponent
function UCppMediator:ResetComponentVelocity(Component) end
function UCppMediator:RequestSaveSettings() end
function UCppMediator:ReloadConfigPrototypes() end
---@param InteractionComponent UInteractionComponent
---@param LauncherName FString
function UCppMediator:QuestInteractionComponentFinishAction(InteractionComponent, LauncherName) end
---@param bPlayAudiolog boolean
function UCppMediator:OnToggleAudiolog(bPlayAudiolog) end
---@param Obj AObj
---@return float
function UCppMediator:ObjGetHP(Obj) end
---@param RawInt32 int32
---@return FItemUID
function UCppMediator:MakeItemUID(RawInt32) end
---@param RawInt32 int32
---@return FItemContainerUID
function UCppMediator:MakeItemContainerUID(RawInt32) end
---@param Obj AObj
function UCppMediator:MakeInvulnerable(Obj) end
---@return int32
function UCppMediator:MakeInvalidGUID() end
---@param Fields TArray<FString>
---@return FString
function UCppMediator:MakeCsvRow(Fields) end
---@param Sender AActor
---@param errorMessage FString
function UCppMediator:LogError(Sender, errorMessage) end
---@param Location FVector
---@param Rotation FRotator
function UCppMediator:LerpPlayerToLocationAndRotation(Location, Rotation) end
---@param Actor AObj
---@return boolean
function UCppMediator:IsWalking(Actor) end
---@param Location FVector
---@param AudioEvent UAkAudioEvent
---@return boolean
function UCppMediator:IsSoundInProximity(Location, AudioEvent) end
---@return boolean
function UCppMediator:IsRunningWorldPartitionMigrationFromCommandlet() end
---@param JournalQuest FJournalQuest
---@return boolean
function UCppMediator:IsQuestSelected(JournalQuest) end
---@return boolean
function UCppMediator:IsPerfSentinelRun() end
---@return boolean
function UCppMediator:IsPendingLoadQuickSave() end
---@param Obj AObj
---@return boolean
function UCppMediator:IsObjAlive(Obj) end
---@param Mesh UStaticMesh
---@return boolean
function UCppMediator:IsNaniteEnabledForMesh(Mesh) end
---@param Actor AObj
---@return boolean
function UCppMediator:IsMoving(Actor) end
---@return boolean
function UCppMediator:IsInteractionPaintEnabled() end
---@return boolean
function UCppMediator:IsGamePlaying() end
---@param Location FVector
---@return boolean
function UCppMediator:IsFarAwayFromPlayer(Location) end
---@return boolean
function UCppMediator:IsEmissionActive() end
---@param ActorToCheck AActor
---@return boolean
function UCppMediator:IsActorInGameWorld(ActorToCheck) end
---@param Actor AObj
---@return boolean
function UCppMediator:HasValidGUID(Actor) end
---@param Actor AActor
---@return boolean
function UCppMediator:HasAnySignal(Actor) end
---@return float
function UCppMediator:GetSkyLightUpdateDeltaTime() end
---@param Actor AObj
---@return int32
function UCppMediator:GetPrototypeID(Actor) end
---@return float
function UCppMediator:GetNotificationAudiologDelay() end
---@return TArray<FString>
function UCppMediator:GetNotePrototypeIDs() end
---@return TArray<UMeshGeneratorEditor>
function UCppMediator:GetMeshGenerators() end
---@param Obj AObj
---@param ItemName FString
---@return int32
function UCppMediator:GetItemsCountInInventory(Obj, ItemName) end
---@param Actor AObj
---@return int32
function UCppMediator:GetGUID(Actor) end
---@param Obj AObj
---@return AObj
function UCppMediator:GetFocusedEnemy(Obj) end
---@return TArray<FJournalQuest>
function UCppMediator:GetFinishedQuests() end
---@return TArray<FJournalQuest>
function UCppMediator:GetFailedQuests() end
---@return FVector
function UCppMediator:GetEmissionLocation() end
---@return float
function UCppMediator:GetCurrentAudiologPlayedTime() end
---@return float
function UCppMediator:GetCurrentAudiologDuration() end
---@return double
function UCppMediator:GetAudiologAudioTimeSeconds() end
---@return float
function UCppMediator:GetAnomalyCullingRadius() end
---@param TargetGUID FGuid
---@return AActor
function UCppMediator:GetActorByGuid(TargetGUID) end
---@return TArray<FJournalQuest>
function UCppMediator:GetActiveSecondaryQuests() end
---@return TArray<FJournalQuest>
function UCppMediator:GetActiveMainQuests() end
---@param StaticMeshComponent UStaticMeshComponent
---@param AnimBoneName FName
---@param AnimSequence UAnimSequence
---@param CollisionProfileName FName
---@return AActor
function UCppMediator:GenerateActorWithKeyframedTransform(StaticMeshComponent, AnimBoneName, AnimSequence, CollisionProfileName) end
---@param In FString
---@return FString
function UCppMediator:EscapeCsvField(In) end
---@param Obj AObj
function UCppMediator:DespawnSearchPoint(Obj) end
---@param SenderObj AObj
---@param Location FVector
---@param Direction FVector
function UCppMediator:CreateAIVoiceEvent(SenderObj, Location, Direction) end
---@param SenderObj AObj
---@param Location FVector
---@param EventType ESoundEventType
function UCppMediator:CreateAIEvent(SenderObj, Location, EventType) end
---@return boolean
function UCppMediator:CanPlayAudiolog() end
---@param AffectedActor AActor
function UCppMediator:BindInteractPaintMaterial(AffectedActor) end


---@class UCrashAnalyticSubsystem : UTickableWorldSubsystem
local UCrashAnalyticSubsystem = {}


---@class UCreator : UBaseManager
local UCreator = {}


---@class UCreditsImage : UUserWidget
---@field Image UImage
local UCreditsImage = {}



---@class UCreditsName : UUserWidget
---@field NameText UTextWidget
local UCreditsName = {}



---@class UCreditsNamesWidget : UUserWidget
---@field NamesVerticalBox UVerticalBox
---@field CreditsNameClass TSubclassOf<UCreditsName>
---@field NameDisplaySettings FNameDisplaySettings
local UCreditsNamesWidget = {}



---@class UCreditsRoleWidget : UUserWidget
---@field RoleHorizontalBox UHorizontalBox
---@field RoleText UTextWidget
---@field CreditsNamesClass TSubclassOf<UCreditsNamesWidget>
---@field NamesDisplaySettings FNamesWidgetDisplaySettings
local UCreditsRoleWidget = {}



---@class UCreditsSectionTitle : UUserWidget
---@field RoleText UTextWidget
local UCreditsSectionTitle = {}



---@class UCreditsSpacer : UUserWidget
---@field Spacer USpacer
local UCreditsSpacer = {}



---@class UCreditsSubView : UMenuSubViewBase
---@field CreditsWidget UCreditsWidget
local UCreditsSubView = {}



---@class UCreditsWidget : UWidgetBase
---@field ItemsContainer UVerticalBox
---@field CreditsScroll UScrollBox
---@field CreditsOverlay UOverlay
---@field SpacerClass TSubclassOf<UCreditsSpacer>
---@field CreditsSectionTitleClass TSubclassOf<UCreditsSectionTitle>
---@field CreditsRoleTitleClass TSubclassOf<UCreditsRoleWidget>
---@field CreditsNamesClass TSubclassOf<UCreditsNamesWidget>
---@field AppearAnimation UWidgetAnimation
---@field SectionTitleDisplaySettings FSectionTitleDisplaySettings
---@field FirstRoleDisplaySettings FRoleDisplaySettings
---@field RoleDisplaySettings FRoleDisplaySettings
---@field CreditsScrollMultiplier float
---@field CreditsScrollUserMultiplier float
---@field WwiseLogoTexture UTexture2D
---@field WwiseLogoColor FLinearColor
local UCreditsWidget = {}



---@class UCrosshairWidgetBase : UChildViewBase
---@field DelayInterpol float
---@field ShowCrosshairAnim UWidgetAnimation
---@field HideCrosshairAnim UWidgetAnimation
---@field bEnableCrosshairAnimation boolean
---@field CrosshairAnimationSpeed float
local UCrosshairWidgetBase = {}



---@class UCrosshairWidgetCircle : UCrosshairWidgetBase
---@field Point UImage
---@field circle UImage
---@field Container UOverlay
---@field CircleMaterial UMaterialInstanceDynamic
---@field bEnableDespersionLimit boolean
---@field RadiuseParametr FName
---@field RadiuseParametrMax FName
local UCrosshairWidgetCircle = {}



---@class UCrosshairWidgetCross : UCrosshairWidgetBase
---@field shift float
---@field bEnableDespersionLimit boolean
---@field DownLine UImage
---@field LeftLine UImage
---@field RightLine UImage
---@field UpLine UImage
---@field Point UImage
local UCrosshairWidgetCross = {}



---@class UCrosshairWidgetPoint : UCrosshairWidgetBase
---@field Point UImage
local UCrosshairWidgetPoint = {}



---@class UCrosshairWidgetSwitcher : UChildViewBase
---@field CrosshairSwitcher UWidgetSwitcher
---@field ShowCrosshairAnim UWidgetAnimation
---@field HideCrosshairAnim UWidgetAnimation
---@field BlockHideCrosshairAnim UWidgetAnimation
---@field bUseDiffirentCrosshairType boolean
---@field DefaultCrosshairType ECrosshairType
---@field CrosshairType TMap<ECrosshairTypeSetting, boolean>
---@field CrosshairAnimationAimSpeed float
---@field CurrCrosshairWidget UCrosshairWidgetBase
local UCrosshairWidgetSwitcher = {}



---@class UCrouchIPU : UBehaviorBasedIPU
local UCrouchIPU = {}


---@class UCurrentDifficultyWidget : UWidgetBase
---@field CurrentDifficulty UTextWidget
---@field CurrentModification UTextWidget
---@field LeftBrace UTextWidget
---@field RightBrace UTextWidget
local UCurrentDifficultyWidget = {}



---@class UCurrentMainViewIndicator : UWidgetBase
---@field TextSettings FTextSettings
---@field MainViewText UTextWidget
---@field MainMenuSID FString
---@field PauseMenuSID FString
---@field GameOverMenuSID FString
---@field UndefinedMenuSID FString
local UCurrentMainViewIndicator = {}



---@class UCustomButton : UButton
---@field Tag int32
---@field CustomIntParam1 int32
---@field CustomIntParam2 int32
---@field CustomFloatParam3 float
---@field CustomFloatParam4 float
---@field StringTag FString
---@field FloatTag float
local UCustomButton = {}

function UCustomButton:OnPress() end
function UCustomButton:OnClick() end


---@class UCustomConsoleManager : UBaseConsoleManager
---@field PersonalConsoleManagers TArray<UBaseConsoleManager>
local UCustomConsoleManager = {}

---@param Command FString
function UCustomConsoleManager:XRunEngineCommand(Command) end
---@param PathToFile FString
function UCustomConsoleManager:XExecuteFromFile(PathToFile) end
---@param ScriptKeyName FString
function UCustomConsoleManager:XExecuteAdditionalScript(ScriptKeyName) end
---@param ScriptArray TArray<FString>
function UCustomConsoleManager:ExecuteScripts(ScriptArray) end


---@class UCustomConsoleManagerAA : UBaseConsoleManager
local UCustomConsoleManagerAA = {}

---@param Guid FString
function UCustomConsoleManagerAA:XTryReceiveSignal(Guid) end
function UCustomConsoleManagerAA:XToggleMagnetForMarkers() end
function UCustomConsoleManagerAA:XToggleArtifactSpawnerDebugInfo() end
---@param Types FString
function UCustomConsoleManagerAA:XToggleAkVisualization(Types) end
---@param QuestSID FString
function UCustomConsoleManagerAA:XTestJournalQuestRewardCategory(QuestSID) end
---@param NPCSID FString
function UCustomConsoleManagerAA:XTeleportNPCToSpawn(NPCSID) end
---@param NPCSID FString
function UCustomConsoleManagerAA:XTeleportNPCToPlayer(NPCSID) end
---@param SID FString
function UCustomConsoleManagerAA:XStartQuestNodeBySID(SID) end
---@param ID FString
function UCustomConsoleManagerAA:XStartQuestNode(ID) end
---@param SID FString
function UCustomConsoleManagerAA:XStartQuestBySID(SID) end
---@param ID FString
function UCustomConsoleManagerAA:XStartQuest(ID) end
---@param SID FString
function UCustomConsoleManagerAA:XSkipToQuestNode(SID) end
function UCustomConsoleManagerAA:XSkipInfotopicRefreshCooldown() end
---@param SetupDuration float
function UCustomConsoleManagerAA:XSimulateWaitForProfileSettingUp(SetupDuration) end
---@param Show boolean
function UCustomConsoleManagerAA:XShowSpawnDebugInfo(Show) end
---@param bShow boolean
function UCustomConsoleManagerAA:XShowQuestTriggers(bShow) end
---@param HubSID FString
function UCustomConsoleManagerAA:XShowHubOwner(HubSID) end
function UCustomConsoleManagerAA:XShowCurrentLocation() end
function UCustomConsoleManagerAA:XShowCurrentImportantChoices() end
---@param Hour int32
---@param Minute int32
---@param Second int32
function UCustomConsoleManagerAA:XSetWeatherTime(Hour, Minute, Second) end
---@param Speed float
function UCustomConsoleManagerAA:XSetTimeSpeed(Speed) end
---@param LocaleString FString
function UCustomConsoleManagerAA:XSetTextLanguage(LocaleString) end
---@param bState boolean
function UCustomConsoleManagerAA:XSetSearchpointDebugState(bState) end
---@param Radius float
---@param RelationValue int32
function UCustomConsoleManagerAA:XSetRelationsInRadius(Radius, RelationValue) end
---@param SID FString
---@param PinNumber int32
function UCustomConsoleManagerAA:XSetRandomNodeDefinedPinBySID(SID, PinNumber) end
---@param ID FString
---@param PinNumber int32
function UCustomConsoleManagerAA:XSetRandomNodeDefinedPin(ID, PinNumber) end
---@param Hour int32
---@param Minute int32
---@param Second int32
function UCustomConsoleManagerAA:XSetGameTime(Hour, Minute, Second) end
---@param DifficultySID FString
function UCustomConsoleManagerAA:XSetDifficultySID(DifficultySID) end
---@param LocaleString FString
function UCustomConsoleManagerAA:XSetAudioLanguage(LocaleString) end
---@param NewValue float
function UCustomConsoleManagerAA:XSetAkVisualizationRadius(NewValue) end
function UCustomConsoleManagerAA:XRevealAllMarkers() end
function UCustomConsoleManagerAA:XRestartCurrentDialog() end
---@param SID FString
function UCustomConsoleManagerAA:XResetRandomNodeBySID(SID) end
---@param ID FString
function UCustomConsoleManagerAA:XResetRandomNode(ID) end
---@param SID FString
function UCustomConsoleManagerAA:XResetQuestBySID(SID) end
---@param SID FString
function UCustomConsoleManagerAA:XPrintGlobalVariable(SID) end
---@param SpeakerUID int32
---@param DialogPrototypeSID FString
function UCustomConsoleManagerAA:XPlayDialogLine(SpeakerUID, DialogPrototypeSID) end
---@param DialogEventTypeName FString
---@param NPCUIDValue1 int32
---@param NPCUIDValue2 int32
function UCustomConsoleManagerAA:XPlayDialogFromPool(DialogEventTypeName, NPCUIDValue1, NPCUIDValue2) end
---@param DialogEventTypeName FString
---@param NPCUIDValue int32
function UCustomConsoleManagerAA:XPlayCommentFromPool(DialogEventTypeName, NPCUIDValue) end
---@param MarkerType FString
function UCustomConsoleManagerAA:XListMapMarkers(MarkerType) end
---@param Radius float
---@param MinimalReputationToKill int32
---@param MaxReputationToKill int32
function UCustomConsoleManagerAA:XKillNPCInRadius(Radius, MinimalReputationToKill, MaxReputationToKill) end
function UCustomConsoleManagerAA:XFindNonEndingDialogs() end
---@param SID FString
function UCustomConsoleManagerAA:XExcludeQuestNodeBySID(SID) end
---@param ID FString
function UCustomConsoleManagerAA:XExcludeQuestNode(ID) end
---@param SID FString
function UCustomConsoleManagerAA:XExcludeQuestBySID(SID) end
---@param ID FString
function UCustomConsoleManagerAA:XExcludeQuest(ID) end
---@param SID FString
function UCustomConsoleManagerAA:XEndQuestNodeBySID(SID) end
---@param ID FString
function UCustomConsoleManagerAA:XEndQuestNode(ID) end
---@param SID FString
function UCustomConsoleManagerAA:XEndQuestBySID(SID) end
---@param ID FString
function UCustomConsoleManagerAA:XEndQuest(ID) end
---@param MarkerSID FString
function UCustomConsoleManagerAA:XDiscoverMarker(MarkerSID) end
function UCustomConsoleManagerAA:XDiscoverAllMarkers() end
---@param Radius float
function UCustomConsoleManagerAA:XDespawnNPCsAtRadius(Radius) end
---@param Radius float
function UCustomConsoleManagerAA:XDespawnDeadNPCsAtRadius(Radius) end
---@param Radius float
function UCustomConsoleManagerAA:XDespawnAliveNPCsAtRadius(Radius) end
---@param TargetUID int32
---@param DialogsCount int32
function UCustomConsoleManagerAA:XDebugAddHelloDialogsToQueue(TargetUID, DialogsCount) end
function UCustomConsoleManagerAA:XClearDialogQueue() end
function UCustomConsoleManagerAA:XCheckGamedata() end
---@param Value int32
function UCustomConsoleManagerAA:XAddMoneyToPlayer(Value) end
function UCustomConsoleManagerAA:XAddAllNotes() end
function UCustomConsoleManagerAA:OnWaitForProfileSimulationFinished() end


---@class UCustomConsoleManagerAI2 : UBaseConsoleManager
local UCustomConsoleManagerAI2 = {}

---@param FirstUID int32
---@param SecondUID int32
---@param Relation int32
function UCustomConsoleManagerAI2:XSetRelation(FirstUID, SecondUID, Relation) end
---@param Need FString
---@param Value int32
---@param UID int32
function UCustomConsoleManagerAI2:XNeedsSetNeedsValue(Need, Value, UID) end
function UCustomConsoleManagerAI2:XNeedsDisableIncreasing() end
---@param UID int32
---@param bActivate boolean
function UCustomConsoleManagerAI2:XLairActivate(UID, bActivate) end
---@param UID int32
function UCustomConsoleManagerAI2:XDestroyModel(UID) end


---@class UCustomConsoleManagerAK : UBaseConsoleManager
local UCustomConsoleManagerAK = {}

function UCustomConsoleManagerAK:XToggleAutoSaveEachFrame() end
function UCustomConsoleManagerAK:XTestST162667() end
function UCustomConsoleManagerAK:XTestDangling() end
function UCustomConsoleManagerAK:XSuicide() end
function UCustomConsoleManagerAK:XSaveObjListToFile() end
function UCustomConsoleManagerAK:XPrintModelCapacity() end
---@param UnitUID int32
function UCustomConsoleManagerAK:XPrintInventory(UnitUID) end
function UCustomConsoleManagerAK:XKillThemAll() end


---@class UCustomConsoleManagerAM : UBaseConsoleManager
local UCustomConsoleManagerAM = {}

function UCustomConsoleManagerAM:XSnapPlayerPosition() end
---@param DebugUID int32
function UCustomConsoleManagerAM:XSetDebugUID(DebugUID) end
---@param UID int32
function UCustomConsoleManagerAM:XResetAI(UID) end
---@param Radius float
---@param CombatTactics ECombatTactics
function UCustomConsoleManagerAM:XOverrideCombatTacticsInRadius(Radius, CombatTactics) end
---@param NPC_UID int32
---@param Behaviour EMovementBehaviour
function UCustomConsoleManagerAM:XMoveToPlayer(NPC_UID, Behaviour) end
---@param bHasPathLimits boolean
---@param bDrawRestrictedArea boolean
function UCustomConsoleManagerAM:XGGSnapshotPath(bHasPathLimits, bDrawRestrictedArea) end
---@param Feature EAIFeature
function UCustomConsoleManagerAM:XDeactivateAIFeature(Feature) end
---@param Angular float
function UCustomConsoleManagerAM:XCallQuickSave(Angular) end
---@param Angular float
function UCustomConsoleManagerAM:XCallQuickLoad(Angular) end
---@param UID int32
function UCustomConsoleManagerAM:XAddMoveTo(UID) end
---@param Feature EAIFeature
function UCustomConsoleManagerAM:XActivateAIFeature(Feature) end
function UCustomConsoleManagerAM:StopFollowing() end
---@param TargetUID int32
---@param bLockOrientation boolean
---@param ZOffset double
function UCustomConsoleManagerAM:StartFollowing(TargetUID, bLockOrientation, ZOffset) end
---@param LHS int32
---@param RHS int32
function UCustomConsoleManagerAM:GetRelationBetween(LHS, RHS) end


---@class UCustomConsoleManagerAchievements : UBaseConsoleManager
local UCustomConsoleManagerAchievements = {}

---@param Value int32
function UCustomConsoleManagerAchievements:XAchievementsUpdateDebugAchievement(Value) end
function UCustomConsoleManagerAchievements:XAchievementsResetAll() end
function UCustomConsoleManagerAchievements:XAchievementsProcessFinishCampaign() end
---@param Name FString
---@param Value int32
function UCustomConsoleManagerAchievements:XAchievementsAddProgress(Name, Value) end


---@class UCustomConsoleManagerAnalytics : UBaseConsoleManager
local UCustomConsoleManagerAnalytics = {}

function UCustomConsoleManagerAnalytics:XAnalyticsPrintLocalTotals() end
function UCustomConsoleManagerAnalytics:XAnalyticsPrintLocalKills() end
function UCustomConsoleManagerAnalytics:XAnalyticsPrintGlobalTotals() end
function UCustomConsoleManagerAnalytics:XAnalyticsPrintGlobalKills() end
function UCustomConsoleManagerAnalytics:XAnalyticsPrintDeaths() end


---@class UCustomConsoleManagerBuild : UBaseConsoleManager
local UCustomConsoleManagerBuild = {}

---@param ItemPrototypeSID FString
function UCustomConsoleManagerBuild:XSpawnItemNearPlayerBySID(ItemPrototypeSID) end
---@param ItemPrototypeSID FString
---@param Px float
---@param Py float
---@param Pz float
function UCustomConsoleManagerBuild:XSpawnItemInCoordinatesBySID(ItemPrototypeSID, Px, Py, Pz) end
function UCustomConsoleManagerBuild:XShowPlayerCoordinates() end
---@param SpeedMultiplier float
function UCustomConsoleManagerBuild:XSetPlayerSpeedMultiplier(SpeedMultiplier) end
---@param bNoClipGSC boolean
---@param Speed float
function UCustomConsoleManagerBuild:XSetNoClipGSC(bNoClipGSC, Speed) end
---@param EntityUID int32
---@param bGodModeState boolean
function UCustomConsoleManagerBuild:XSetGodModeByUID(EntityUID, bGodModeState) end
---@param bGodModeState boolean
function UCustomConsoleManagerBuild:XSetGodModeAllFactions(bGodModeState) end
---@param SpeedMultiplier float
function UCustomConsoleManagerBuild:XSetFreeCameraSpeedMultiplier(SpeedMultiplier) end
---@param CurrentFactionSelector FString
---@param bGodModeState boolean
function UCustomConsoleManagerBuild:XSetFactionGodMode(CurrentFactionSelector, bGodModeState) end
---@param EntityUID int32
---@param bGodModeState boolean
function UCustomConsoleManagerBuild:XSetEntityUnkillableByUID(EntityUID, bGodModeState) end
function UCustomConsoleManagerBuild:XResetCurrentWeaponDurabilityToZero() end
function UCustomConsoleManagerBuild:XResetCurrentBodyArmorDurabilityToZero() end
function UCustomConsoleManagerBuild:XRepairCurrentWeapon() end
function UCustomConsoleManagerBuild:XReloadStyleTables() end
function UCustomConsoleManagerBuild:XDisplayFocusingPlayerEnemiesCount() end


---@class UCustomConsoleManagerCamera : UBaseConsoleManager
local UCustomConsoleManagerCamera = {}

---@param DepthScale float
function UCustomConsoleManagerCamera:ForegroundDepthScale(DepthScale) end


---@class UCustomConsoleManagerDC : UBaseConsoleManager
local UCustomConsoleManagerDC = {}

---@param Distance float
function UCustomConsoleManagerDC:XVideoTeleportPlayerWithFade(Distance) end
function UCustomConsoleManagerDC:XToggleDrawDebugDiamondAnomaly() end
function UCustomConsoleManagerDC:XToggleDebugPlayerArmorInfo() end
function UCustomConsoleManagerDC:XToggleDebugLightningBallNavigation() end
function UCustomConsoleManagerDC:XToggleDebugDrawOverlapWithAnomalyObjects() end
function UCustomConsoleManagerDC:XToggleDebugCodeLock() end
function UCustomConsoleManagerDC:XToggleDebugBulletDistanceScaling() end
---@param Distance float
function UCustomConsoleManagerDC:XTeleportPlayerWithFade(Distance) end
---@param Distance float
---@param Delay float
function UCustomConsoleManagerDC:XTeleportPlayerInForwardDirection(Distance, Delay) end
---@param AnomalySID FString
function UCustomConsoleManagerDC:XSpawnAnomalyAtPlayerLocation(AnomalySID) end
function UCustomConsoleManagerDC:XShowIntroductionLogo() end
---@param InStashIdentifier FString
function UCustomConsoleManagerDC:XShowDebugInfoForStash(InStashIdentifier) end
---@param WeatherTransitionTimeMultiplier float
function UCustomConsoleManagerDC:XSetWeatherTransitionTimeMultiplier(WeatherTransitionTimeMultiplier) end
---@param InCurrentCode FString
function UCustomConsoleManagerDC:XSetCurrentCode(InCurrentCode) end
function UCustomConsoleManagerDC:XRegenerateItemsInStashes() end
---@param NpcUID int32
---@param AbilityTag FString
function UCustomConsoleManagerDC:XNPCRemoveAbility(NpcUID, AbilityTag) end
---@param NpcUID int32
---@param AbilityTag FString
function UCustomConsoleManagerDC:XNPCAddAbility(NpcUID, AbilityTag) end
function UCustomConsoleManagerDC:XListPlayerCurrentEffects() end
---@param Radius float
function UCustomConsoleManagerDC:XListItemsEffectsInProximity(Radius) end
---@param NpcUID int32
function UCustomConsoleManagerDC:XKillNpcByUID(NpcUID) end
function UCustomConsoleManagerDC:XDespawnAllAnomalies() end
---@param bShouldDrop boolean
function UCustomConsoleManagerDC:XChangeDropBodyMethod(bShouldDrop) end


---@class UCustomConsoleManagerDK : UBaseConsoleManager
local UCustomConsoleManagerDK = {}

---@param InputDelay float
---@param InputThreshold float
---@param SelectionDelay float
function UCustomConsoleManagerDK:XSetInventoryGamepadNavigationParams(InputDelay, InputThreshold, SelectionDelay) end
---@param bAxes boolean
function UCustomConsoleManagerDK:XSetInventoryGamepadNavigationByAxises(bAxes) end
---@param InputThreshold float
function UCustomConsoleManagerDK:XSetInventoryGamepadInputThreshold(InputThreshold) end
---@param InputSelectionDelay float
function UCustomConsoleManagerDK:XSetInventoryGamepadInputSelectionDelay(InputSelectionDelay) end
---@param InputDelay float
function UCustomConsoleManagerDK:XSetInventoryGamepadInputDelay(InputDelay) end
---@param Speed float
function UCustomConsoleManagerDK:XSetGamepadNavigationBorderSpeed(Speed) end
---@param InVar int32
function UCustomConsoleManagerDK:XGridNavigationVar(InVar) end
---@param bDraw boolean
function UCustomConsoleManagerDK:XDrawDebugInventoryNavigation(bDraw) end
---@param QSID FString
function UCustomConsoleManagerDK:XDKStartTwoQuestStage(QSID) end
---@param QSID FString
---@param SSID FString
function UCustomConsoleManagerDK:XDKStartQuestStage(QSID, SSID) end
---@param SID FString
function UCustomConsoleManagerDK:XDKStartQuest(SID) end
---@param QSID FString
---@param SSID FString
---@param bWin boolean
function UCustomConsoleManagerDK:XDKFinishQuestStage(QSID, SSID, bWin) end
---@param SID FString
---@param bWin boolean
function UCustomConsoleManagerDK:XDKFinishQuest(SID, bWin) end
---@param bInUse boolean
function UCustomConsoleManagerDK:UseStackSplitContextual(bInUse) end
---@param bMoveTraderItems boolean
---@param bMoveOwnItems boolean
---@param bMoveBarterItems boolean
function UCustomConsoleManagerDK:MoveItemsInTrade(bMoveTraderItems, bMoveOwnItems, bMoveBarterItems) end
---@param bHide boolean
function UCustomConsoleManagerDK:HideCursorInMouseDrag(bHide) end
---@param bShow boolean
function UCustomConsoleManagerDK:AllwaysShowDropHere(bShow) end


---@class UCustomConsoleManagerDP : UBaseConsoleManager
local UCustomConsoleManagerDP = {}

---@param StringKey FString
function UCustomConsoleManagerDP:XPrintLocalizedTextByKey(StringKey) end
function UCustomConsoleManagerDP:XInitializeLocalizationManager() end


---@class UCustomConsoleManagerDR : UBaseConsoleManager
local UCustomConsoleManagerDR = {}

---@param WeatherType EWeather
function UCustomConsoleManagerDR:XSwitchToWeather(WeatherType) end
---@param AssetPath FString
---@param AssetName FString
function UCustomConsoleManagerDR:XInitializeBenchmarkSequence(AssetPath, AssetName) end
---@param WeatherType EWeather
function UCustomConsoleManagerDR:XForceWeather(WeatherType) end
function UCustomConsoleManagerDR:XEnableCinematicMode() end
function UCustomConsoleManagerDR:XDisableCinematicMode() end


---@class UCustomConsoleManagerEG : UBaseConsoleManager
local UCustomConsoleManagerEG = {}

function UCustomConsoleManagerEG:XGarbageCollector() end


---@class UCustomConsoleManagerGA : UBaseConsoleManager
local UCustomConsoleManagerGA = {}

---@param bTracking boolean
function UCustomConsoleManagerGA:XToggleAnalyticsTracking_Player(bTracking) end
function UCustomConsoleManagerGA:XShowAnalyticsUserId() end


---@class UCustomConsoleManagerIK : UBaseConsoleManager
local UCustomConsoleManagerIK = {}

---@param Rank ERank
function UCustomConsoleManagerIK:XSwitchPlayerRank(Rank) end
---@param Hours float
function UCustomConsoleManagerIK:XSkipTimeHours(Hours) end
function UCustomConsoleManagerIK:XSignalStrengthTest() end
---@param bSet boolean
function UCustomConsoleManagerIK:XSetTwelveHourTime(bSet) end
---@param IAName FString
---@param IMCName FString
function UCustomConsoleManagerIK:XInputActionUnlock(IAName, IMCName) end
---@param IAName FString
---@param IMCName FString
function UCustomConsoleManagerIK:XInputActionBlock(IAName, IMCName) end
function UCustomConsoleManagerIK:XBluePrintSearch() end


---@class UCustomConsoleManagerIM : UBaseConsoleManager
local UCustomConsoleManagerIM = {}

function UCustomConsoleManagerIM:XToggleStaticCovers() end
---@param NavMeshAgentName FString
function UCustomConsoleManagerIM:XHighlightDangerAreas(NavMeshAgentName) end
---@param NavMeshAgentName FString
function UCustomConsoleManagerIM:XHighlightCovers(NavMeshAgentName) end


---@class UCustomConsoleManagerMB : UBaseConsoleManager
local UCustomConsoleManagerMB = {}

function UCustomConsoleManagerMB:XToggleShowTriggerCapsuleView() end
function UCustomConsoleManagerMB:XToggleShowProtection() end
function UCustomConsoleManagerMB:XToggleShowPlayerRequestedMainHandWeaponType() end
function UCustomConsoleManagerMB:XToggleShowPlayerLocation() end
function UCustomConsoleManagerMB:XToggleShowPlayerLastHeldItem() end
function UCustomConsoleManagerMB:XToggleShowModels() end
function UCustomConsoleManagerMB:XToggleShowLightningBallAnomalyDebugInfo() end
function UCustomConsoleManagerMB:XToggleDebugExpulsionAnomaly() end
function UCustomConsoleManagerMB:XSwitchAnomalySpawnerPreset() end
---@param bDebug boolean
---@param DebugTime float
function UCustomConsoleManagerMB:XSetDrawDebugExplosion(bDebug, DebugTime) end


---@class UCustomConsoleManagerMH : UBaseConsoleManager
local UCustomConsoleManagerMH = {}

function UCustomConsoleManagerMH:XToggleSoapBubbleDebug() end
---@param bLocked boolean
---@param Radius float
function UCustomConsoleManagerMH:XToggleHubDoors(bLocked, Radius) end
function UCustomConsoleManagerMH:XToggleDrawPlayerShootingDebug() end
function UCustomConsoleManagerMH:XToggleDrawPlayerRecoilDebug() end
function UCustomConsoleManagerMH:XToggleDrawPlayerDispersionDebug() end
function UCustomConsoleManagerMH:XToggleDrawAIShootingDebug() end
---@param bEnable boolean
function UCustomConsoleManagerMH:XToggleCustomFov(bEnable) end
---@param FOV float
function UCustomConsoleManagerMH:XSetFov(FOV) end
---@param EffectPrototypeSID FString
function UCustomConsoleManagerMH:XRemoveEffectFromPlayer(EffectPrototypeSID) end
---@param UpgradePrototypeSID FString
function UCustomConsoleManagerMH:XApplyMainHandWeaponUpgradeBySID(UpgradePrototypeSID) end


---@class UCustomConsoleManagerMP : UBaseConsoleManager
local UCustomConsoleManagerMP = {}

---@param ModelUID int32
---@param Delay float
function UCustomConsoleManagerMP:XWeaponDrag(ModelUID, Delay) end
function UCustomConsoleManagerMP:XTriggerAutoSave() end
function UCustomConsoleManagerMP:XToggleShowDebugStealthKill() end
function UCustomConsoleManagerMP:XToggleLogLoadingProgress() end
function UCustomConsoleManagerMP:XToggleDebugAimAssist() end
function UCustomConsoleManagerMP:XStartSleep() end
---@param SearchRadius float
---@param SwitchValue float
function UCustomConsoleManagerMP:XSetClosestFaustCloneSwitchValue(SearchRadius, SwitchValue) end
---@param LuckValue float
function UCustomConsoleManagerMP:XSetArtifactSpawnLuck(LuckValue) end
---@param bEnabled boolean
function UCustomConsoleManagerMP:XSetAimAssistSnappingCameraRadiusToleranceEnabled(bEnabled) end
---@param bEnabled boolean
function UCustomConsoleManagerMP:XSetAimAssistSnappingCameraMovementToleranceEnabled(bEnabled) end
---@param bEnabled boolean
function UCustomConsoleManagerMP:XSetAimAssistSnappingAutomaticTargetChangeEnabled(bEnabled) end
---@param bEnabled boolean
function UCustomConsoleManagerMP:XSetAimAssistEnabled(bEnabled) end
function UCustomConsoleManagerMP:XLoadLastSave() end
function UCustomConsoleManagerMP:XEnableLegsIK() end
---@param ArtifactSpawnerSID FString
function UCustomConsoleManagerMP:XDisplayArtifactSpawnLuckStatus(ArtifactSpawnerSID) end
function UCustomConsoleManagerMP:XDisableLegsIK() end


---@class UCustomConsoleManagerMS : UBaseConsoleManager
local UCustomConsoleManagerMS = {}

---@param ObjUID int32
---@param MaterialID int32
---@param LODId int32
function UCustomConsoleManagerMS:XShowMaterial(ObjUID, MaterialID, LODId) end
---@param NewScale float
function UCustomConsoleManagerMS:XSetCameraShakeScale(NewScale) end
---@param ObjUID int32
---@param AnimPath FString
function UCustomConsoleManagerMS:XSetAIStayGoal(ObjUID, AnimPath) end
---@param ObjUID int32
---@param AnimPath FString
---@param AnimSlotName FString
function UCustomConsoleManagerMS:XLaunchCustomAnimation(ObjUID, AnimPath, AnimSlotName) end
---@param DamageType EDamageType
function UCustomConsoleManagerMS:XCommitSuicide(DamageType) end


---@class UCustomConsoleManagerMY : UBaseConsoleManager
local UCustomConsoleManagerMY = {}

---@param ObjUID int32
---@param BoneName FString
function UCustomConsoleManagerMY:XSimulatePhysicsOnBoneForObj(ObjUID, BoneName) end
---@param bEnabled boolean
function UCustomConsoleManagerMY:XSetXRayMode(bEnabled) end
function UCustomConsoleManagerMY:XSetDebugMode() end
---@param UID int32
function UCustomConsoleManagerMY:XPossessToCharacterByUID(UID) end
function UCustomConsoleManagerMY:XEnsureAllRelevantCollisionStreamed() end


---@class UCustomConsoleManagerMods : UBaseConsoleManager
local UCustomConsoleManagerMods = {}

function UCustomConsoleManagerMods:XReloadGameData() end
function UCustomConsoleManagerMods:XModSubsystemLogout() end
function UCustomConsoleManagerMods:XModioShowTermsOfUsePopup() end


---@class UCustomConsoleManagerOA : UBaseConsoleManager
local UCustomConsoleManagerOA = {}

---@param Path FString
function UCustomConsoleManagerOA:XPlayVideo(Path) end
function UCustomConsoleManagerOA:XNewDLCAvailable() end
function UCustomConsoleManagerOA:XIsHDREnabled() end
---@param DLCName FName
function UCustomConsoleManagerOA:XHasDLC(DLCName) end
function UCustomConsoleManagerOA:XGetActiveDLC() end
---@param bEnabled boolean
function UCustomConsoleManagerOA:XDebugAudioScattererMap(bEnabled) end
---@param bEnabled boolean
---@param DrawTime float
function UCustomConsoleManagerOA:XDebugAudioScattererEvents(bEnabled, DrawTime) end


---@class UCustomConsoleManagerOM : UBaseConsoleManager
local UCustomConsoleManagerOM = {}

---@param Time float
function UCustomConsoleManagerOM:XSetCarouselTimeToCenter(Time) end
---@param Rotation float
function UCustomConsoleManagerOM:XSetCarouselRotation(Rotation) end
---@param Time float
function UCustomConsoleManagerOM:XSetCarouselLiftUpTime(Time) end
---@param Force float
function UCustomConsoleManagerOM:XSetCarouselForce(Force) end
---@param Duration float
function UCustomConsoleManagerOM:XSetCarouselDuration(Duration) end
---@param bEnable boolean
function UCustomConsoleManagerOM:XSetCarouselDebugTrajectory(bEnable) end
---@param Angle float
function UCustomConsoleManagerOM:XSetCarouselAngle(Angle) end


---@class UCustomConsoleManagerOP : UBaseConsoleManager
local UCustomConsoleManagerOP = {}

---@param NpcUID int32
---@param StateTag EStateTag
---@param bEnabled boolean
function UCustomConsoleManagerOP:XNpcSetStateTag(NpcUID, StateTag, bEnabled) end
---@param NpcUID int32
---@param FaceBlockingMask EFaceBlockingBlendMasks
---@param BlockingWeight float
function UCustomConsoleManagerOP:XNpcSetFaceBlockingBlendMask(NpcUID, FaceBlockingMask, BlockingWeight) end
---@param NpcUID int32
---@param bEnabled boolean
function UCustomConsoleManagerOP:XNpcSetFaceBlendShapeState(NpcUID, bEnabled) end
---@param NpcUID int32
function UCustomConsoleManagerOP:XNpcFreezeRagdollPose(NpcUID) end
---@param StartNpcUID int32
---@param EndNpcUID int32
---@param bEnabled boolean
function UCustomConsoleManagerOP:XNpcArraySetFaceBlendShapeState(StartNpcUID, EndNpcUID, bEnabled) end


---@class UCustomConsoleManagerPA : UBaseConsoleManager
local UCustomConsoleManagerPA = {}

---@param Distance float
function UCustomConsoleManagerPA:XTogglePhysicalMaterialDebug(Distance) end
function UCustomConsoleManagerPA:XToggleHoldBreathDebug() end
---@param FlagValue EGrenadeDebugFlag
function UCustomConsoleManagerPA:XToggleGrenadeDebug(FlagValue) end
---@param PrototypeSID FString
function UCustomConsoleManagerPA:XChangePlayerMovementFXPrototype(PrototypeSID) end


---@class UCustomConsoleManagerPS : UBaseConsoleManager
local UCustomConsoleManagerPS = {}

---@param bShow boolean
function UCustomConsoleManagerPS:XShowInventoryDebugItmesStats(bShow) end
---@param Index int32
function UCustomConsoleManagerPS:XChangeInventoryScroll(Index) end
---@param Index int32
function UCustomConsoleManagerPS:XChangeCompasMarkers(Index) end


---@class UCustomConsoleManagerPU : UBaseConsoleManager
local UCustomConsoleManagerPU = {}

function UCustomConsoleManagerPU:XStopProcPopup() end
function UCustomConsoleManagerPU:XStartProcPopup() end
---@param ButtonsNum int32
function UCustomConsoleManagerPU:XShowPopup(ButtonsNum) end
function UCustomConsoleManagerPU:XShowDemoPopup() end


---@class UCustomConsoleManagerRK : UBaseConsoleManager
local UCustomConsoleManagerRK = {}

---@param DoorUID int32
function UCustomConsoleManagerRK:XUnlockDoor(DoorUID) end
---@param SaveType ESaveType
function UCustomConsoleManagerRK:XTriggerSave(SaveType) end
function UCustomConsoleManagerRK:XTriggerForcedAutoSave() end
function UCustomConsoleManagerRK:XTogglePsyPhantomDebugMode() end
function UCustomConsoleManagerRK:XTogglePlayerRadiationSphereVisibility() end
---@param UID int32
function UCustomConsoleManagerRK:XToggleNPCFlashlight(UID) end
---@param ElementsToHide EHUDElements
function UCustomConsoleManagerRK:XToggleHUDElements(ElementsToHide) end
function UCustomConsoleManagerRK:XToggleFreeCamera() end
---@param ValueFontXSizeCoef float
---@param ValueFontYSizeCoef float
function UCustomConsoleManagerRK:XToggleDrawPlayerStats(ValueFontXSizeCoef, ValueFontYSizeCoef) end
---@param ValueFontXSizeCoef float
---@param ValueFontYSizeCoef float
function UCustomConsoleManagerRK:XToggleDrawInteractNPCStats(ValueFontXSizeCoef, ValueFontYSizeCoef) end
---@param bShouldDraw boolean
function UCustomConsoleManagerRK:XToggleDrawDurabilityParams(bShouldDraw) end
function UCustomConsoleManagerRK:XToggleDrawCurrentDiscounts() end
---@param VitalType EVitalType
function UCustomConsoleManagerRK:XToggleDetailedVitalsStat(VitalType) end
function UCustomConsoleManagerRK:XToggleClickerJumpDebugMode() end
---@param ObjUID int32
function UCustomConsoleManagerRK:XTeleportToObjUID(ObjUID) end
---@param XCoord float
---@param YCoord float
---@param ZCoord float
function UCustomConsoleManagerRK:XTeleportTo(XCoord, YCoord, ZCoord) end
function UCustomConsoleManagerRK:XStopBenchmark() end
---@param MsecThreshold float
---@param RamMBThreshold float
---@param InFramesToCaptureOnSpike uint32
---@param InFrameCountToComputeAverage uint32
function UCustomConsoleManagerRK:XStartGSCBackgroundProfiler(MsecThreshold, RamMBThreshold, InFramesToCaptureOnSpike, InFrameCountToComputeAverage) end
---@param CameraHeight float
---@param CircleRadius float
---@param InitialPitch float
---@param InitialYaw float
---@param BenchRuns int32
---@param bProfileCsv boolean
function UCustomConsoleManagerRK:XStartBenchmark(CameraHeight, CircleRadius, InitialPitch, InitialYaw, BenchRuns, bProfileCsv) end
---@param bIsPsyPhantom boolean
---@param ObjPrototypeSID FString
---@param Rank ERank
---@param Count int32
function UCustomConsoleManagerRK:XSpawnPsyNPC(bIsPsyPhantom, ObjPrototypeSID, Rank, Count) end
---@param PrototypeSID FString
---@param Rank ERank
---@param bDestroyOnOffline boolean
---@param Px float
---@param Py float
---@param Pz float
---@param Pitch float
---@param Yaw float
---@param Roll float
function UCustomConsoleManagerRK:XSpawnObjBySID(PrototypeSID, Rank, bDestroyOnOffline, Px, Py, Pz, Pitch, Yaw, Roll) end
---@param PrototypeID FString
---@param Px float
---@param Py float
---@param Pz float
---@param Gold int32
---@param Pitch float
---@param Yaw float
---@param Roll float
---@return int32
function UCustomConsoleManagerRK:XSpawnItemContainer(PrototypeID, Px, Py, Pz, Gold, Pitch, Yaw, Roll) end
---@param bNowLocked boolean
function UCustomConsoleManagerRK:XSetWeatherLocked(bNowLocked) end
---@param bIsPsyPhantom boolean
---@param AgentType1 EAgentType
---@param AgentType2 EAgentType
---@param ObjPrototypeFilter1 FString
---@param ObjPrototypeFilter2 FString
---@param ObjPrototypeFilter3 FString
function UCustomConsoleManagerRK:XSetPsyNPCFilterParams(bIsPsyPhantom, AgentType1, AgentType2, ObjPrototypeFilter1, ObjPrototypeFilter2, ObjPrototypeFilter3) end
---@param bGodMode boolean
function UCustomConsoleManagerRK:XSetGodModeForInteractObj(bGodMode) end
---@param bGodMode boolean
function UCustomConsoleManagerRK:XSetGodMode(bGodMode) end
---@param SID FString
---@param InValue FString
function UCustomConsoleManagerRK:XSetGlobalObjectPath(SID, InValue) end
---@param SID FString
---@param InValue boolean
function UCustomConsoleManagerRK:XSetGlobalBool(SID, InValue) end
---@param bGodMode boolean
function UCustomConsoleManagerRK:XSetFullGodMode(bGodMode) end
---@param ItemPrototypeSID FString
---@param UpgradePrototypeSID FString
function UCustomConsoleManagerRK:XRevertUpgradeBySID(ItemPrototypeSID, UpgradePrototypeSID) end
---@param DoorUID int32
function UCustomConsoleManagerRK:XOpenDoor(DoorUID) end
---@param ObjUID int32
function UCustomConsoleManagerRK:XObjRecalcAllEquipment(ObjUID) end
---@param ObjUID int32
function UCustomConsoleManagerRK:XObjRecalcAllCachedStats(ObjUID) end
---@param TargetUID int32
---@param FPSpent float
function UCustomConsoleManagerRK:XModifyStamina(TargetUID, FPSpent) end
---@param TargetUID int32
---@param AddBleeding int32
function UCustomConsoleManagerRK:XModifyBleeding(TargetUID, AddBleeding) end
---@param IncreaseLimit int32
function UCustomConsoleManagerRK:XIncreaseEnsuresLimit(IncreaseLimit) end
---@param ActorUID int32
---@param InteractableUID int32
function UCustomConsoleManagerRK:XForceActorInteract(ActorUID, InteractableUID) end
---@param FilePath FString
function UCustomConsoleManagerRK:XFileExists(FilePath) end
---@param bInDrawPsyField boolean
function UCustomConsoleManagerRK:XDrawPsyFieldVolumes(bInDrawPsyField) end
function UCustomConsoleManagerRK:XDisassemblyCurrentWeapon() end
---@param bInDrawBulbDebug boolean
function UCustomConsoleManagerRK:XDisableFrictionForPlayerInBulb(bInDrawBulbDebug) end
---@param ItemUID int32
---@param DurabilityDamage float
function UCustomConsoleManagerRK:XDealDurabilityDamage(ItemUID, DurabilityDamage) end
---@param TargetUID int32
---@param Damage float
---@param ArmorDamage float
---@param ArmorPiercing float
---@param Bleeding float
---@param BleedingChanceIncrement float
---@param Type EDamageType
---@param BoneHit FString
function UCustomConsoleManagerRK:XDealDamage(TargetUID, Damage, ArmorDamage, ArmorPiercing, Bleeding, BleedingChanceIncrement, Type, BoneHit) end
---@param PrototypeID FString
---@param ObjUID int32
---@param Count int32
---@param Durability float
function UCustomConsoleManagerRK:XCreateItemInInventoryByID(PrototypeID, ObjUID, Count, Durability) end
---@param ItemPrototypeSID FString
---@param UpgradePrototypeSID FString
function UCustomConsoleManagerRK:XApplyUpgradeBySID(ItemPrototypeSID, UpgradePrototypeSID) end
---@param EffectPrototypeSID FString
function UCustomConsoleManagerRK:XApplyEffectOnPlayer(EffectPrototypeSID) end
---@param EffectPrototypeSID FString
---@param UID int32
function UCustomConsoleManagerRK:XApplyEffectOnNPCByUID(EffectPrototypeSID, UID) end
---@param EffectPrototypeSID FString
function UCustomConsoleManagerRK:XApplyEffectOnInteractNPC(EffectPrototypeSID) end
---@param UID int32
function UCustomConsoleManagerRK:TransformUID(UID) end


---@class UCustomConsoleManagerSD : UBaseConsoleManager
local UCustomConsoleManagerSD = {}

---@param SID FString
function UCustomConsoleManagerSD:XTeleportToPlacesOfInterest(SID) end
function UCustomConsoleManagerSD:XShowCompass() end
function UCustomConsoleManagerSD:XShowAllWidget() end
function UCustomConsoleManagerSD:XHideCompass() end
function UCustomConsoleManagerSD:XHideAllWidget() end
---@param UID int32
function UCustomConsoleManagerSD:XGetActorNameByUID(UID) end
function UCustomConsoleManagerSD:XBeginPlay() end


---@class UCustomConsoleManagerSM : UBaseConsoleManager
local UCustomConsoleManagerSM = {}

---@param bEnabled boolean
function UCustomConsoleManagerSM:XSVFriendlyFire(bEnabled) end
function UCustomConsoleManagerSM:XStopEmission() end
---@param PrototypeSID FString
function UCustomConsoleManagerSM:XStartEmissionBySID(PrototypeSID) end
function UCustomConsoleManagerSM:XStartEmission() end
function UCustomConsoleManagerSM:XResumeScheduledEmission() end
function UCustomConsoleManagerSM:XPauseScheduledEmission() end
function UCustomConsoleManagerSM:XGetEmissionState() end


---@class UCustomConsoleManagerSS : UBaseConsoleManager
local UCustomConsoleManagerSS = {}

function UCustomConsoleManagerSS:XALifeKillAll() end
function UCustomConsoleManagerSS:XALifeEnable() end
function UCustomConsoleManagerSS:XALifeDisable() end


---@class UCustomConsoleManagerVC : UBaseConsoleManager
local UCustomConsoleManagerVC = {}

function UCustomConsoleManagerVC:XTestSysNotificationRemoveMoney() end
function UCustomConsoleManagerVC:XTestSysNotificationRemoveItem() end
function UCustomConsoleManagerVC:XTestSysNotificationInspectArtifact() end
function UCustomConsoleManagerVC:XTestSysNotificationDiscoverRegion() end
function UCustomConsoleManagerVC:XTestSysNotificationAddStash() end
function UCustomConsoleManagerVC:XTestSysNotificationAddMoney() end
function UCustomConsoleManagerVC:XTestSysNotificationAddItem() end
function UCustomConsoleManagerVC:XTestSysNotificationAddAudilog() end
function UCustomConsoleManagerVC:XTestSysNotification() end
function UCustomConsoleManagerVC:XTestPDA() end
function UCustomConsoleManagerVC:XTestJournalFinishQuest() end
function UCustomConsoleManagerVC:XTestJournal() end
---@param bEnabled boolean
function UCustomConsoleManagerVC:XShowUIDebugInput(bEnabled) end
---@param bEnabled boolean
function UCustomConsoleManagerVC:XShowStatProgres(bEnabled) end
function UCustomConsoleManagerVC:XShowPopupSaveSettinsRestart() end
function UCustomConsoleManagerVC:XShowPopupSaveSettings() end
function UCustomConsoleManagerVC:XShowPopupSaveIcon() end
function UCustomConsoleManagerVC:XShowPopupOverwriteSavedGame() end
function UCustomConsoleManagerVC:XShowPopupOverwriteCampaignSlot() end
function UCustomConsoleManagerVC:XShowPopupNotEnoughSpace() end
function UCustomConsoleManagerVC:XShowPopupNoIcon() end
function UCustomConsoleManagerVC:XShowPopupGameCannotBeSaveNow() end
function UCustomConsoleManagerVC:XShowPopupExitGame() end
function UCustomConsoleManagerVC:XShowPopupDiscardChanges() end
function UCustomConsoleManagerVC:XShowPopupDeleteSave() end
function UCustomConsoleManagerVC:XShowPopupCurruptedSaveData() end
function UCustomConsoleManagerVC:XShowPopupBrokenIcon() end
function UCustomConsoleManagerVC:XShowPopupAttentionIcon() end
---@param bIsShow boolean
function UCustomConsoleManagerVC:XShowHUD(bIsShow) end
function UCustomConsoleManagerVC:XShowGameDataAndTime() end
---@param bEnabled boolean
function UCustomConsoleManagerVC:XShowCompassAngle(bEnabled) end
function UCustomConsoleManagerVC:XHideGameDataAndTime() end
---@param RegionSID FString
function UCustomConsoleManagerVC:XEnterRegion(RegionSID) end
---@param InTextSize int32
function UCustomConsoleManagerVC:XDialogFontSizeSubtitle(InTextSize) end
---@param InTextSize int32
function UCustomConsoleManagerVC:XDialogFontSizeAnswer(InTextSize) end
function UCustomConsoleManagerVC:XChangeLanguageRU() end
function UCustomConsoleManagerVC:XChangeLanguageEN() end
---@param LanguageIndex int32
function UCustomConsoleManagerVC:XChangeLanguage(LanguageIndex) end
---@param InPDATutorialPrototypeSID FString
function UCustomConsoleManagerVC:XAddPDATutorialsBySID(InPDATutorialPrototypeSID) end
---@param InNotePrototypeID FString
function UCustomConsoleManagerVC:XAddNotesById(InNotePrototypeID) end
---@param IndexSlot int32
function UCustomConsoleManagerVC:XAddItemDragToQuickSlot(IndexSlot) end
---@param bEnabled boolean
function UCustomConsoleManagerVC:DebugUIShowTextSize(bEnabled) end


---@class UCustomConsoleManagerVD : UBaseConsoleManager
local UCustomConsoleManagerVD = {}

function UCustomConsoleManagerVD:XSpawnDeadNpc() end
---@param Radius float
function UCustomConsoleManagerVD:XShowUnitAndSquadUIDs(Radius) end
---@param SquadUID FString
---@param bProtect boolean
function UCustomConsoleManagerVD:XProtectSquad(SquadUID, bProtect) end
---@param ContainerUID FString
---@param bProtect boolean
function UCustomConsoleManagerVD:XProtectItemContainer(ContainerUID, bProtect) end


---@class UCustomConsoleManagerVN : UBaseConsoleManager
local UCustomConsoleManagerVN = {}

---@param bEnabled boolean
function UCustomConsoleManagerVN:XToggleDebugPlayerWeapon(bEnabled) end


---@class UCustomConsoleManagerVP : UBaseConsoleManager
local UCustomConsoleManagerVP = {}

---@param NpcUID int32
function UCustomConsoleManagerVP:XWoundNpcByUID(NpcUID) end
function UCustomConsoleManagerVP:XShootAttach() end
---@param NpcUID int32
function UCustomConsoleManagerVP:XResurrectNPCAsZombie(NpcUID) end
function UCustomConsoleManagerVP:XReloadAttachTactical() end
function UCustomConsoleManagerVP:XReloadAttach() end
---@param NpcUID int32
---@param LookAtOwnerState ELookAtOwnerState
function UCustomConsoleManagerVP:XNpcSetLookAtOwnerState(NpcUID, LookAtOwnerState) end
---@param NpcUID int32
---@param TargetNpcUID int32
function UCustomConsoleManagerVP:XNpcLookAtNPC(NpcUID, TargetNpcUID) end
---@param NpcUID int32
---@param X float
---@param Y float
---@param Z float
function UCustomConsoleManagerVP:XNpcLookAt(NpcUID, X, Y, Z) end
---@param NpcUID int32
---@param LimitAngle float
---@param RotationPartType ERotationPartType
function UCustomConsoleManagerVP:XLimitNpcBodyPartRotation(NpcUID, LimitAngle, RotationPartType) end
---@param ObjUID int32
---@param AnimPath FString
function UCustomConsoleManagerVP:XLaunchFacialAnimation(ObjUID, AnimPath) end
---@param NpcUID int32
---@param AttackerNpcUID int32
function UCustomConsoleManagerVP:XKnockDownNpcByAnotherNpc(NpcUID, AttackerNpcUID) end
---@param NpcUID int32
function UCustomConsoleManagerVP:XKnockDownNpc(NpcUID) end


---@class UCustomConsoleManagerVV : UBaseConsoleManager
local UCustomConsoleManagerVV = {}

function UCustomConsoleManagerVV:XGiveWeaponWithAttaches() end
function UCustomConsoleManagerVV:XCheckAllJournalQuestPrototypes() end


---@class UCustomConsoleManagerWP : UBaseConsoleManager
local UCustomConsoleManagerWP = {}


---@class UCustomConsoleManagerYK : UBaseConsoleManager
local UCustomConsoleManagerYK = {}

---@param InbDiscount boolean
function UCustomConsoleManagerYK:XTestSetDiscount(InbDiscount) end
---@param InBlock boolean
function UCustomConsoleManagerYK:XBlockItemSelectorSlots(InBlock) end
---@param InBlock boolean
---@param InSlotNum int32
function UCustomConsoleManagerYK:XBlockItemSelectorSlot(InBlock, InSlotNum) end


---@class UCustomConsoleManagerYS : UBaseConsoleManager
local UCustomConsoleManagerYS = {}

---@param ScenarioSID FString
function UCustomConsoleManagerYS:XSpawnALifeDirectorScenario(ScenarioSID) end


---@class UCustomDataEditor : UObject
---@field ParameterValue float
---@field Weight float
---@field VariationIndex int32
---@field bBlockedInVisualizer boolean
---@field MaterialParameterConfigs TArray<UEditorMaterialParameterConfig>
local UCustomDataEditor = {}



---@class UCustomDataVariationsEditor : UObject
---@field ParameterID int32
---@field ParameterName FName
---@field MaterialGroup FName
---@field VariationStartingIndex int32
---@field VariationCount int32
---@field bShouldBeAppliedOnMesh boolean
---@field Distribution ECustomDataDistribution
---@field Variations TArray<UCustomDataEditor>
local UCustomDataVariationsEditor = {}



---@class UCustomGrid : UUserWidget
---@field CanvasPanel UCanvasPanel
---@field TilingBack UTilingGridBack
---@field SizeY int32
---@field SizeX int32
---@field Widgets TMap<int32, UCustomGridSlot>
---@field CachedWidgets TArray<UCustomGridSlot>
---@field GamepadCurrPosX int32
---@field GamepadCurrPosY int32
---@field ItemPlacementPanel UCanvasPanel
---@field OwnerMoney UTextWidget
---@field GridScrollBox UScrollBox
---@field HeaderText UTextWidget
---@field GridSizeBox USizeBox
---@field ItemPlaceBorder UBorder
---@field ScrollCanvasPanel UCanvasPanel
---@field NavBorder UBorder
---@field VerticalBoxScroll UVerticalBox
---@field MoneyBox UHorizontalBox
---@field InfinityMoneyIcon UImage
---@field bDefaultScrollEnd boolean
---@field bShowHeader boolean
---@field HeaderLocSID FString
---@field CurrPickedWidget UCustomGridSlot
---@field InventoryNew UInventoryNew
---@field WeightBar UWeightBar
---@field WeightBarOverlay UOverlay
---@field WeightText UTextWidget
---@field MaxWeightText UTextWidget
---@field WeightUnits UTextWidget
---@field LootSeparator UTextWidget
---@field WeightIcon UImage
---@field PositiveHighlight UImage
---@field NegativeHighlight UImage
---@field BeforeGamepadNavigationDelay float
---@field GamepadNavigationThreshold float
---@field GamepadNavigationDelay float
---@field bDrawDebugNavigationLines boolean
---@field NavCurve UCurveFloat
---@field VisibleCells FVector2D
---@field PositiveHighlightTexture TSoftObjectPtr<UTexture2D>
---@field NegativeHighlightTexture TSoftObjectPtr<UTexture2D>
---@field ScrollMovementSpeed float
---@field ItemSlotWidgetClass TSubclassOf<UUserWidget>
---@field InventoryScrollChangeConsole int32
---@field CellSize float
---@field CurrMovingWidget UItemDragWidget
---@field MousePosTargetWidget UUserWidget
---@field NavPosChangeAnimSpeed float
local UCustomGrid = {}

function UCustomGrid:SetTargetCellDelayed() end
function UCustomGrid:SetCurrentCellDelayed() end
---@param Offset float
function UCustomGrid:OnScrollBarScrolled(Offset) end


---@class UCustomGridSlot : UInteractableItemSlotBaseWidget
---@field ItemImageSizeBox USizeBox
---@field Background UImage
---@field StackAmount UTextWidget
---@field Broken UImage
---@field Attach UImage
---@field MinSlotSize int32
local UCustomGridSlot = {}



---@class UCustomSimplifiedGrid : UUserWidget
---@field CanvasPanel UCanvasPanel
---@field TilingBack UTilingGridBack
---@field SizeY int32
---@field SizeX int32
---@field Widgets TMap<int32, UCustomSimplifiedGridSlot>
---@field CachedWidgets TArray<UCustomSimplifiedGridSlot>
---@field GamepadCurrPosX int32
---@field GamepadCurrPosY int32
---@field ItemPlacementPanel UCanvasPanel
---@field OwnerMoney UTextWidget
---@field GridScrollBox UScrollBox
---@field HeaderText UTextWidget
---@field GridSizeBox USizeBox
---@field ItemPlaceBorder UBorder
---@field ScrollCanvasPanel UCanvasPanel
---@field NavBorder UBorder
---@field VerticalBoxScroll UVerticalBox
---@field bDefaultScrollEnd boolean
---@field bShowHeader boolean
---@field HeaderLocSID FString
---@field WeightText UTextWidget
---@field MaxWeightText UTextWidget
---@field WeightUnits UTextWidget
---@field LootSeparator UTextWidget
---@field WeightIcon UImage
---@field BeforeGamepadNavigationDelay float
---@field GamepadNavigationThreshold float
---@field GamepadNavigationDelay float
---@field bDrawDebugNavigationLines boolean
---@field NavCurve UCurveFloat
---@field VisibleCells FVector2D
---@field ItemSlotWidgetClass TSubclassOf<UUserWidget>
---@field CellSize float
---@field CurrMovingWidget UItemDragWidget
---@field MousePosTargetWidget UUserWidget
---@field NavPosChangeAnimSpeed float
local UCustomSimplifiedGrid = {}

---@param Offset float
function UCustomSimplifiedGrid:OnScrollBarScrolled(Offset) end


---@class UCustomSimplifiedGridSlot : UItemSlotBaseWidget
---@field ItemImageSizeBox USizeBox
---@field Background UImage
---@field StackAmount UTextWidget
---@field Broken UImage
---@field Attach UImage
---@field Quest UImage
---@field MinSlotSize int32
local UCustomSimplifiedGridSlot = {}



---@class UCutscenesLocalizationConfig : UDeveloperSettings
---@field VoiceoverLanguageToTrackIndexMap TMap<ELocalizationLanguage, uint32>
---@field LocalizedBinkPostfix FString
local UCutscenesLocalizationConfig = {}



---@class UDLCPopup : UViewBase
local UDLCPopup = {}


---@class UDPADSelection : UWidgetBase
---@field SizeContainer USizeBox
---@field DpadNavigation EDpadNavigation
---@field DPadStyleId FName
---@field bShouldLoadWidgetSize boolean
---@field WidgetSize float
---@field Dpad_Active UImageWidget
local UDPADSelection = {}



---@class UDPadLeftIPU : UInputProcessingUnit
local UDPadLeftIPU = {}


---@class UDPadOpenDownIPU : UInputProcessingUnit
local UDPadOpenDownIPU = {}


---@class UDPadOpenUpIPU : UInputProcessingUnit
local UDPadOpenUpIPU = {}


---@class UDPadRightIPU : UInputProcessingUnit
local UDPadRightIPU = {}


---@class UDamageInteractableComponent : UUIDActorComponent
---@field OnDamageAccumulated FDamageInteractableComponentOnDamageAccumulated
---@field OnDamageDealt FDamageInteractableComponentOnDamageDealt
---@field DamageSources TSet<EDamageSource>
---@field InteractionDamageThreshold float
---@field bCalculateDamageWithArmor boolean
---@field ArmorData FObjectArmorData
---@field bOnlyPlayerDamage boolean
---@field DamageAccumulator float
local UDamageInteractableComponent = {}



---@class UDamageVoiceoverComponent : UActorComponent
---@field Owner APC
local UDamageVoiceoverComponent = {}



---@class UDataLayerPhysicsComponent : UActorComponent
local UDataLayerPhysicsComponent = {}

---@param DataLayer UDataLayerInstance
---@param State EDataLayerRuntimeState
function UDataLayerPhysicsComponent:OnDataLayersUpdated(DataLayer, State) end


---@class UDeadBody : USingleClickComponent
local UDeadBody = {}

---@return AObj
function UDeadBody:GetInteractedActor() end


---@class UDeadBodyHoldComponent : UHoldComponent
local UDeadBodyHoldComponent = {}


---@class UDealDamageComponent : UActorComponent
---@field Damage float
---@field ArmorDamage float
---@field ArmorPiercing float
---@field DamageType EDamageType
---@field DamageSource EDamageSource
local UDealDamageComponent = {}

---@param InTargetActor AActor
function UDealDamageComponent:DealDamage(InTargetActor) end


---@class UDeathCounter : UWidgetBase
---@field DeathCounterText UTextWidget
local UDeathCounter = {}



---@class UDeathEventData : UGSCGameplayEventData
---@field DamageType EDamageType
---@field DamageSource EDamageSource
---@field CauseOfDeath ECauseOfDeath
local UDeathEventData = {}



---@class UDeathScreen : UMenuMainViewBase
---@field BlackBackground UImage
---@field DeathScreenOverlay UOverlay
---@field Background UImage
---@field DeadByText UTextWidget
---@field DeathCounterWidget UDeathCounter
---@field DefaultDeathScreenSID FName
---@field DefaultDeathScreenImage TSoftObjectPtr<UTexture2D>
---@field DeathScreenSIDSettings TArray<FDeathScreenSIDData>
---@field DeathScreenImageSettings TArray<FDeathScreenImageData>
local UDeathScreen = {}



---@class UDeathsAnimCollection : UDataAsset
---@field PossibleAnimationsForDeathType TMap<EDeathAnimationType, FDeathAnimationPerSource>
---@field SprintDeathAnimation UAnimSequenceBase
---@field Default UAnimSequenceBase
local UDeathsAnimCollection = {}



---@class UDebugHUDView : UViewBase
---@field HourText UTextBlock
---@field MinutesText UTextBlock
---@field DataText UTextBlock
---@field MiniMapPanel UHorizontalBox
---@field DataTimePanel UHorizontalBox
---@field StatPanelDebug UStatPanelDebug
local UDebugHUDView = {}



---@class UDebugTextLenWidget : UDebugTextWidgetBase
local UDebugTextLenWidget = {}

---@param Text FString
---@param TextLen int32
---@return int32
function UDebugTextLenWidget:GetWarningIndex(Text, TextLen) end


---@class UDebugTextLineWidget : UDebugTextWidgetBase
local UDebugTextLineWidget = {}

---@param CurrentRow int32
---@param RowSettings TArray<FRengeSettings>
---@return int32
function UDebugTextLineWidget:GetIndecRowSettings(CurrentRow, RowSettings) end


---@class UDebugTextWidgetBase : UDebugWidgetBase
---@field WidgetWarningId FName
---@field TextWarningDT UDataTable
---@field IsShouldEnableInWidget boolean
---@field DebugImage UImage
---@field DebugText UGSCTextBlock
local UDebugTextWidgetBase = {}

---@return FUIWarningSettings
function UDebugTextWidgetBase:FindRengeSettings() end
---@param Text FText
---@param InOwnerWidget UUserWidget
function UDebugTextWidgetBase:CheckDebugTextBluprint(Text, InOwnerWidget) end


---@class UDebugWidgetBase : UWidgetBase
---@field bShouldDisabledOnStart boolean
local UDebugWidgetBase = {}



---@class UDebugWorldSubsystem : UWorldSubsystem
---@field Drawer AGSCDebugDrawer
local UDebugWorldSubsystem = {}



---@class UDeleteCampaign : UMenuButtonActionBase
local UDeleteCampaign = {}


---@class UDeleteSaveAction : USaveLoadActionBase
local UDeleteSaveAction = {}


---@class UDestructabilityMetaInfoComponent : UActorComponent
---@field bAllowConvertionToDestructibleObject boolean
local UDestructabilityMetaInfoComponent = {}



---@class UDialogActionWidget : UWidgetBase
---@field Icon UImageWidget
local UDialogActionWidget = {}



---@class UDialogDoFComponent : UObject
---@field WeatherController TWeakObjectPtr<AWeatherController>
---@field CachedWorld TWeakObjectPtr<UWorld>
local UDialogDoFComponent = {}



---@class UDialogFolder : UWidgetBase
---@field AnswerSlotClass TSubclassOf<UDialogueAnswer>
---@field HoverFolderStyleId FName
---@field UnhoverFolderStyleId FName
---@field NameText UTextWidget
---@field AnswerContainer UVerticalBox
---@field WFRTimer UProgressBarWidget
---@field WFRSlider USlider
local UDialogFolder = {}



---@class UDialogLightSubsystem : UGameInstanceSubsystem
local UDialogLightSubsystem = {}


---@class UDialogManager : UBaseTickableManager
local UDialogManager = {}

---@param bPlayAudiolog boolean
function UDialogManager:OnToggleAudiolog(bPlayAudiolog) end


---@class UDialogPointLightComponent : UPointLightComponent
local UDialogPointLightComponent = {}


---@class UDialogProtectionManager : UBaseManager
---@field DialogProtector ADialogProtector
local UDialogProtectionManager = {}



---@class UDialogSelectAnswerIPU : UInputProcessingUnit
local UDialogSelectAnswerIPU = {}


---@class UDialogSoundWaveData : UDataAsset
---@field PhrasesSounds TMap<FName, FSoftObjectPath>
local UDialogSoundWaveData = {}



---@class UDialogSoundWavePrimaryAssetLabel : UPrimaryAssetLabel
local UDialogSoundWavePrimaryAssetLabel = {}


---@class UDialogSoundWaveSubsystem : UEngineSubsystem
local UDialogSoundWaveSubsystem = {}


---@class UDialogSpotLightComponent : USpotLightComponent
local UDialogSpotLightComponent = {}


---@class UDialogueAnswer : UDialogueSpeaker
---@field Button UButton
---@field Action UDialogActionWidget
---@field Back UImage
---@field Line UImage
---@field HoverAnimation UWidgetAnimation
---@field ColorStyle UDataTable
---@field bIsEnabledHoverEvents boolean
---@field BorderPadding float
---@field DebugTextLen UDebugTextWidgetBase
---@field DebugTextRow UDebugTextWidgetBase
---@field HoverStyleId FName
---@field NormalStyleId FName
local UDialogueAnswer = {}

function UDialogueAnswer:AnswerWidgetClick() end


---@class UDialogueButton : UButtonBase
---@field Text UTextWidget
---@field RichTextWidget URichTextWidget
---@field bEnableStyleManager boolean
---@field StylePrefix FString
---@field HoverStyleId FName
---@field NormalStyleId FName
---@field ActionId FName
---@field ButtonText FText
local UDialogueButton = {}



---@class UDialogueFastAnswer : UDialogueAnswer
---@field HintSwitcher UHintInputController
---@field bShouldMoveOnRight boolean
---@field ActionName FString
---@field StylePrefix FString
---@field OnClickFastAnswer FDialogueFastAnswerOnClickFastAnswer
---@field SkifChoiceIcon UTexture2D
---@field SparkChoiceIcon UTexture2D
---@field VartaChoiceIcon UTexture2D
---@field StrelokChoiceIcon UTexture2D
---@field StalkerChoiceIcon UTexture2D
---@field NoonChoiceIcon UTexture2D
local UDialogueFastAnswer = {}

function UDialogueFastAnswer:SelectAnswer() end
function UDialogueFastAnswer:PostSelectAnswer() end
function UDialogueFastAnswer:EndSelectAnswer() end


---@class UDialogueSpeaker : UWidgetBase
---@field SpeakerText URichTextWidget
---@field Background UImage
---@field bShouldResetTexture boolean
---@field BackgrounTexture UTexture2D
---@field MoveWidgetOffset FVector2D
local UDialogueSpeaker = {}



---@class UDialogueView : UViewBaseExtended
---@field AswersStyles FDialogAnswersStyles
---@field bShouldShowAnimation boolean
---@field ShowAnimation UWidgetAnimation
---@field DialogTimeDelay float
local UDialogueView = {}



---@class UDialogueViewFolder : UDialogueView
---@field InputDelayTime float
---@field DefaultFolderIndex int32
---@field DefaultSelectFolderSlot StartSelectFolderType
---@field SelectedAnswerMark USelectedAnswerMark
---@field FolderSlot1 UDialogFolder
---@field FolderSlot2 UDialogFolder
---@field FolderSlot3 UDialogFolder
---@field FolderSlot4 UDialogFolder
---@field FolderSlot5 UDialogFolder
---@field FolderSlot6 UDialogFolder
---@field AnswerContainer UScrollBox
---@field ReplicOverlay UOverlay
---@field LeftButtonsContainer UVerticalBox
---@field RightButtonsContainer UVerticalBox
---@field ButtonHintExit UUserWidget
---@field ButtonHintUpgrade UUserWidget
---@field ButtonHintTrade UUserWidget
---@field TimerProgressImage UImage
---@field FolderWidgets TArray<UDialogFolder>
---@field FolderWidgetsPool TArray<UDialogFolder>
local UDialogueViewFolder = {}

function UDialogueViewFolder:UIDialogOpenUpgrade() end
function UDialogueViewFolder:UIDialogOpenTrade() end
function UDialogueViewFolder:UIDialogClose() end
function UDialogueViewFolder:UIDialogAnswerUp() end
function UDialogueViewFolder:UIDialogAnswerDown() end
function UDialogueViewFolder:UIDialogAnswerConfirm() end
---@param IndexOldFolder int32
---@param AxisMove int32
---@return UDialogueAnswer
function UDialogueViewFolder:ChangeSelectFolder(IndexOldFolder, AxisMove) end


---@class UDiamondAnomalyAffectedItemComponent : USceneComponent
---@field DiamondParticle UNiagaraSystem
---@field OverridePhysicalMaterial UPhysicalMaterial
---@field DiamondParticles TArray<UNiagaraComponent>
---@field DiamondAuxFilter UAkAuxBus
---@field DiamondAuxComponent UAkLateReverbComponent
---@field DiamondFilterBounds UBoxComponent
local UDiamondAnomalyAffectedItemComponent = {}



---@class UDifficultyButton : UMenuButtonBase
---@field DifficultyImage UImage
---@field DifficultyName UTextWidget
---@field DifficultyDescription UTextWidget
local UDifficultyButton = {}



---@class UDifficultySettingLeftAction : UMenuButtonActionBase
local UDifficultySettingLeftAction = {}


---@class UDifficultySettingRightAction : UMenuButtonActionBase
local UDifficultySettingRightAction = {}


---@class UDifficultySubView : UMenuSubViewBase
---@field SettingsDescriptionBox UVerticalBox
---@field ExpeditionMode USettingElementOnOff
---@field SettingTitle UTextWidget
---@field SettingDescription UTextWidget
---@field ExpeditionModeHoveredButtonModel UMenuButtonModel
---@field DifficultyButtonStyleClass TSubclassOf<UMenuButtonBase>
---@field DifficultyButtonShortcuts TArray<FShortcutData>
---@field DifficultyDataSet TMap<int32, FDifficultyData>
local UDifficultySubView = {}



---@class UDisplaySettingsWidget : USettingsPage
---@field OnDisplayGammaSelected FDisplaySettingsWidgetOnDisplayGammaSelected
---@field GPUAdapter USettingElementSwitcher
---@field Monitor USettingElementSwitcher
---@field AspectRatio USettingElementSwitcher
---@field WidescreenLetterbox USettingElementOnOff
---@field ScreenResolution USettingsElementResolutionSwitcher
---@field WindowMode USettingElementSwitcher
---@field FrameRate USettingElementValueLocSwitcher
---@field Vsync USettingElementOnOff
---@field FOV USettingsElementPercent
---@field ScreenshotFOV USettingsElementPercent
---@field hdr USettingElementOnOff
---@field HDRCategory UTextWidget
---@field Gamma USettingsElementPercent
---@field Brightness USettingsElementPercent
---@field Saturation USettingsElementPercent
---@field HDRMinLuminance USettingsElementPercent
---@field HDRMaxLuminance USettingsElementPercent
---@field HDRBaseLuminance USettingsElementPercent
---@field HDRUILuminance USettingsElementPercent
---@field HDRScheme USettingElementValueLocSwitcher
---@field Contrast USettingsElementPercent
---@field SafeZone USettingElementButton
---@field NVIDIAReflex USettingElementOnOff
---@field PCSpecificElements TArray<UWidget>
---@field ConsoleSpecificElements TArray<UWidget>
---@field SafeZoneViewWidgetClass TSoftClassPtr<UMenuSubViewBase>
local UDisplaySettingsWidget = {}



---@class UDoNothing : UMenuButtonActionBase
local UDoNothing = {}


---@class UDoor : ULockableComponent
---@field Doors TArray<FDoorMovableData>
---@field bShouldRestoreAngle boolean
---@field bTaskCanBeInterrupted boolean
---@field bDoorCanBePushed boolean
---@field InitialPushImpulseMultiplier float
---@field AngleRestoreSpeed float
---@field AngleRestoreDelay float
---@field CurrentState EDoorState
local UDoor = {}

---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UDoor:OnDoorMeshHit(HitComp, OtherActor, OtherComp, NormalImpulse, Hit) end


---@class UDragDropZone : UUserWidget
local UDragDropZone = {}


---@class UDraggableComponent : USingleClickComponent
local UDraggableComponent = {}


---@class UDrawGSCDebug : UDebugDrawComponent
local UDrawGSCDebug = {}


---@class UDynamicEnvironmentNiagaraComponent : UEnvironmentNiagaraComponent
local UDynamicEnvironmentNiagaraComponent = {}


---@class UDynamicObstacleAvoidanceManager : UBaseTickableManager
local UDynamicObstacleAvoidanceManager = {}


---@class UDynamicObstacleAvoidanceSettings : UDeveloperSettings
---@field SystemSettings FDynamicObstacleAvoidanceSystemSettings
---@field QuerrySettings FDynamicObstacleAvoidanceQuerrySettings
---@field PiecefulAgentSettings FDynamicObstacleAvoidanceAgentSettings
---@field CombatAgentSettings FDynamicObstacleAvoidanceAgentSettings
local UDynamicObstacleAvoidanceSettings = {}



---@class UEULAView : UViewBaseExtended
---@field EULATitle UTextWidget
---@field TextVerticalBox UVerticalBox
---@field EULAScrollBox UScrollBox
---@field EULAMainText UModifiableRichText
---@field SendAnalyticsDataSwitcher USettingElementSwitcher
---@field HintAcceptBox UHorizontalBox
---@field ScrollMoveSpeed float
local UEULAView = {}

function UEULAView:TurnSendAnalyticsOn() end
function UEULAView:TurnSendAnalyticsOff() end
function UEULAView:ScrollUp() end
function UEULAView:ScrollDown() end
---@param Offset float
function UEULAView:OnUserScrolled(Offset) end
function UEULAView:Decline() end
function UEULAView:Accept() end


---@class UEditorMaterialParameterConfig : UObject
---@field TexturePath FSoftObjectPath
---@field ParameterName FName
local UEditorMaterialParameterConfig = {}



---@class UElectricComponent : UActorComponent
---@field OnStartEMIEvent FElectricComponentOnStartEMIEvent
---@field OnEndEMIEvent FElectricComponentOnEndEMIEvent
---@field bIsTurnedOn boolean
local UElectricComponent = {}



---@class UEmissionManager : UBaseTickableManager
local UEmissionManager = {}

function UEmissionManager:GeneratorsSequenceIdle() end


---@class UEnemyBillboardSubsystem : UWorldSubsystem
local UEnemyBillboardSubsystem = {}


---@class UEnvironmentNiagaraComponent : UNiagaraComponent
local UEnvironmentNiagaraComponent = {}


---@class UEnvironmentParticleManager : UBaseTickableManager
---@field StaticParticles TArray<UStaticEnvironmentNiagaraComponent>
---@field EmissionCrowsFall UNiagaraComponent
local UEnvironmentParticleManager = {}



---@class UEquipmentSlot : UInteractableItemSlotBaseWidget
---@field Background UImage
---@field EffectsHighlight UImage
---@field bLocked UImage
---@field DefaultImage UImage
---@field Broken UImage
---@field Attach UImage
---@field ItemImageScaleBox UScaleBox
---@field HighlightBorder UBorder
---@field DefaultImageColor FLinearColor
---@field DefaultIconTransform FWidgetTransform
---@field TransparentDefaultImageColor FLinearColor
---@field DefaultIcon UTexture2D
---@field BackgroundIcon UTexture2D
---@field BlockedIcon UTexture2D
---@field DependencyHighlightColor FLinearColor
---@field ActiveEffectIcon UTexture2D
---@field NonActiveEffectIcon UTexture2D
---@field bArtifact boolean
---@field DefaultImageScaleX float
---@field DefaultImageScaleY float
---@field InventoryHighlightImage UImage
---@field InventoryHighlightTexture UTexture2D
local UEquipmentSlot = {}



---@class UEquipmentSlots : UDragDropZone
---@field CanvasPanel UCanvasPanel
---@field MainHand UEquipmentSlot
---@field SecondHand UEquipmentSlot
---@field Head UEquipmentSlot
---@field Detector UEquipmentSlot
---@field Artifact1 UEquipmentSlot
---@field Artifact2 UEquipmentSlot
---@field Artifact3 UEquipmentSlot
---@field Artifact4 UEquipmentSlot
---@field Artifact5 UEquipmentSlot
---@field Pistol UEquipmentSlot
---@field Torso UEquipmentSlot
---@field NightVisionGoggles UEquipmentSlot
---@field NavBorder UBorder
---@field HeaderText UTextWidget
---@field EquipmentStatsGrid UEquipmentStatsGrid
---@field RadiationProgress UProgressBar
---@field RadiationImage UImage
---@field DefaultNavBorderColor FLinearColor
---@field DraggingNavBorderColor FLinearColor
---@field RadiationLevelColor0 FLinearColor
---@field RadiationLevelColor1 FLinearColor
---@field RadiationLevelColor2 FLinearColor
---@field RadiationLevelColor3 FLinearColor
---@field RadiationLevelColor4 FLinearColor
---@field InventoryNew UInventoryNew
---@field ItemSlotsWidgets TMap<int32, UEquipmentSlot>
---@field NavigationPaths TMap<EInventoryEquipmentSlot, FEquipmentNavigationPaths>
---@field CurrMovingWidget UItemDragWidget
---@field CurrPickedSlot UEquipmentSlot
---@field NavBorderSlot UCanvasPanelSlot
local UEquipmentSlots = {}

---@param ItemWidget UInteractableItemSlotBaseWidget
function UEquipmentSlots:OnItemMouseLeave(ItemWidget) end
---@param ItemWidget UInteractableItemSlotBaseWidget
function UEquipmentSlots:OnItemMouseEnter(ItemWidget) end


---@class UEquipmentStat : UWidgetBase
---@field DamageTypeImage UImage
---@field DamageTypeText UTextWidget
---@field EquipmentStatBar UEquipmentStatBar
---@field DamageTypeTexture UTexture2D
---@field LocalizationSID FString
local UEquipmentStat = {}



---@class UEquipmentStatBar : UWidgetBase
---@field ProgressBar UImage
local UEquipmentStatBar = {}



---@class UEquipmentStatsGrid : UWidgetBase
---@field ThermalProtection UEquipmentStat
---@field RadiationProtection UEquipmentStat
---@field LectricalProtection UEquipmentStat
---@field PsyProtection UEquipmentStat
---@field ChemicalProtection UEquipmentStat
---@field PhysicalProtection UEquipmentStat
---@field StatWidgetsMap TMap<EEffectType, UEquipmentStat>
local UEquipmentStatsGrid = {}



---@class UEventManager : UBaseTickableManager
local UEventManager = {}


---@class UExpandableCustomGrid : UCustomGrid
---@field Left UImage
---@field Right UImage
---@field LeftTextureSmall UTexture2D
---@field RightTextureSmall UTexture2D
---@field LeftTextureBig UTexture2D
---@field RightTextureBig UTexture2D
---@field VisibleCellsSmall FVector2D
---@field VisibleCellsBig FVector2D
local UExpandableCustomGrid = {}



---@class UExpansionResolverFactory : UNeedsResolverFactory
local UExpansionResolverFactory = {}


---@class UExplosionComponent : UActorComponent
---@field ExplosionParticles UFXSystemAsset
---@field PrototypeSID FPrototypeSID
---@field AkComponent UAkComponent
local UExplosionComponent = {}

---@param Location FVector
---@param ExplosionInstigatorUID FUID
function UExplosionComponent:ExplodeWithCustomLocation(Location, ExplosionInstigatorUID) end
---@param Location FVector
---@param ExplosionInstigator UObject
function UExplosionComponent:ExplodeAtCustomLocation(Location, ExplosionInstigator) end
---@param ExplosionInstigatorUID FUID
function UExplosionComponent:Explode(ExplosionInstigatorUID) end


---@class UFadeoutScreen : UViewBase
---@field SpeakerNameText UTextWidget
---@field SubtitleText UTextWidget
---@field SpeakerNameContainer USizeBox
---@field FadeoutImage UImage
local UFadeoutScreen = {}

function UFadeoutScreen:UISkipFadeoutScreen() end


---@class UFastDialogueView : UDialogueView
---@field AnswerContainer UVerticalBox
---@field TimerWidget UAbstractProgressBar
---@field DialogueAnswerFastLeft UDialogueFastAnswer
---@field DialogueAnswerFastRight UDialogueFastAnswer
---@field bIsImportant boolean
local UFastDialogueView = {}

function UFastDialogueView:UpdateAfterClick() end
function UFastDialogueView:UIFastDialogSecondAnswer() end
function UFastDialogueView:UIFastDialogFirstAnswer() end
---@param bIsRightAnswer boolean
function UFastDialogueView:PostSelectAnswer(bIsRightAnswer) end
---@param bIsRightAnswer boolean
function UFastDialogueView:EndSelectAnswer(bIsRightAnswer) end
function UFastDialogueView:BlockInput() end


---@class UFastTravelManager : UBaseManager
local UFastTravelManager = {}


---@class UFaustBossComponent : UActorComponent
---@field WoundedPsyStrikeSID FAbilityPrototypeSID
---@field InvulnerablePhysicalMaterial UPhysicalMaterial
---@field OriginalPhysicalMaterial UPhysicalMaterial
---@field WoundedDialogPrototypeSID FString
---@field NumberOfPhases int32
local UFaustBossComponent = {}

function UFaustBossComponent:WoundedBark() end


---@class UFaustCloneComponent : UActorComponent
---@field AliveModelDissolveCurve UCurveFloat
---@field DeadModelDissolveCurve UCurveFloat
---@field AliveModelGroomCurve UCurveFloat
---@field DeadModelGroomCurve UCurveFloat
---@field CloneSwitchEffect UNiagaraSystem
---@field CloneSwitchTime float
---@field OnCloneSwitchStarted FFaustCloneComponentOnCloneSwitchStarted
local UFaustCloneComponent = {}



---@class UFileObjPrototypesEditor : UObject
---@field ObjPrototypes TArray<UObjPrototypeEditor>
local UFileObjPrototypesEditor = {}



---@class UFinalCreditsWithVideo : UUserWidget
---@field CreditsWidget UCreditsWidget
---@field BinkMediaPlayer UBinkMediaPlayer
---@field Border UImage
---@field BorderImages TMap<EBorderType, TSoftObjectPtr<UTexture2D>>
local UFinalCreditsWithVideo = {}

---@param VideoToPlay UMediaSource
function UFinalCreditsWithVideo:PlayVideo(VideoToPlay) end
---@return float
function UFinalCreditsWithVideo:GetVideoDuration() end
function UFinalCreditsWithVideo:EndVideo() end


---@class UFireIPU : UInputProcessingUnit
local UFireIPU = {}


---@class UFireTypeWidget : UWidgetBase
---@field Background UImage
---@field Icon UImage
---@field FadedOpacity float
---@field SelectedOpacity float
---@field FadeSpeed float
local UFireTypeWidget = {}



---@class UFirstTimeSettingsWidget : USettingsPage
---@field ColorBlindness USettingElementSwitcher
---@field InterfaceLanguage USettingElementSwitcher
---@field VoicingLanguage USettingElementSwitcher
---@field Gamma USettingsElementPercent
---@field DynamicRange USettingElementSwitcher
---@field AdaptiveTriggers USettingElementOnOff
---@field MotionAimAssist USettingElementOnOff
---@field MotionVerticalInversion USettingElementOnOff
---@field MotionHorizontalInversion USettingElementOnOff
---@field MotionVerticalSensitivity USettingsElementPercent
---@field MotionHorizontalSensitivity USettingsElementPercent
---@field UseControllerSpeaker USettingElementSwitcher
---@field HazardsSoundGroup USettingElementSwitcher
---@field RadioSoundGroup USettingElementSwitcher
---@field DiegeticSoundGroup USettingElementSwitcher
---@field InterfaceSoundGroup USettingElementSwitcher
---@field InteractiveObjectsSoundGroup USettingElementSwitcher
---@field ControllerSpeakerSoundGroupFields TArray<USettingElement>
---@field PS5SpecificWidgets TArray<UWidget>
---@field OnGammaSelectedDelegate FFirstTimeSettingsWidgetOnGammaSelectedDelegate
local UFirstTimeSettingsWidget = {}

---@param Value int32
function UFirstTimeSettingsWidget:OnVoiceLanguageChanged(Value) end
---@param Value int32
function UFirstTimeSettingsWidget:OnInterfaceLanguageChanged(Value) end
---@param InSelected boolean
function UFirstTimeSettingsWidget:OnGammaSelected(InSelected) end
---@param Value float
function UFirstTimeSettingsWidget:OnGammaChanged(Value) end
---@param Value int32
function UFirstTimeSettingsWidget:OnDynamicRangeChanged(Value) end
---@param Value int32
function UFirstTimeSettingsWidget:OnColorBlindnessChanged(Value) end


---@class UFlashlightComponent : UElectricComponent
---@field MainMeshComponent UMeshComponent
---@field FakeLightBeamComponent UStaticMeshComponent
---@field SpotLightComponent USpotLightComponent
---@field ExtraSpotLightComponent USpotLightComponent
---@field TopAttachmentComponent USceneComponent
---@field ParentMeshComponent UMeshComponent
---@field InnerRadiusCurve UCurveFloat
---@field OuterRadiusCurve UCurveFloat
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
local UFlashlightComponent = {}



---@class UFlowerParticleComponent : USceneComponent
---@field Spline USplineComponent
---@field Collision UShapeComponent
---@field Particle UNiagaraComponent
---@field Speed float
---@field Distance float
local UFlowerParticleComponent = {}



---@class UFollowNPCSubsystem : UTickableWorldSubsystem
local UFollowNPCSubsystem = {}


---@class UForceFeedbackDataAsset : UDataAsset
---@field TriggerToProcessors TMap<FGameplayTag, FProcessorsArray>
local UForceFeedbackDataAsset = {}



---@class UForceFeedbackProcessorBase : UObject
---@field Priority int32
---@field bIgnoreSelf boolean
---@field Params FForceFeedbackParams
---@field RumbleType ERumbleType
---@field DefaultRumbleType ERumbleType
---@field CurrentFeedback UForceFeedbackEffect
local UForceFeedbackProcessorBase = {}



---@class UForceFeedbackSettings : UDeveloperSettings
---@field FeedbackDataAsset TSoftObjectPtr<UForceFeedbackDataAsset>
---@field StopAllPriority int32
---@field bStopCurrentProcessor boolean
local UForceFeedbackSettings = {}



---@class UForceFeedbackSphereComponent : USphereComponent
---@field FeedbackTag FGameplayTag
---@field ForceFeedbackDistanceIntensityCurve UCurveFloat
---@field UpdateIntensityRate float
---@field UpdateStartFeedbackRate float
---@field bOneShotFeedback boolean
---@field bDisabledByDefault boolean
local UForceFeedbackSphereComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UForceFeedbackSphereComponent:OnEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UForceFeedbackSphereComponent:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function UForceFeedbackSphereComponent:EnableForceFeedback() end
function UForceFeedbackSphereComponent:DisableForceFeedback() end


---@class UForceFeedbackSubsystem : ULocalPlayerSubsystem
---@field DataAsset UForceFeedbackDataAsset
---@field ActiveProcessors TMap<FGameplayTag, FProcessorsArray>
---@field DelayedProcessors TMap<FGameplayTag, FProcessorsArray>
local UForceFeedbackSubsystem = {}

---@param Trigger FGameplayTag
---@return boolean
function UForceFeedbackSubsystem:StopFeedback(Trigger) end
function UForceFeedbackSubsystem:StopAll() end
---@param NewValue float
function UForceFeedbackSubsystem:SetIntensityMultiplier(NewValue) end
---@return float
function UForceFeedbackSubsystem:GetIntensityMultiplier() end
---@param Trigger FGameplayTag
---@param Args FForceFeedbackArgs
---@param InIntensityMultiplier float
---@param bOverrideStopCurrent boolean
---@param bStopCurrent boolean
---@return boolean
function UForceFeedbackSubsystem:BP_StartFeedback(Trigger, Args, InIntensityMultiplier, bOverrideStopCurrent, bStopCurrent) end


---@class UGAAttachSelectorActionProcessor : UGAPlayerProcessorInterface
local UGAAttachSelectorActionProcessor = {}


---@class UGADeveloperSettings : UDeveloperSettings
---@field SessionStatusAfkThreshold float
---@field PlayerPositionEmitRate float
---@field PlayerPositionBatchSize int32
---@field PlayerPositionAfkThreshold float
---@field PlayerFactionReputationEmitRate float
---@field PlayerStatusEmitRate float
---@field PlayerStatusAfkThreshold float
---@field PlayerStatusEffectAppliedWindow float
---@field PlayerStatusDamageReceivedWindow float
---@field PlayerStatusDamageThreshold float
---@field PlayerStatusEffectsTracked TSet<FString>
---@field PlayerStatusMaxEffectsToTrack int32
---@field InventoryStatusEmitRate float
---@field InventoryActionHoveredThreshold float
---@field PlayerActionShootWindow float
---@field PlayerActionUseQuickSlotWindow float
---@field PlayerActionGetHitWindow float
---@field PlayerCombatPlayerHitWindow float
---@field PlayerCombatEnemyHitWindow float
---@field ResourceChangeWindow float
---@field DialogueActionBatchSize int32
---@field EventsToEmit TSet<FString>
local UGADeveloperSettings = {}



---@class UGADialogueActionProcessor : UGAPlayerProcessorInterface
local UGADialogueActionProcessor = {}


---@class UGAEventsLibrary : UObject
local UGAEventsLibrary = {}


---@class UGAInventoryActionProcessor : UGAPlayerProcessorInterface
local UGAInventoryActionProcessor = {}


---@class UGAInventoryStatusProcessor : UGAPlayerProcessorBase
local UGAInventoryStatusProcessor = {}


---@class UGAManager : UBaseTickableManager
local UGAManager = {}


---@class UGAPDAActionProcessor : UGAPlayerProcessorInterface
local UGAPDAActionProcessor = {}


---@class UGAPlayerActionProcessor : UGAPlayerProcessorInterface
local UGAPlayerActionProcessor = {}


---@class UGAPlayerCombatProcessor : UGAPlayerProcessorInterface
local UGAPlayerCombatProcessor = {}


---@class UGAPlayerComponent : UActorComponent
---@field Processors TArray<UGAPlayerProcessorInterface>
local UGAPlayerComponent = {}



---@class UGAPlayerFactionReputationProcessor : UGAPlayerProcessorBase
local UGAPlayerFactionReputationProcessor = {}


---@class UGAPlayerPositionProcessor : UGAPlayerProcessorInterface
local UGAPlayerPositionProcessor = {}


---@class UGAPlayerProcessorBase : UGAPlayerProcessorInterface
local UGAPlayerProcessorBase = {}


---@class UGAPlayerProcessorInterface : UObject
local UGAPlayerProcessorInterface = {}


---@class UGAPlayerStatusProcessor : UGAPlayerProcessorBase
local UGAPlayerStatusProcessor = {}


---@class UGAQuestProcessor : UGAPlayerProcessorInterface
local UGAQuestProcessor = {}


---@class UGAResourceChangeProcessor : UGAPlayerProcessorInterface
local UGAResourceChangeProcessor = {}


---@class UGATradeActionProcessor : UGAPlayerProcessorInterface
local UGATradeActionProcessor = {}


---@class UGATutorialEventProcessor : UGAPlayerProcessorInterface
local UGATutorialEventProcessor = {}


---@class UGAUpgradeActionProcessor : UGAPlayerProcessorInterface
local UGAUpgradeActionProcessor = {}


---@class UGSCAblityBlueprintFunctions : UBlueprintFunctionLibrary
local UGSCAblityBlueprintFunctions = {}

---@param Actor AActor
---@param ActivationTag FName
function UGSCAblityBlueprintFunctions:ExecuteAbilityByActivationTagAttackPayload(Actor, ActivationTag) end


---@class UGSCAssetManager : UAssetManager
local UGSCAssetManager = {}


---@class UGSCAudioVolumeSettings : UDeveloperSettings
---@field AmbientTimerDelay float
---@field MaxNPCinVolume int32
---@field AmbientVolumeRTPC TSoftObjectPtr<UAkRtpc>
local UGSCAudioVolumeSettings = {}



---@class UGSCBPFunctionLibrary : UBlueprintFunctionLibrary
local UGSCBPFunctionLibrary = {}

---@param PrimitiveComponent UPrimitiveComponent
---@param bCanAffect boolean
function UGSCBPFunctionLibrary:SetAffectNavigationForComponent(PrimitiveComponent, bCanAffect) end


---@class UGSCCameraModifier : UCameraModifier
---@field PausedAlphaInTime float
---@field PausedAlphaOutTime float
---@field PausedTargetAlpha float
local UGSCCameraModifier = {}



---@class UGSCCameraModifier_PostProcess : UGSCCameraModifier
---@field Settings FPostProcessSettings
local UGSCCameraModifier_PostProcess = {}



---@class UGSCDataTable : UDataTable
local UGSCDataTable = {}


---@class UGSCGameplayEventData : UObject
local UGSCGameplayEventData = {}


---@class UGSCInputDeviceSubsystem : ULocalPlayerSubsystem
---@field bUseInputDeviceSwitchingThreshold boolean
---@field InputDeviceSwitchingThreshold float
---@field bSwitchToOtherDeviceOnConnect boolean
local UGSCInputDeviceSubsystem = {}



---@class UGSCInputDeviceSubsystemPS5 : UGSCInputDeviceSubsystem
local UGSCInputDeviceSubsystemPS5 = {}


---@class UGSCInputDeviceSubsystemWindows : UGSCInputDeviceSubsystem
local UGSCInputDeviceSubsystemWindows = {}


---@class UGSCInputDeviceSubsystemXbox : UGSCInputDeviceSubsystem
local UGSCInputDeviceSubsystemXbox = {}


---@class UGSCLocalPlayer : ULocalPlayer
---@field DLCNameToBitFlag TMap<FName, uint32>
local UGSCLocalPlayer = {}

function UGSCLocalPlayer:XImportSaves() end
---@param bSuccess boolean
function UGSCLocalPlayer:XFinishLoginProcess(bSuccess) end
function UGSCLocalPlayer:XFileToClipboard() end
function UGSCLocalPlayer:XExportSaves() end
function UGSCLocalPlayer:XClipboardToFile() end


---@class UGSCModIOSubsystem : UModSubsystemBase
---@field ModBrowserClass TSoftClassPtr<UUserWidget>
---@field ModBrowserLoadingClass TSoftClassPtr<UUserWidget>
---@field ModioSubsystem UModioSubsystem
---@field ModioUISubsystem UModioUISubsystem
---@field ModBrowserWidget UUserWidget
---@field ModBrowserLoadingWidget UUserWidget
local UGSCModIOSubsystem = {}

---@param ID FModioModID
---@return boolean
function UGSCModIOSubsystem:IsModInstalled(ID) end
function UGSCModIOSubsystem:HandleModBrowserCloseRequested() end


---@class UGSCNavAreaSubsystem : UGameInstanceSubsystem
---@field NavAreaClasses TArray<UClass>
---@field NavAreaDefaultRestrictions TMap<UClass, FDefaultRestrictions>
local UGSCNavAreaSubsystem = {}



---@class UGSCNavModifierComponent : UNavModifierComponent
---@field bEnabled boolean
---@field SelectedComponents TArray<UPrimitiveComponent>
---@field PhysicalBodies TArray<FNavModifierBodyConfig>
---@field TargetAreaClass TSubclassOf<UNavArea>
local UGSCNavModifierComponent = {}

---@param bNewEnabled boolean
function UGSCNavModifierComponent:SetEnabled(bNewEnabled) end
function UGSCNavModifierComponent:RequestBoundsRecalculation() end
---@param PrimitiveComponent UPrimitiveComponent
function UGSCNavModifierComponent:RemoveSelectedComponent(PrimitiveComponent) end
function UGSCNavModifierComponent:ClearSelectedComponents() end
---@param PrimitiveComponent UPrimitiveComponent
function UGSCNavModifierComponent:AddSelectedComponent(PrimitiveComponent) end


---@class UGSCNavigationSettings : UDeveloperSettings
---@field NavAreasPriorities TArray<FSoftClassPath>
---@field DefaultRestrictions TMap<FSoftClassPath, FDefaultRestrictions>
local UGSCNavigationSettings = {}



---@class UGSCTextBlock : UTextBlock
local UGSCTextBlock = {}


---@class UGameGraphRenderingComponent : UDebugDrawComponent
---@field ShowComponentId uint32
---@field DrawParams FGameGraphSceneProxyDrawParams
---@field GameGraphMaterial UMaterialInstance
---@field GameGraphBoundsBox FBoxSphereBounds
local UGameGraphRenderingComponent = {}

function UGameGraphRenderingComponent:ShowAllComponents() end


---@class UGameGraphSubsystem : UWorldSubsystem
---@field GameGraphData AGameGraphData
local UGameGraphSubsystem = {}



---@class UGameInstanceSubsystemButtonStateDefiner : UMenuButtonStateDefiner
---@field ExcludeSubsystems TArray<TSubclassOf<UGameInstanceSubsystem>>
local UGameInstanceSubsystemButtonStateDefiner = {}



---@class UGameLoadingSubsystem : UGameInstanceSubsystem
---@field LevelsToActivate TArray<UWorldPartitionRuntimeCell>
---@field LevelsToRemove TSet<ULevel>
local UGameLoadingSubsystem = {}



---@class UGameManager : UBaseManager
---@field DeveloperSpectator ADeveloperSpectator
---@field StaminaWeightCurve UCurveFloat
local UGameManager = {}



---@class UGameMenuElement : UWidgetBase
---@field LocName FText
---@field SelectedAnim UWidgetAnimation
---@field Button UButton
---@field Caption UTextWidget
local UGameMenuElement = {}

function UGameMenuElement:Confirm() end


---@class UGameSettingsWidget : USettingsPage
---@field AutoSave USettingElementOnOff
---@field Tutorial USettingElementOnOff
---@field InteractPaint USettingElementOnOff
---@field Difficulty USettingElementSwitcher
---@field QuickSave USettingElementOnOff
---@field InterfaceLanguage USettingElementSwitcher
---@field VoicingLanguage USettingElementSwitcher
---@field EnableStreamerMode USettingElementOnOff
---@field SendAnalyticsData USettingElementOnOff
---@field Backups USettingElementButton
local UGameSettingsWidget = {}



---@class UGamepadMapNavigationIPU : UInputProcessingUnit
local UGamepadMapNavigationIPU = {}


---@class UGameplayEventManager : UBaseManager
---@field EventDataPool TMap<UClass, UGSCGameplayEventData>
local UGameplayEventManager = {}



---@class UGameplayPhysicalMaterial : UPhysicalMaterial
---@field bAllowCustomPhysicalMaterialType boolean
---@field CustomPhysicalMaterialType EPhysicalMaterialType
local UGameplayPhysicalMaterial = {}



---@class UGarbageCollectionSubsystem : UGameInstanceSubsystem
local UGarbageCollectionSubsystem = {}


---@class UGeigerCounterComponent : UPlayerEffectsSFXComponent
local UGeigerCounterComponent = {}


---@class UGeneralCheatsSubsystem : UEngineSubsystem
local UGeneralCheatsSubsystem = {}


---@class UGlobal : UGameInstance
---@field SoftMapSettings TSoftObjectPtr<UMapSettingsAsset>
---@field SoftUpgradeCompensation TSoftObjectPtr<UUpgradeCompensationAsset>
local UGlobal = {}

---@param MapName FName
---@param Options FString
function UGlobal:GoToMap(MapName, Options) end


---@class UGlobalLoadingSubsystem : UGameInstanceSubsystem
---@field GameInstance UGlobal
---@field PSOWarmupTimerHandle FTimerHandle
local UGlobalLoadingSubsystem = {}



---@class UGlobalVariableManager : UBaseManager
local UGlobalVariableManager = {}


---@class UGoPreviousViewAction : UMenuButtonActionBase
local UGoPreviousViewAction = {}


---@class UGotoViewAction : UMenuButtonActionBase
---@field DestinationWidget TSoftClassPtr<UMenuSubViewBase>
---@field bChangeBehaviourOnPresentation boolean
---@field CampaignIndex int32
---@field DifficultyPrototypeSID FString
local UGotoViewAction = {}



---@class UGraphicsSettingsWidget : USettingsPage
---@field OverallQuality USettingElementSwitcher
---@field OverallQualityXSX USettingElementSwitcher
---@field RenderingResolution USettingsElementPercent
---@field Sharpness USettingsElementPercent
---@field UpscalingMethod USettingElementSwitcher
---@field DLSSRayReconstruction USettingElementOnOff
---@field DLSSFrameGeneration USettingElementSwitcher
---@field FFXFrameGeneration USettingElementOnOff
---@field UpscalingQualityPreset USettingElementSwitcher
---@field ViewDistance USettingElementSwitcher
---@field PostProcessing USettingElementSwitcher
---@field TexturesQuality USettingElementSwitcher
---@field ShadowsQuality USettingElementSwitcher
---@field EffectsQuality USettingElementSwitcher
---@field ReflectionsQuality USettingElementSwitcher
---@field FoliageQuality USettingElementSwitcher
---@field GlobalIllumination USettingElementSwitcher
---@field ShadingQuality USettingElementSwitcher
---@field HairQuality USettingElementSwitcher
---@field ObjectDetailQuality USettingElementSwitcher
---@field VolumetricFogQuality USettingElementSwitcher
---@field VolumetricCloudsQuality USettingElementSwitcher
---@field SkyQuality USettingElementSwitcher
---@field DOFQuality USettingElementSwitcher
---@field MaterialQuality USettingElementSwitcher
---@field MotionBlurQuality USettingElementSwitcher
---@field MotionBlurStrength USettingsElementPercent
---@field LightShaftsQuality USettingElementOnOff
---@field PCSpecificElements TArray<UWidget>
---@field ConsoleSpecificElements TArray<UWidget>
---@field UpscalingWidgets TArray<USettingElement>
local UGraphicsSettingsWidget = {}



---@class UGreetingsPopup : UPopupBase
---@field DescriptionRich UModifiableRichText
---@field DescriptionContainer UVerticalBox
---@field BackgroundImage UImageWidget
local UGreetingsPopup = {}



---@class UGrenadeExplosionComponent : UExplosionComponent
local UGrenadeExplosionComponent = {}


---@class UGroomCategoryEditor : UObject
---@field CategoryName FName
---@field Variations TArray<UGroomEditor>
local UGroomCategoryEditor = {}



---@class UGroomEditor : UObject
---@field AdditionalGrooms TArray<UGroomEditor>
---@field MaterialPath FSoftObjectPath
---@field GroomPath FSoftObjectPath
---@field GroomBindingPath FSoftObjectPath
---@field Weight float
---@field VariationIndex int32
---@field GroomSID FName
---@field CustomData TArray<UCustomDataVariationsEditor>
---@field Materials TArray<UMeshGeneratorMaterialSlotEditor>
local UGroomEditor = {}



---@class UGuidActorComponent : UActorComponent
---@field Guid FGuid
local UGuidActorComponent = {}



---@class UGuitarAutoStrumIPU : UInputProcessingUnit
local UGuitarAutoStrumIPU = {}


---@class UGuitarChord1IPU : UInputProcessingUnit
local UGuitarChord1IPU = {}


---@class UGuitarChord2IPU : UInputProcessingUnit
local UGuitarChord2IPU = {}


---@class UGuitarChord3IPU : UInputProcessingUnit
local UGuitarChord3IPU = {}


---@class UGuitarChord4IPU : UInputProcessingUnit
local UGuitarChord4IPU = {}


---@class UGuitarChord5IPU : UInputProcessingUnit
local UGuitarChord5IPU = {}


---@class UGuitarChord6IPU : UInputProcessingUnit
local UGuitarChord6IPU = {}


---@class UGuitarChord7IPU : UInputProcessingUnit
local UGuitarChord7IPU = {}


---@class UGuitarChordAxisSelectionIPU : UInputProcessingUnit
local UGuitarChordAxisSelectionIPU = {}


---@class UGuitarChordSelectorView : UViewBaseExtended
---@field HintGuitarSwapScale UHintInputController
---@field GuitarChord1View UGuitarChordView
---@field GuitarChord2View UGuitarChordView
---@field GuitarChord3View UGuitarChordView
---@field GuitarChord4View UGuitarChordView
---@field GuitarChord5View UGuitarChordView
---@field GuitarChord6View UGuitarChordView
---@field HoveredChord UGuitarChordView
local UGuitarChordSelectorView = {}



---@class UGuitarChordView : UWidgetBase
local UGuitarChordView = {}

function UGuitarChordView:OnUnselected() end
function UGuitarChordView:OnSelected() end
function UGuitarChordView:OnMinorScale() end
function UGuitarChordView:OnMajorScale() end


---@class UGuitarContextualAction : UInputProcessingUnit
local UGuitarContextualAction = {}


---@class UGuitarExitIPU : UInputProcessingUnit
local UGuitarExitIPU = {}


---@class UGuitarResetCameraIPU : UInputProcessingUnit
local UGuitarResetCameraIPU = {}


---@class UGuitarStrumDownIPU : UInputProcessingUnit
local UGuitarStrumDownIPU = {}


---@class UGuitarStrumIPU : UInputProcessingUnit
local UGuitarStrumIPU = {}


---@class UGuitarStrumUpIPU : UInputProcessingUnit
local UGuitarStrumUpIPU = {}


---@class UGuitarSwapMajorMinorScaleIPU : UInputProcessingUnit
local UGuitarSwapMajorMinorScaleIPU = {}


---@class UGuitarUseIPU : UInputProcessingUnit
local UGuitarUseIPU = {}


---@class UGunRecoilTextureDataAsset : UDataAsset
---@field RecoilPatternAimKeys TArray<FRecoilKeys>
---@field RecoilPatternHipKeys TArray<FRecoilKeys>
local UGunRecoilTextureDataAsset = {}



---@class UHUDContextualLegend : UChildViewBase
---@field LegendText URichTextBlock
---@field DropDeadBodyHintSID FString
---@field GuitarPCAHintSID FString
local UHUDContextualLegend = {}



---@class UHUDRestoreIPU : UInputProcessingUnit
local UHUDRestoreIPU = {}


---@class UHeadFlashlightComponent : UFlashlightComponent
---@field FlashlightTurnOnAudioEvent UAkAudioEvent
---@field FlashlightTurnOffAudioEvent UAkAudioEvent
---@field FlashlightBurnOutAudioEvent UAkAudioEvent
local UHeadFlashlightComponent = {}



---@class UHintControllerBase : UWidgetBase
---@field bInitializeAutomatically boolean
---@field ControllerSettings FHintControllerSettings
---@field StyleSettings FHintStyleSettings
---@field PlatformSwitcher UPlatformSwitcherBase
---@field LeftText UTextWidget
---@field LeftGap USpacer
---@field RightText UTextWidget
---@field RightGap USpacer
local UHintControllerBase = {}



---@class UHintDecoratorBase : URichTextBlockImageDecorator
---@field DefaultPlatform EGSCInputDeviceType
---@field bEnableEditorDebug boolean
---@field bEnableRecolorIcon boolean
---@field StyleId FName
---@field bEnableRecolorConnectedBack boolean
---@field bShouldUseStylePrefix boolean
local UHintDecoratorBase = {}



---@class UHintHelper : UObject
local UHintHelper = {}


---@class UHintImageBase : UWidgetBase
---@field InputIconsType EInputIconsType
local UHintImageBase = {}



---@class UHintImageGamepad : UHintImageBase
---@field HintImage UImage
local UHintImageGamepad = {}



---@class UHintImageKeyboard : UHintImageBase
---@field HintImage UImage
---@field HintBackground UImage
---@field HintChar URichTextBlock
---@field KeyboardCharStyle FString
---@field BackgroundName FName
local UHintImageKeyboard = {}



---@class UHintInputController : UHintControllerBase
---@field MimicButtonElement UActionMimicButton
---@field bHandleMouseInput boolean
local UHintInputController = {}



---@class UHintProgressIPU : UInputProcessingUnit
local UHintProgressIPU = {}


---@class UHintRichTextWidget : URichTextWidget
local UHintRichTextWidget = {}


---@class UHintTutorialController : UHintControllerBase
---@field IntervalClick float
---@field IntervalHold float
local UHintTutorialController = {}



---@class UHintViewBase : UWidgetBase
---@field bInitializeAutomatically boolean
---@field HintViewSettings FHintViewSettings
---@field HintIconImage UHintImageBase
---@field HintIconImageDisabled UHintImageBase
---@field ProgressMaterial UImage
---@field ViewSizeBox USizeBox
---@field ViewScaleBox UScaleBox
---@field DoubleClickImage UImage
---@field PressAnimation UWidgetAnimation
---@field PressAnimationSpeedMultiplier float
---@field ProgressMaterialMap TMap<EHintProgressType, FProgressMaterialData>
local UHintViewBase = {}



---@class UHitEventData : UGSCGameplayEventData
---@field DamageHitLocation FVector
---@field DamageImpulse FVector
---@field DamageType EDamageType
---@field DamageSource EDamageSource
local UHitEventData = {}



---@class UHitReceiverComponent : UActorComponent
---@field ExplosionHit FHitReceiverComponentExplosionHit
---@field BulletProjectileHit FHitReceiverComponentBulletProjectileHit
---@field MeleeHit FHitReceiverComponentMeleeHit
---@field AnomalyHit FHitReceiverComponentAnomalyHit
---@field ProjectileHit FHitReceiverComponentProjectileHit
---@field PhysicsHit FHitReceiverComponentPhysicsHit
---@field WaterHit FHitReceiverComponentWaterHit
local UHitReceiverComponent = {}



---@class UHittableComponent : UActorComponent
---@field bCanHitWater boolean
local UHittableComponent = {}

---@param bNewValue boolean
function UHittableComponent:SetBroadcastHitPending(bNewValue) end
---@return boolean
function UHittableComponent:IsBroadcastHitPending() end


---@class UHoldBreathIPU : UBehaviorBasedIPU
local UHoldBreathIPU = {}


---@class UHoldComponent : UInteractionComponent
---@field OnHoldStartedEvent FHoldComponentOnHoldStartedEvent
---@field OnHoldInterruptedEvent FHoldComponentOnHoldInterruptedEvent
---@field OnHoldFinishedEvent FHoldComponentOnHoldFinishedEvent
---@field InteractionData FHoldInteractionData
local UHoldComponent = {}

---@return boolean
function UHoldComponent:IsHoldStarted() end


---@class UHoldIPU : UInputProcessingUnit
local UHoldIPU = {}


---@class UHoverIndicator : UWidgetBase
---@field Background UImage
---@field OnHoverIndicator FHoverIndicatorOnHoverIndicator
local UHoverIndicator = {}



---@class UHudHintsPanel : UChildViewBase
---@field HintHudRestoreHideTime float
---@field HintRestoreHUDNonActiveOpacity float
---@field HintRestoreHUD UHintInputController
---@field CommonHintBox UVerticalBox
---@field ChangeAmmoType UHintInputController
---@field ItemSelector UHintInputController
---@field OpenInventory UHintInputController
---@field OpenMap UHintInputController
---@field OpenPDA UHintInputController
---@field Flashlight UHintInputController
---@field NightVision UHintInputController
---@field CommonHintsOpacitySpeedChange float
---@field RestoreOpacitySpeedChange float
local UHudHintsPanel = {}

function UHudHintsPanel:UpdateInputDependent() end


---@class UHumanAnimCollection : UObject
---@field AnimationTargetTypes TMap<EAnimationTargetType, UAnimMontage>
---@field ExternalAnimations FHumanExternalAnimations
---@field StealthDeaths TMap<EAnimStealthKillPose, UAnimMontage>
---@field CriticalHits TArray<FCriticalHitAnimations>
---@field MeleeAnimationsTypes TMap<EAnimMeleeType, UAnimMontage>
---@field MeleeAnimationByAgentTarget TMap<EAgentType, UAnimMontage>
---@field PoseSearchLocomotionAnimCollectionData FPoseSearchLocomotionAnimCollectionData
local UHumanAnimCollection = {}



---@class UHumanDefaultAnimCollection : UObject
---@field HumanAnimCollection UHumanAnimCollection
---@field HumanAnimBlueprint UClass
---@field EquipUnequip FEquipUnequipAnimations
---@field PDAUsage FPDAUsageAnimations
---@field DragDeadBodyAnimations FDragDeadBodyAnimations
---@field SmartCoverAnimCollectionData FSmartCoverAnimCollectionData
---@field DeathAnimations FHumanDeathAnimations
---@field DialogIdleAnimations TMap<EEmotionalDialogState, FAnimDialogContextualWeightedArray>
---@field DialogAnimations TMap<EDialogAnimationType, FAnimDialogContextualArray>
local UHumanDefaultAnimCollection = {}

---@param DialogAnimationType FName
---@return TMap<ELookAtOwnerState, FAnimSequenceArray>
function UHumanDefaultAnimCollection:GetDialogAnimations(DialogAnimationType) end


---@class UHumanFirearmAnimCollection : UObject
---@field InternalAnimations FHumanFirearmInternalAnimations
---@field ExternalAnimations FHumanWeaponExternalAnimations
---@field SocketLocations TMap<FName, FVector>
---@field bIsOneHanded boolean
---@field WeaponAnimations FHumanWeaponAnimations
local UHumanFirearmAnimCollection = {}



---@class UHyperlinkButton : UButtonBase
---@field Text UTextWidget
---@field Underline UImage
---@field URL FString
---@field DefaultText FText
---@field bEnableLocalization boolean
---@field LocalizationSID FString
---@field SetStyleIdHover FName
---@field SetStyleIdUnHover FName
local UHyperlinkButton = {}



---@class UIdleScreenView : UViewBaseExtended
---@field LoadArrowRotation FVector2f
---@field IndicatorSpeed float
---@field TextSwitcher UWidgetSwitcher
---@field TextFadeInAnim UWidgetAnimation
---@field ShaderCompilingAnim UWidgetAnimation
---@field IdleAnim UWidgetAnimation
---@field ShadersCompilationBox UVerticalBox
---@field ProgressBarShaderCompiling UProgressBarWidget
---@field SkipPopupTitleSID FString
---@field SkipPopupDescSID FString
---@field SkipShadersHint UHintInputController
---@field ProgressBarUpdateSpeed float
---@field CachedInitLevelGameMode AInitLevelGameMode
---@field CachedLoadingSubsystem UGlobalLoadingSubsystem
local UIdleScreenView = {}

function UIdleScreenView:OnAnyKeyIsPressed() end


---@class UIdlesAnimEntriesData : URandomPlayerNodeEntriesProviderAsset
---@field LeaveStateTransition UAnimSequenceBase
local UIdlesAnimEntriesData = {}



---@class UImageWidget : UWidgetBase
---@field StyleId FName
---@field bEnableStyleManager boolean
---@field bSetDefaultIcon boolean
---@field IconSettings FIconSettings
---@field ImageObj UImage
local UImageWidget = {}

---@param Texture UTexture2D
function UImageWidget:SetBrushTextureInIconSettings(Texture) end


---@class UImpulseComponent : UActorComponent
local UImpulseComponent = {}

---@param InTargetActor AActor
---@param InImpulse FVector
---@param bIgnoreMass boolean
function UImpulseComponent:ApplyImpulse(InTargetActor, InImpulse, bIgnoreMass) end


---@class UInEditorDebugSettings : UDeveloperSettings
---@field bIgnoreHapticFeedbackRestrictions boolean
local UInEditorDebugSettings = {}



---@class UInertionIPU : UInputProcessingUnit
local UInertionIPU = {}


---@class UInfinityFormatter : UObject
local UInfinityFormatter = {}


---@class UInitScreensView : UWidgetBase
---@field PresenterSizeBox USizeBox
local UInitScreensView = {}



---@class UInitScreensViewController : UWidgetController
---@field ScreensOrder TArray<FInitScreenData>
---@field FadeInTime float
---@field FadeOutTime float
---@field MinimumScreenShowTime float
---@field InitScreensView UInitScreensView
local UInitScreensViewController = {}



---@class UInputDamageModifierComponent : UActorComponent
---@field DamageModifier float
local UInputDamageModifierComponent = {}

---@param bInIgnore boolean
function UInputDamageModifierComponent:SetIgnoreHitFeedback(bInIgnore) end


---@class UInputManager : UBaseTickableManager
---@field RemapMappingContext TWeakObjectPtr<UInputMappingContext>
---@field InputProcessingUnits TArray<UInputProcessingUnit>
---@field TickableIPUs TArray<UInputProcessingUnit>
---@field InputComponent UInputComponent
---@field PlayerInput UPlayerInput
---@field PlayerCharacter ACharacter
---@field InteractProgressBarFocusedActor AActor
local UInputManager = {}



---@class UInputMappingSettingsModel : UDataAsset
---@field ElementsModels TArray<FInputMappingSettingsElementModels>
local UInputMappingSettingsModel = {}



---@class UInputMappingSettingsPage : USettingsPage
---@field AnchorClass TSubclassOf<USettingsCategory>
---@field AnchorPadding FMargin
---@field InputElementClass TSubclassOf<USettingElementInput>
---@field BindedInputElementClass TSubclassOf<USettingElementBindedInput>
---@field SettingElementPadding FMargin
---@field ToggleElementPadding FMargin
---@field Anchors TArray<USettingsCategory>
---@field InputMappingSettingsModel UInputMappingSettingsModel
local UInputMappingSettingsPage = {}



---@class UInputModifierApplySensitivity : UInputModifier
---@field SensitivityInputType ESensitivityInputType
local UInputModifierApplySensitivity = {}



---@class UInputModifierCircleToSquare : UInputModifier
local UInputModifierCircleToSquare = {}


---@class UInputModifierResponseCurveWithSign : UInputModifier
---@field InputCurve UCurveFloat
---@field bMovementCurve boolean
local UInputModifierResponseCurveWithSign = {}



---@class UInputModifierSnappingModeDeadzone : UInputModifier
---@field LowerThreshold float
---@field LowerThresholdByAimPresetType TMap<EAimAssistPresetType, float>
local UInputModifierSnappingModeDeadzone = {}



---@class UInputProcessingUnit : UObject
---@field InputBuffer TArray<FInputBufferIPUStruct>
local UInputProcessingUnit = {}



---@class UInputTriggerActionBlocker : UInputTrigger
---@field Condition UActionBlockerConditionBase
local UInputTriggerActionBlocker = {}



---@class UInputTriggerDoubleClick : UInputTrigger
local UInputTriggerDoubleClick = {}


---@class UInputTriggerMotionGesture : UInputTrigger
---@field MotionGestureType EMotionGestureType
---@field MinRotation float
---@field MaxRotation float
---@field MinAngularVelocity float
---@field MaxAngularVelocity float
---@field AllowedDevitionFromVelocity int32
local UInputTriggerMotionGesture = {}



---@class UInputTriggerMotionGestureAndHold : UInputTriggerMotionGesture
local UInputTriggerMotionGestureAndHold = {}


---@class UInputTriggerMotionGestureBackAndForth : UInputTriggerMotionGesture
---@field MinFinalRotation float
---@field MaxFinalRotation float
---@field MaxTimeInS float
local UInputTriggerMotionGestureBackAndForth = {}



---@class UInputTriggerValueExceeds : UInputTrigger
---@field ValueThreshold float
---@field bIsOneShot boolean
---@field ValueResetThreshold float
---@field bDeltaBased boolean
---@field MaxTimeToTrigger float
local UInputTriggerValueExceeds = {}



---@class UInspectArtifactExitIPU : UInputProcessingUnit
local UInspectArtifactExitIPU = {}


---@class UInspectArtifactView : UViewBaseExtended
---@field HintFadeAnimation UWidgetAnimation
---@field HintFadeInPlaybackSpeed float
---@field HintFadeOutPlaybackSpeed float
---@field HintShowTime float
local UInspectArtifactView = {}



---@class UInteracDerivedVersionComponent : UInteractableVersionComponent
---@field bChangeEnabled boolean
---@field bChangeUnbreakable boolean
---@field bChangeBroken boolean
---@field bChangeSelfSufficient boolean
---@field bChangePrerequisiteRequired boolean
---@field bNewEnabled boolean
---@field bNewUnbreakable boolean
---@field bNewBroken boolean
---@field bNewSelfSufficient boolean
---@field bNewPrerequisiteRequired boolean
local UInteracDerivedVersionComponent = {}



---@class UInteractHintInputController : UHintControllerBase
---@field IconImage UImage
---@field InteractionTypeIcons TMap<EInteractionTypeIcon, TSoftObjectPtr<UTexture2D>>
local UInteractHintInputController = {}



---@class UInteractView : UViewBase
---@field MainCanvas UCanvasPanel
---@field MainHint UInteractHintInputController
---@field OptionalHint UInteractHintInputController
---@field BothElementCanvas UCanvasPanel
---@field HintCanvas UCanvasPanel
---@field InteractCanvas UCanvasPanel
---@field NameText UTextWidget
---@field ActionText UTextWidget
---@field SecondActionText UTextWidget
---@field MainActionElement UOverlay
---@field SecondActionElement UOverlay
---@field NameElement UOverlay
---@field UpgradeIcon UImage
---@field DurabilityIcon UImage
---@field OverweightIcon UImage
---@field MainRightSoftTile UImage
---@field EmptyText UTextWidget
---@field EmptyTextSecond UTextWidget
---@field ShowAnimation UWidgetAnimation
---@field HideAnimation UWidgetAnimation
---@field InteractItemOffset FVector2D
---@field FadeInSpeed float
---@field FadeOutSpeed float
---@field InteractionComponents TArray<TWeakObjectPtr<UInteractionComponent>>
---@field HintWidgets TArray<UInteractHintInputController>
---@field UpgradesBlueprintL10n FString
local UInteractView = {}

function UInteractView:UpdateInteractHints() end
function UInteractView:UpdateHintState() end


---@class UInteractViewDots : UViewBase
---@field HintCanvas UCanvasPanel
---@field HintDot UImageWidget
---@field HintDots TArray<UImageWidget>
---@field EmptyDotImage UTexture2D
---@field FilledDotImage UTexture2D
local UInteractViewDots = {}



---@class UInteractableAnimCollection : UObject
---@field InteractableAnimations FInteractableAnimations
---@field InteractableData FAnimInteractableData
---@field WeaponAnimations FPlayerWeaponAnimations
local UInteractableAnimCollection = {}



---@class UInteractableComponent : UUIDActorComponent
---@field OnStartQuestNode FInteractableComponentOnStartQuestNode
---@field OnFinishQuestNode FInteractableComponentOnFinishQuestNode
---@field OnExcludeQuestNode FInteractableComponentOnExcludeQuestNode
---@field OnRunAction FInteractableComponentOnRunAction
---@field OnRunAlternativeAction FInteractableComponentOnRunAlternativeAction
---@field OnEndInteract FInteractableComponentOnEndInteract
---@field OnUpdateInteract FInteractableComponentOnUpdateInteract
---@field OnUpdateProgress FInteractableComponentOnUpdateProgress
---@field bEnabled boolean
---@field InteractableActions TArray<UBaseInteractableAction>
---@field TriggerActorsList TArray<AActor>
---@field AlternativeTriggerActorsList TArray<AActor>
---@field TriggerUserData int32
---@field TriggerAlternativeUserData int32
---@field InteractionType EInteractionType
---@field DisplayPriority EDisplayPriority
---@field InteractionProgressDurationTime float
---@field InteractionProgressIncreasingSpeed float
---@field InteractionProgressFillTimeInSeconds float
---@field OverrideInteractionPromptText FString
---@field bTickableInteractable boolean
---@field bInteractableWithDeadBody boolean
---@field CurrentInteractingActor AActor
local UInteractableComponent = {}

---@param bInEnabled boolean
function UInteractableComponent:SetEnabled(bInEnabled) end
---@param NewPriority EDisplayPriority
function UInteractableComponent:SetDisplayPriority(NewPriority) end
---@return boolean
function UInteractableComponent:GetPreventDefaultInteract() end
---@return EInteractionType
function UInteractableComponent:GetInteractionType() end
---@return EDisplayPriority
function UInteractableComponent:GetDisplayPriority() end


---@class UInteractableItemSlotBaseWidget : UItemSlotBaseWidget
local UInteractableItemSlotBaseWidget = {}


---@class UInteractableVersionComponent : UActorComponent
---@field Version uint8
local UInteractableVersionComponent = {}

---@param OldVersion uint8
function UInteractableVersionComponent:UpdateFromVersion(OldVersion) end


---@class UInteractionComponent : UUIDActorComponent
---@field OnStartQuestNode FInteractionComponentOnStartQuestNode
---@field OnFinishQuestNode FInteractionComponentOnFinishQuestNode
---@field OnExcludeQuestNode FInteractionComponentOnExcludeQuestNode
---@field OnInteractedEvent FInteractionComponentOnInteractedEvent
---@field OnEndInteractedEvent FInteractionComponentOnEndInteractedEvent
---@field OnNotifyInteractEvent FInteractionComponentOnNotifyInteractEvent
---@field InteractionSocketName FName
---@field bIsInteractionActive boolean
---@field bShouldReleaseTargetOnInteraction boolean
---@field bRightHandBusy boolean
---@field bLeftHandBusy boolean
---@field bIsConeInteraction boolean
---@field bShowInactive boolean
---@field bSelfActivating boolean
---@field MinInteractionRadius float
---@field MaxInteractionRadius float
---@field ConeTipOffset FVector
---@field InteractionHeight float
---@field InteractionPointHeightOffset float
---@field ConeDirection FVector
---@field ConeHeight float
---@field ConeAngle float
---@field InteractableAnimCollection UInteractableAnimCollection
---@field Offset FVector
---@field bShowInteractionDot boolean
local UInteractionComponent = {}

---@param bShow boolean
function UInteractionComponent:SetShowInactive(bShow) end
---@param bNewValue boolean
function UInteractionComponent:SetSelfActivating(bNewValue) end
---@param MinDistance float
---@param MaxDistance float
function UInteractionComponent:SetInteractionDistance(MinDistance, MaxDistance) end
---@param bActive boolean
function UInteractionComponent:SetInteractionActive(bActive) end
---@return boolean
function UInteractionComponent:HasRelatedQuest() end
---@return boolean
function UInteractionComponent:HasItemRequirement() end


---@class UInventoryIPU : UInputProcessingUnit
local UInventoryIPU = {}


---@class UInventoryNew : UViewBaseExtended
---@field CanvasPanel UCanvasPanel
---@field EquipmentWidget UEquipmentSlots
---@field QuickPanel UQuickPanel
---@field InventoryWidget UCustomGrid
---@field CurrSelectedItem UInteractableItemSlotBaseWidget
---@field HoveredItem UInteractableItemSlotBaseWidget
---@field CurrClickedItem UInteractableItemSlotBaseWidget
---@field ItemTooltip UItemInfo
---@field ItemCompareWidget UItemCompareWidget
---@field TakeAllIcon UImage
---@field LootSeparator UTextWidget
---@field LootGridWidget UExpandableCustomGrid
---@field ButtonTakeAllItems UButton
---@field DropZone UDragDropZone
---@field RejectDropZoneInventory UDragDropZone
---@field RejectDropZoneEquipment UDragDropZone
---@field RejectDropZoneLootSmall UDragDropZone
---@field RejectDropZoneLootBig UDragDropZone
---@field ContextualDropZone UDragDropZone
---@field HintsOverlay UOverlay
---@field SafeZoneOverlay UOverlay
---@field HintToggleEquipment UHintInputController
---@field HintToggleDescription UHintInputController
---@field HintToggleAutoComparing UHintInputController
---@field HintClose UHintInputController
---@field HintBack UHintInputController
---@field HintUseItem UHintInputController
---@field HintEquip UHintInputController
---@field HintMoveToBackpack UHintInputController
---@field HintRemoveAttach UHintInputController
---@field HintUnload UHintInputController
---@field HintChangeCompareItemHint UHintInputController
---@field HintDragAndDrop UHintInputController
---@field HintDropItem UHintInputController
---@field HintLootTakeItem UHintInputController
---@field HintLootPutDown UHintInputController
---@field HintLootTakeAllOther UHintInputController
---@field HintLootTakeAllPlayerStash UHintInputController
---@field HintSortInventory UHintInputController
---@field HintSortStorageContainer UHintInputController
---@field HintShowContextualMenu UHintInputController
---@field HintMoveItem UHintInputController
---@field HintPlaceItem UHintInputController
---@field HintRemoveQuickAccess UHintInputController
---@field UseItemHoldTime float
---@field DropItemHoldTime float
---@field UpgradeMenu UUpgradeMenuWidget
---@field SortButton UButton
---@field LootOverlay UOverlay
---@field IconTakeAllItems UImage
---@field TooltipAndHintsPadding float
---@field VisibleStateHints TArray<UHintInputController>
---@field CommonHints TArray<UHintInputController>
---@field ItemTypeSwitchValue UAkSwitchValue
---@field TooltipDistance float
---@field GridVisibilityMap TMap<UUserWidget, ESlateVisibility>
---@field CurrGamepadNavigatedWidget UUserWidget
---@field DragWidget UItemDragWidget
---@field DragWidgetGrid UItemDragWidget
---@field ItemTooltipShowDelay float
---@field ItemTooltipCompareShowDelay float
---@field ItemTooltipClass TSubclassOf<UItemInfo>
---@field DragWidgetClass TSubclassOf<UItemDragWidget>
---@field DragGridWidgetClass TSubclassOf<UItemDragWidget>
---@field StackSplitWidgetClass TSubclassOf<UStackSplittingWidget>
---@field StackSplitContextual UStackSplitContextual
---@field StackSplit UStackSplittingWidget
---@field ItemBacktDefault FLinearColor
---@field ItemBackOk FLinearColor
---@field ItemBackInterceptOne FLinearColor
---@field ItemBackInterceptTwo FLinearColor
---@field ItemBackDepend FLinearColor
---@field ItemBackHoveredCompatible FLinearColor
---@field GamepadNavigationThreshold float
---@field RadiationMark UWidgetAnimation
---@field ToggleEquipmentIconColor FLinearColor
---@field OverWeightColor FLinearColor
---@field NormalWeightColor FLinearColor
---@field RightClickMenuWidget UUserWidget
---@field ItemSlotStartedDrag UInteractableItemSlotBaseWidget
---@field CurrGamepadSelectedItem UInteractableItemSlotBaseWidget
---@field CurrentCompareSlot EInventoryEquipmentSlot
---@field EquipmentSlotToCompare UEquipmentSlot
---@field CurrentCompareItemSlotType EInventoryEquipmentSlot
---@field GridSlotsPool TArray<UCustomGridSlot>
local UInventoryNew = {}

function UInventoryNew:UseItemHoldReleased() end
function UInventoryNew:UpdateInputDependent() end
function UInventoryNew:UIInventoryToggleItemInfo() end
function UInventoryNew:UIInventoryToggleEquipment() end
function UInventoryNew:UIInventoryTakeItem() end
function UInventoryNew:UIInventorySort() end
function UInventoryNew:UIInventoryNavigateUp() end
function UInventoryNew:UIInventoryNavigateRight() end
function UInventoryNew:UIInventoryNavigateLeft() end
function UInventoryNew:UIInventoryNavigateDown() end
function UInventoryNew:UIInventoryItemAction() end
function UInventoryNew:UIInventoryEnableAutoComparing() end
function UInventoryNew:UIInventoryDropItem() end
function UInventoryNew:UIInventoryChangeComparingItem() end
function UInventoryNew:UIGamepadInventoryItemAction() end
function UInventoryNew:SortStorageContainer() end
function UInventoryNew:SortInventory() end
function UInventoryNew:ShowTooltip() end
---@param NewVisibility ESlateVisibility
function UInventoryNew:OnVisibilityChangedEvent(NewVisibility) end
function UInventoryNew:OnUseItemHoldTriggered() end
function UInventoryNew:OnTakeAllHoldTriggered() end
function UInventoryNew:OnSplitHidden() end
---@param ItemAmountSplitForDrop int32
---@param ItemUID FItemUID
function UInventoryNew:OnSplitConfirmed(ItemAmountSplitForDrop, ItemUID) end
function UInventoryNew:OnSplitCanceled() end
---@param ItemData FRightClickMenuItemData
function UInventoryNew:OnRightClickMenuItemSelected(ItemData) end
---@param ItemData FRightClickMenuItemData
---@param bInHover boolean
function UInventoryNew:OnRightClickMenuItemHover(ItemData, bInHover) end
function UInventoryNew:OnRightClickMenuCanceled() end
---@param Pos FVector2D
function UInventoryNew:OnRejectDrop(Pos) end
function UInventoryNew:OnMoveToBackpackHoldTriggered() end
function UInventoryNew:OnGamepadSelectItemRelease() end
function UInventoryNew:OnGamepadSelectItemForMoveRepeat() end
function UInventoryNew:OnGamepadItemSelectHoldFinished() end
function UInventoryNew:OnGamepadEquipItem() end
function UInventoryNew:OnGamepadContextMenu() end
---@param ButtonId FName
function UInventoryNew:OnExitClick(ButtonId) end
function UInventoryNew:OnEquipHoldTriggered() end
---@param Pos FVector2D
function UInventoryNew:OnDropToEmptyPlace(Pos) end
function UInventoryNew:OnDropItemHoldTriggered() end
---@param Pos FVector2D
function UInventoryNew:OnDragDropCanceled(Pos) end
function UInventoryNew:LootTakeItemAction() end
function UInventoryNew:LootTakeAllHoldStarted() end
function UInventoryNew:LootTakeAllHoldReleased() end
function UInventoryNew:InventoryWidgetTakeAllItems() end
function UInventoryNew:HideRightClickMenu() end
function UInventoryNew:GamepadDragStop() end
function UInventoryNew:DropItemHoldReleased() end


---@class UItemAnimCollection : UObject
---@field UseItemAnimation FCharacterWeaponAnimations
---@field UseItemFastAnimation FCharacterWeaponAnimations
---@field SwingConfigContainer FAnimWeaponSwingContainer
---@field StopSwingInertia FWeaponInertiaContainer
---@field WeaponAnimations FPlayerWeaponAnimations
local UItemAnimCollection = {}



---@class UItemAppearanceComponent : UUIDActorComponent
---@field WeaponMeshInHands USkeletalMeshComponent
---@field WeaponMeshUnequipped USkeletalMeshComponent
---@field SecondaryItemInHands USkeletalMeshComponent
---@field ShootingAttachMesh USkeletalMeshComponent
---@field SilencerRTPCParameter UAkRtpc
---@field FireIntervalRTPCParameter UAkRtpc
---@field MechModulatorRTPCParameter UAkRtpc
---@field LastBulletInClipEvent UAkAudioEvent
---@field ShellSoundEvent UAkAudioEvent
---@field WeaponTypeSwitch UAkSwitchValue
---@field WeaponJamEvent UAkAudioEvent
---@field WeaponAkComponent UAkComponent
---@field KnifeLightAttackImpactEvent UAkAudioEvent
---@field KnifeHeavyAttackImpactEvent UAkAudioEvent
---@field WeaponInHandsAttachesData FWeaponAttachMeshesData
---@field ShadowAttachesData FWeaponAttachMeshesData
---@field CollisionHandler UParticleCallbackHandler
local UItemAppearanceComponent = {}

---@param CallbackType EAkCallbackType
---@param CallbackInfo UAkCallbackInfo
function UItemAppearanceComponent:OnShotSoundStart(CallbackType, CallbackInfo) end


---@class UItemCompareWidget : UWidgetBase
---@field PrimaryItemInfo UItemInfo
---@field SecondaryItemInfo UItemInfo
---@field ItemEquippedWidget UItemEquippedWidget
---@field ToggleAnimation UWidgetAnimation
---@field AnimationPlayRate float
---@field PrimaryWeaponSID FString
---@field SecondaryWeaponSID FString
local UItemCompareWidget = {}

function UItemCompareWidget:SetItemEquippedData() end


---@class UItemContainerHoldComponent : UHoldComponent
local UItemContainerHoldComponent = {}


---@class UItemContainerInteractionComponent : ULockableComponent
---@field PresetItemContainerPrototypeID int32
---@field StashTypeSwitch UAkSwitchValue
---@field OpenAudioEvent UAkAudioEvent
---@field CloseAudioEvent UAkAudioEvent
---@field InteractedActor AObj
local UItemContainerInteractionComponent = {}



---@class UItemDragWidget : UItemSlotBaseWidget
---@field ItemImageSizeBox USizeBox
---@field Background UImage
---@field Border UBorder
---@field ReturnEquipSlot int32
local UItemDragWidget = {}



---@class UItemEquippedWidget : UWidgetBase
---@field SwapIcon UImage
---@field WeaponTextBox UTextBlock
---@field EquippedTextBox UTextBlock
---@field EquippedSID FString
local UItemEquippedWidget = {}



---@class UItemGiveComponent : UActorComponent
---@field ObjectsToGive TArray<FInteractObjectData>
local UItemGiveComponent = {}

function UItemGiveComponent:ProvideItems() end


---@class UItemInfo : UWidgetBase
---@field FullBackCenter UImage
---@field HeaderText UTextWidget
---@field DurabilityText UTextWidget
---@field CaliberText UTextWidget
---@field ModeText UTextWidget
---@field MagazineText UTextWidget
---@field Price UTextWidget
---@field DurabilityPercentText UTextWidget
---@field FittingWeaponsRichText URichTextWidget
---@field FittingWeaponsBox USizeBox
---@field AmmoTypeRichText URichTextWidget
---@field AmmoTypeBox USizeBox
---@field ItemStatProgress1 UItemStatProgress
---@field ItemStatProgress2 UItemStatProgress
---@field ItemStatProgress3 UItemStatProgress
---@field ItemStatProgress4 UItemStatProgress
---@field ItemStatProgress5 UItemStatProgress
---@field ItemStatProgress6 UItemStatProgress
---@field ItemStatProgress7 UItemStatProgress
---@field ItemStatProgress8 UItemStatProgress
---@field FullBackTitle UImage
---@field Single UImage
---@field Dualshot UImage
---@field Burst UImage
---@field Auto UImage
---@field AmmoName UTextWidget
---@field MagSize UTextWidget
---@field Weight UTextWidget
---@field OneItemWeight UTextWidget
---@field ItemDescription UTextWidget
---@field ItemStatValueBox UVerticalBox
---@field ArmorValuesBox UHorizontalBox
---@field ArtContainersBox UHorizontalBox
---@field ArtCount UTextWidget
---@field FireTypesBox UVerticalBox
---@field SplitterLeft UImage
---@field SplitterRight UImage
---@field AmmoBox UVerticalBox
---@field MagBox UVerticalBox
---@field WeightBox UHorizontalBox
---@field DurabilityOverlay UOverlay
---@field Durability UProgressBar
---@field DurabilityBackground UImage
---@field RadiationMark UWidgetAnimation
---@field ImageAttach UImage
---@field EquipmentMarkOverlay UOverlay
---@field BlueprintIndicatorText UTextWidget
---@field ItemInfoBox USizeBox
---@field ItemTypeBackgroundMapping TMap<EItemType, UTexture2D>
---@field FallbackHeaderBackground UTexture2D
---@field ItemInfoWidgetClass TSubclassOf<UItemStatValue>
---@field ArmorAdditionalEffectWidgetClass TSubclassOf<UItemStatValue>
---@field DurabilityStyle FProgressBarStyle
---@field BackgroundDurabilityImage FSlateBrush
---@field ZeroDurabilityFillImage FSlateBrush
---@field LowDurabilityFillImage FSlateBrush
---@field MidDurabilityFillImage FSlateBrush
---@field FullDurabilityFillImage FSlateBrush
---@field DamageIcon UTexture2D
---@field PenetrationIcon UTexture2D
---@field HandlingIcon UTexture2D
---@field FireRateIcon UTexture2D
---@field DistanceIcon UTexture2D
---@field AccuracyIcon UTexture2D
---@field RadiationArmorIcon UTexture2D
---@field PhysicalArmorIcon UTexture2D
---@field PsyArmorIcon UTexture2D
---@field ChemicalArmorIcon UTexture2D
---@field ElectoArmorIcon UTexture2D
---@field FireArmorIcon UTexture2D
---@field GrenadeRangeIcom UTexture2D
---@field ItemStatValueArray TArray<UItemStatValue>
---@field EffectDurationIcon FSoftObjectPath
---@field IncludeArmorAdditionalEffects TArray<EEffectType>
local UItemInfo = {}



---@class UItemManager : UBaseManager
local UItemManager = {}


---@class UItemSelectorAxisSelectionIPU : UInputProcessingUnit
local UItemSelectorAxisSelectionIPU = {}


---@class UItemSelectorEquipSlot : UItemSelectorSlotBase
---@field SlotHighlight UOverlay
---@field SlotHighlightWhite UOverlay
---@field SlotSizeBox USizeBox
---@field InputActionName FString
---@field GamepadTriggerIndex int32
---@field HintSwitcher UHintInputController
---@field DpadNavigation EDpadNavigation
---@field bIsAvailable boolean
---@field IndexEquipSlot int32
---@field SlotSize FVector2D
---@field FlipHintLetter boolean
---@field HoldHintIconScale FVector2D
local UItemSelectorEquipSlot = {}



---@class UItemSelectorIPU : UBehaviorBasedIPU
local UItemSelectorIPU = {}


---@class UItemSelectorSlotBase : UWidgetBase
---@field WeaponIcon UImageWidget
---@field WeaponIconScale FVector2D
---@field AlternativeIconTexture UTexture2D
---@field DisplaySlotType EMainHandEquipmentType
local UItemSelectorSlotBase = {}



---@class UItemSelectorView : UViewBaseExtended
---@field bIsActive boolean
---@field AmmoIcon UImageWidget
---@field AmmoIconSwipe UImage
---@field FireTypeIcon UImage
---@field GrenadeIcon UImage
---@field GrenadeIconSwipe UImage
---@field SelectedGrenadeIcon UImage
---@field NavigateArrowLeftGrenade UImage
---@field NavigateArrowRightGrenade UImage
---@field NavigateArrowLeftAmmo UImage
---@field NavigateArrowRightAmmo UImage
---@field TextAmmoType UTextWidget
---@field AmmoTypeWidget UAmmoTypeWidget
---@field MidleSwitcher UWidgetSwitcher
---@field TextShutType UTextWidget
---@field ModeHintSwitcher UHintInputController
---@field AmmoHintSwitcher UHintInputController
---@field GrenadeHintSwitcher UHintInputController
---@field MiddleSelectorHeader UVerticalBox
---@field HintUseGuitar UWidget
---@field ItemSelectorChangeGrenade UWidgetAnimation
---@field ItemSelectorChangeAmmo UWidgetAnimation
---@field ItemSelectorChangeFireMode UWidgetAnimation
---@field ItemSelectorRestoreState UWidgetAnimation
---@field FastChangeSlotTime float
---@field FastChangeUpdateTime float
---@field InputDelayTime float
---@field ItemSelectorChangeAmmoSpeed float
---@field ItemSelectorChangeFireModeSpeed float
---@field ItemSelectorChangeGrenadeSpeed float
---@field MiddleSectorActiveStateOffset float
---@field MiddleSectorStaticStateOffset float
---@field DefoultSelectSlotType EMainHandEquipmentType
---@field bShouldIgnoreEmptySlot boolean
---@field FireTypesInfo TMap<EFireType, FFireTypeDisplayInfo>
---@field SideSlotDetector UItemSelectorEquipSlot
---@field SideSlotFlashlight UItemSelectorEquipSlot
---@field SideSlotNightVisionGoggles UItemSelectorEquipSlot
---@field SideSlotUnarmed UItemSelectorEquipSlot
---@field SideSlotLauncher UItemSelectorEquipSlot
---@field SelectedSlot UItemSelectorWeaponSlot
---@field HoveredSlot UItemSelectorWeaponSlot
---@field Slots TArray<UItemSelectorWeaponSlot>
---@field HoveredSlotAtStartOfAnimation UItemSelectorWeaponSlot
local UItemSelectorView = {}

function UItemSelectorView:UIItemSelectorUnarm() end
function UItemSelectorView:UIItemSelectorNightVisionGoggles() end
function UItemSelectorView:UIItemSelectorGrenadeLauncher() end
function UItemSelectorView:UIItemSelectorFlashlight() end
function UItemSelectorView:UIItemSelectorDetector() end
function UItemSelectorView:ToggleAttachMode() end
---@return TArray<UItemSelectorWeaponSlot>
function UItemSelectorView:GetSlotsBP() end
function UItemSelectorView:ChangeFireType() end
function UItemSelectorView:ChangeAmmoType() end


---@class UItemSelectorWeaponSlot : UItemSelectorSlotBase
---@field SelectedColor FLinearColor
---@field ActiveColor FLinearColor
---@field DefaultColor FLinearColor
---@field SlotRadiusSizeBox USizeBox
---@field RotationBox UWidget
---@field BackgroundImage UImage
---@field BackgroundTexture TSoftObjectPtr<UTexture2D>
---@field Particles UImage
---@field GrenadeText UTextWidget
---@field AmmoText UTextWidget
---@field AmmoTextMax UTextWidget
---@field UnderbarrelAmmoText UTextWidget
---@field UnderbarrelAmmoTextMax UTextWidget
---@field AmmoSlash UTextWidget
---@field UnderbarrelAmmoSlash UTextWidget
---@field IconContainer USizeBox
---@field AmmoContainer UWidgetSwitcher
---@field IndexSlot int32
---@field AlternativeDisplayText FText
---@field SlotAngle float
---@field Radius float
---@field ContainerSizeMax FVector2D
---@field ContainerSizeMin FVector2D
---@field ParticlesTranslation FVector2D
---@field HoverTextColor FLinearColor
---@field UnHoverTextColor FLinearColor
---@field bSlotBlocked boolean
---@field UnBlockColor FLinearColor
---@field BlockColor FLinearColor
---@field LayerSlotType ELayerSlotType
---@field FadeVCoordinate float
---@field HorizontalSpeed float
---@field SoftFadeDistance float
---@field UTiling float
---@field VerticalSpeed float
---@field VTiling float
---@field AttachesOverlay UOverlay
---@field AttachesImages TArray<UImageWidget>
---@field AttachImageWidgetClass TSubclassOf<UImageWidget>
---@field IconSettings FIconSettings
local UItemSelectorWeaponSlot = {}

---@return boolean
function UItemSelectorWeaponSlot:IsWeaponSlot() end
---@return boolean
function UItemSelectorWeaponSlot:IsGrenadeSlot() end
---@return boolean
function UItemSelectorWeaponSlot:IsBoltSlot() end
---@return boolean
function UItemSelectorWeaponSlot:IsAlternativeSlot() end
---@return TArray<UUserWidget>
function UItemSelectorWeaponSlot:GetHoveredWidgets() end
function UItemSelectorWeaponSlot:ConstructUpdateSlotScale() end


---@class UItemSlotBaseWidget : UWidgetBase
---@field SlotIndex int32
---@field ItemAndAttachesOverlay UOverlay
---@field AttachesOverlay UOverlay
---@field ItemImage UImageWidget
---@field SlotState UItemSlotState
---@field IconSettings FIconSettings
---@field AttachImageWidgetClass TSubclassOf<UImageWidget>
---@field AttachesImages TArray<UImageWidget>
local UItemSlotBaseWidget = {}



---@class UItemSlotState : UUserWidget
---@field Highlight UImage
---@field Background UImage
---@field Quest UImage
---@field AmmoTypeWidget UAmmoTypeWidget
---@field ItemTypeWidget UItemTypeWidget
---@field SizeReductionToFitEquipment FVector2D
---@field SizeReductionToFitGrid FVector2D
---@field DependencyColor FLinearColor
---@field HoveredColor FLinearColor
---@field DefaultColor FLinearColor
local UItemSlotState = {}



---@class UItemStatProgress : UUserWidget
---@field IconImage UImage
---@field Name UTextWidget
---@field ProgressBackground UProgressBar
---@field ProgressForeground UProgressBar
---@field DefaultColor FLinearColor
---@field BetterColor FLinearColor
---@field WorseColor FLinearColor
---@field BuffColor FLinearColor
local UItemStatProgress = {}



---@class UItemStatScale : UUserWidget
---@field StyleSettings UItemStatScaleStyleDataAsset
---@field EffectLevel EEffectLevel
---@field bNegative boolean
---@field DivisionsBar UProgressBar
---@field Arrow UImage
local UItemStatScale = {}



---@class UItemStatScaleStyleDataAsset : UDataAsset
---@field PositiveColorStyleID FName
---@field NegativeColorStyleID FName
---@field PositiveArrowTextures TMap<EEffectLevel, UTexture2D>
---@field NegativeArrowTextures TMap<EEffectLevel, UTexture2D>
local UItemStatScaleStyleDataAsset = {}



---@class UItemStatValue : UWidgetBase
---@field IconImage UImageWidget
---@field Name UTextWidget
---@field StatValueSwitcher UWidgetSwitcher
---@field TextValuePanel UPanelWidget
---@field StatScale UItemStatScale
---@field Value UTextWidget
---@field ValuePostFix UTextWidget
---@field PositiveEffectValueColor FLinearColor
---@field NegativeEffectValueColor FLinearColor
---@field NeutralEffectValueColor FLinearColor
local UItemStatValue = {}



---@class UItemTypeWidget : UWidgetBase
---@field ItemTypeIcon UImage
---@field TypeToTexture TMap<EItemType, UTexture2D>
---@field TypeToColor TMap<EItemType, FSlateColor>
---@field bApplyColor boolean
local UItemTypeWidget = {}



---@class UItemUsageComponent : UActorComponent
---@field ObjectsNeededToInteract TArray<FInteractObject>
local UItemUsageComponent = {}

---@param InteractionComponent UInteractionComponent
function UItemUsageComponent:RemoveAffectedComponent(InteractionComponent) end
---@return boolean
function UItemUsageComponent:HasRequiredItems() end
---@return boolean
function UItemUsageComponent:HasAnyItemNeededToInteract() end
function UItemUsageComponent:ConsumeRequiredItems() end
---@param InteractionComponent UInteractionComponent
function UItemUsageComponent:AddAffectedComponent(InteractionComponent) end


---@class UItemsStatsUpgrades : UWidgetBase
---@field DurabilityPercentText UTextWidget
---@field ItemStatProgress1 UItemStatProgress
---@field ItemStatProgress2 UItemStatProgress
---@field ItemStatProgress3 UItemStatProgress
---@field ItemStatProgress4 UItemStatProgress
---@field ItemStatProgress5 UItemStatProgress
---@field ItemStatProgress6 UItemStatProgress
---@field ItemStatProgress7 UItemStatProgress
---@field ItemStatProgress8 UItemStatProgress
---@field DurabilityOverlay UOverlay
---@field Durability UProgressBar
---@field RadiationMark UWidgetAnimation
---@field ItemStatValueBox UVerticalBox
---@field ItemInfoWidgetClass TSubclassOf<UItemStatValue>
---@field ColorDurabilityZero FLinearColor
---@field ColorDurabilityLow FLinearColor
---@field ColorDurabilityMid FLinearColor
---@field ColorDurabilityFull FLinearColor
---@field DamageIcon UTexture2D
---@field PenetrationIcon UTexture2D
---@field HandlingIcon UTexture2D
---@field FireRateIcon UTexture2D
---@field DistanceIcon UTexture2D
---@field AccuracyIcon UTexture2D
---@field RadiationArmorIcon UTexture2D
---@field PhysicalArmorIcon UTexture2D
---@field PsyArmorIcon UTexture2D
---@field ChemicalArmorIcon UTexture2D
---@field ElectoArmorIcon UTexture2D
---@field FireArmorIcon UTexture2D
---@field ItemStatValueArray TArray<UItemStatValue>
local UItemsStatsUpgrades = {}



---@class UJournalIPU : UInputProcessingUnit
local UJournalIPU = {}


---@class UJournalMouseIPU : UInputProcessingUnit
local UJournalMouseIPU = {}


---@class UJournalPage : UPDAPage
---@field CurrentQuestButton UPDAQuestButton
---@field DoneQuestButton UPDAQuestButton
---@field PDAQuestPanel UPDAQuestPanel
---@field QuestDetails UPDAQuestDetails
---@field SelectQuestHint UHintInputController
---@field HintSelectPanelLeft UHintInputController
---@field HintSelectPanelRight UHintInputController
---@field ButtonHintTransitionToMap UHintInputController
---@field MainQuestLocalizationSID FString
---@field SecondaryQuestLocalizationSID FString
---@field FinishQuestLocalizationSID FString
---@field FeilQuestLocalizationSID FString
---@field CanceledQuestLocalizationSID FString
---@field SelectInput FName
---@field MainQuestTint FLinearColor
---@field DefaultQuestTint FLinearColor
---@field QuestSlotListScrollTime float
---@field TabTransitionTime float
local UJournalPage = {}

function UJournalPage:UpdateStageOnDetailed() end
---@param bHovered boolean
---@param ElementType EDetailsElementType
function UJournalPage:UpdateHoverDetailsElement(bHovered, ElementType) end
---@param IndexUpdateButton int32
function UJournalPage:UpdateButton(IndexUpdateButton) end
function UJournalPage:UIPDATransitionToMarkerPosition() end
function UJournalPage:UIPDANavigationUp() end
function UJournalPage:UIPDANavigationSelectPanelRight() end
function UJournalPage:UIPDANavigationSelectPanelLeft() end
function UJournalPage:UIPDANavigationSelect() end
function UJournalPage:UIPDANavigationRightHint() end
function UJournalPage:UIPDANavigationRight() end
function UJournalPage:UIPDANavigationReleased() end
function UJournalPage:UIPDANavigationLeftHint() end
function UJournalPage:UIPDANavigationLeft() end
function UJournalPage:UIPDANavigationDown() end
function UJournalPage:StageSlotHover() end
---@param bEmpty boolean
function UJournalPage:ShowDetails(bEmpty) end
function UJournalPage:SelectedSlotWithMouse() end
---@param ButtonId FName
function UJournalPage:ClickButtonQuest(ButtonId) end


---@class UJournalTransitionActionBlockerCondition : UActionBlockerConditionBase
---@field bBlockJournalTransition boolean
local UJournalTransitionActionBlockerCondition = {}



---@class UKeyboardMappingSettingsPage : UInputMappingSettingsPage
local UKeyboardMappingSettingsPage = {}


---@class UKeyframedTransformComponent : UActorComponent
---@field Data FKeyframedTransformData
local UKeyframedTransformComponent = {}



---@class UKorshunovBossComponent : UActorComponent
---@field OnShieldStateChanged FKorshunovBossComponentOnShieldStateChanged
---@field OnCoilsStateChanged FKorshunovBossComponentOnCoilsStateChanged
---@field OnCoilsHeated FKorshunovBossComponentOnCoilsHeated
---@field OnCoilsDamageThresholdPassed FKorshunovBossComponentOnCoilsDamageThresholdPassed
---@field PhasesHealthThresholds TArray<float>
---@field MeleeResistancePercent float
---@field StunDuration float
---@field JumpZScale float
---@field CutsceneSequenceTrackingDistance float
---@field ShieldArmorHealth float
---@field CoilsHeatingThreshold float
---@field CoilsMaterialInstance UMaterialInstance
---@field TelekineticShieldType TSubclassOf<ATelekineticShield>
local UKorshunovBossComponent = {}



---@class ULadderAscendIPU : UInputProcessingUnit
local ULadderAscendIPU = {}


---@class ULadderComponent : UGuidActorComponent
---@field UnfoldingCurve UCurveFloat
---@field HorizontalOffsetCurve UCurveFloat
---@field OnUnfoldingStarted FLadderComponentOnUnfoldingStarted
---@field OnUnfoldingEnded FLadderComponentOnUnfoldingEnded
---@field OnHiddenStateChanged FLadderComponentOnHiddenStateChanged
---@field bTopBlocked boolean
---@field bLadderHidden boolean
local ULadderComponent = {}

---@param InbTopBlocked boolean
function ULadderComponent:SetTopBlocked(InbTopBlocked) end
---@param InbLadderHidden boolean
function ULadderComponent:SetLadderHidden(InbLadderHidden) end
---@return boolean
function ULadderComponent:IsTopBlocked() end
---@return boolean
function ULadderComponent:IsLadderHidden() end


---@class ULadderDescendIPU : UInputProcessingUnit
local ULadderDescendIPU = {}


---@class ULadderJumpIPU : UInputProcessingUnit
local ULadderJumpIPU = {}


---@class ULadderSprintIPU : UBehaviorBasedIPU
local ULadderSprintIPU = {}


---@class ULaserSightComponent : UActorComponent
---@field ParentMesh UMeshComponent
---@field LaserSightVFX UNiagaraComponent
local ULaserSightComponent = {}



---@class ULastSaveTimeMenuWidget : UWidgetBase
---@field Timestamp UTextWidget
---@field DateFormat FString
local ULastSaveTimeMenuWidget = {}



---@class ULayeredItemImage : UWidgetBase
---@field PathSuffix FString
---@field MainImage UImageWidget
---@field ImagesOverlay UOverlay
---@field LowPrioOverlay UOverlay
---@field HighPrioOverlay UOverlay
---@field IconsAsyncRequestCounter int32
---@field ImageWidgetClass TSubclassOf<UImageWidget>
---@field IconSettings FIconSettings
---@field ImageWidgets TArray<UImageWidget>
local ULayeredItemImage = {}



---@class ULeanLeftIPU : UBehaviorBasedIPU
local ULeanLeftIPU = {}


---@class ULeanRightIPU : UBehaviorBasedIPU
local ULeanRightIPU = {}


---@class ULever : ULockableComponent
---@field CurrentValue float
---@field bShouldConsumeItemOnOpen boolean
---@field bUseInBothSides boolean
---@field LeverHandleMesh UStaticMeshComponent
---@field LeverCurve UCurveFloat
---@field LeverCurveReverse UCurveFloat
local ULever = {}

function ULever:ChangeLeverPosition() end


---@class ULightBulbComponent : UGuidActorComponent
---@field bFlicker boolean
---@field bAutoLightOnNight boolean
local ULightBulbComponent = {}

---@param bInFlicker boolean
function ULightBulbComponent:SetFlicker(bInFlicker) end
---@param bInAutoLightOnNight boolean
function ULightBulbComponent:SetAutoLightOnNight(bInAutoLightOnNight) end
---@return boolean
function ULightBulbComponent:IsFlicker() end
---@return boolean
function ULightBulbComponent:IsAutoLightOnNight() end


---@class ULightningBallNavigationComponent : UActorComponent
local ULightningBallNavigationComponent = {}


---@class ULightsCache : UBaseManager
local ULightsCache = {}


---@class ULoadButtonStateDefiner : UMenuButtonStateDefiner
local ULoadButtonStateDefiner = {}


---@class ULoadLastSaveAction : UMenuButtonActionBase
local ULoadLastSaveAction = {}


---@class ULoadSaveAction : USaveLoadActionBase
local ULoadSaveAction = {}


---@class ULoadingScreenManager : UGameInstanceSubsystem
local ULoadingScreenManager = {}


---@class ULoadingScreenSettings : UDeveloperSettings
---@field LoadingScreenBehaviourSettings TMap<ELoadingDestination, FLoadingScreenBehaviourSettings>
---@field DescriptionFont FSlateFontInfo
---@field TitleFont FSlateFontInfo
---@field WaitForUserInputTextStyle FSlateFontInfo
---@field TextColor FLinearColor
---@field ContentPadding FMargin
---@field TipsTitleTextPadding FMargin
---@field TipsTextPadding FMargin
---@field LoadArrowPadding FMargin
---@field LoadArrowRotation FVector2D
---@field WaitForUserInputTextPos float
---@field TipsRangeMax int32
---@field WaitForUserInputText FText
---@field LoadingScreenIndicatorBackground FSoftObjectPath
---@field LoadingScreenIndicatorBackgroundSize FVector2D
---@field LoadingIndicatorArrow FSoftObjectPath
---@field ForegroundImage FSoftObjectPath
---@field SlidingDirtMaterialPtrTopLeft FSoftObjectPath
---@field SlidingDirtMaterialPtrTopRight FSoftObjectPath
---@field SlidingDirtMaterialPtrBottomLeft FSoftObjectPath
---@field SlidingDirtMaterialPtrBottomRight FSoftObjectPath
---@field InfoScreenSettingsData TArray<FInfoScreenSettings>
---@field SlidingDirtMaterialSize FVector2D
---@field TimeTillShowingLoadingIndicator float
---@field TimeTillHidingLoadingScreen float
---@field CustomTeleportMediaSource FSoftObjectPath
---@field IntroductionLogoMediaSource FSoftObjectPath
local ULoadingScreenSettings = {}



---@class ULoadingScreenWidget : UBaseLoadingScreenWidget
---@field PressAnyButtonText UTextBlock
---@field LoadingScreenImage UImage
---@field LoadingProgressBar UImage
---@field LoadingProgressArrow UImage
---@field Title UTextBlock
---@field Hint UTextBlock
---@field LoadingScreensSet TArray<TSoftObjectPtr<UTexture2D>>
---@field FadeTime float
---@field ArrowMinMaxAngles FVector2D
---@field ArrowInterpSpeed float
---@field PressAnyButtonL10n FString
local ULoadingScreenWidget = {}



---@class ULocalizationDatabase : UObject
local ULocalizationDatabase = {}


---@class ULocalizationWidget : UWidgetBase
---@field bEnableLocalization boolean
---@field LocalizationSID FString
---@field RichTextBlockObj URichTextBlock
---@field TextBlockObj UTextBlock
---@field CommonTextBlockObj UCommonTextBlock
local ULocalizationWidget = {}



---@class ULocalizedImage : UWidgetBase
---@field Image UImage
---@field LocalizedImages TMap<ELocalizationLanguage, TSoftObjectPtr<UTexture2D>>
---@field FallbackImage TSoftObjectPtr<UTexture2D>
local ULocalizedImage = {}

---@param SoftImage TSoftObjectPtr<UTexture2D>
function ULocalizedImage:ForceLoadImage(SoftImage) end


---@class ULockableComponent : USingleClickComponent
---@field DisplayAlternativeText FString
---@field LockStruct FLockStruct
---@field bLocked boolean
local ULockableComponent = {}



---@class ULookAtRestrictionsDataAsset : UDataAsset
---@field DefaultRestrictions FRestrictionsMap
---@field Restrictions TMap<ELookAtOwnerState, FRestrictionsMap>
local ULookAtRestrictionsDataAsset = {}



---@class ULookAtSourceComponent : UActorComponent
---@field Target AActor
---@field bIsEnabled boolean
---@field bUseDefaultSetting boolean
---@field LookAtAngleParams FLookAtAngleParams
local ULookAtSourceComponent = {}



---@class ULookAtTargetComponent : USceneComponent
local ULookAtTargetComponent = {}


---@class ULookUpIPU : UInertionIPU
local ULookUpIPU = {}


---@class UMainHandEquipBoltIPU : UMainHandEquipItemIPU
local UMainHandEquipBoltIPU = {}


---@class UMainHandEquipDetectorIPU : UInputProcessingUnit
local UMainHandEquipDetectorIPU = {}


---@class UMainHandEquipGrenadeIPU : UMainHandEquipItemIPU
local UMainHandEquipGrenadeIPU = {}


---@class UMainHandEquipItemIPU : UInputProcessingUnit
local UMainHandEquipItemIPU = {}


---@class UMainHandEquipKnifeIPU : UMainHandEquipItemIPU
local UMainHandEquipKnifeIPU = {}


---@class UMainHandEquipPistolIPU : UMainHandEquipItemIPU
local UMainHandEquipPistolIPU = {}


---@class UMainHandEquipPrimaryWeaponIPU : UMainHandEquipItemIPU
local UMainHandEquipPrimaryWeaponIPU = {}


---@class UMainHandEquipSecondaryWeaponIPU : UMainHandEquipItemIPU
local UMainHandEquipSecondaryWeaponIPU = {}


---@class UMainMenuModsLoadingIndicator : UUserWidget
---@field ShowAnim UWidgetAnimation
local UMainMenuModsLoadingIndicator = {}

function UMainMenuModsLoadingIndicator:CollapseWidget() end


---@class UMainMenuSubView : UMenuSubViewBase
---@field LoadingModsIndicator UMainMenuModsLoadingIndicator
---@field WhatsNewButton UUpdatePopupTab
---@field HintWhatsNew UHintInputController
local UMainMenuSubView = {}

---@param ID FName
function UMainMenuSubView:OnWhatsNewClicked(ID) end


---@class UMainMenuView : UMenuMainViewBase
---@field FirstTimeSettingsViewClass TSubclassOf<UMenuSubViewBase>
local UMainMenuView = {}



---@class UMapBorderIndicator : UWidgetBase
---@field BorderLeft UImage
---@field BorderRight UImage
---@field BorderBottom UImage
---@field BorderTop UImage
local UMapBorderIndicator = {}



---@class UMapLegend : UWidgetBase
---@field FadeInAnimation UWidgetAnimation
---@field NoteList UVerticalBox
---@field LegendScroll UScrollBox
---@field GamepadScrollSpeed float
---@field FadeInAnimationSpeed float
---@field FadeOutAnimationSpeed float
local UMapLegend = {}



---@class UMapLegendNote : UWidgetBase
---@field MarkerIcon UImage
---@field MarkerName UTextWidget
---@field SizeBox USizeBox
---@field MarkerType EMarkerType
---@field MarkerNameSID FString
---@field Height float
local UMapLegendNote = {}



---@class UMapMouseIPU : UInputProcessingUnit
local UMapMouseIPU = {}


---@class UMapSettingsAsset : UDataAsset
---@field HubFoldingZoomLevel int32
---@field bEnableReverseHoldMoveAxis boolean
---@field bEnableMouseMovement boolean
---@field bEnableHoldBorderMoving boolean
---@field DefaultMarkersOpacity float
---@field OverlappedMarkersOpacity float
---@field OverlappedMarkersRadius float
---@field GamepadCursorMovementSpeedMultiplier float
---@field GamepadMapMovementSpeedMultiplier float
---@field AttractionRadius float
---@field AutoNavigationRadius float
---@field AutoNavigationSpeed float
---@field AutoNavigationDeviationThreshold float
---@field AutoNavigationTypeThreshold float
---@field UnselectedAreaBrightness float
---@field TooltipPadding float
---@field ZoomLevelSettings TArray<FZoomLevelSettings>
---@field PlayerLandmarksLimitTotal int32
---@field CreateRadius float
---@field ZoomMarkerSettings TMap<EMarkerType, FZoomMarkerSettings>
---@field ZOrderMarkerSettings TMap<EMarkerType, int32>
---@field ZOrderForHoverMarker int32
---@field ZOrderForTrackedMarker int32
---@field DefaultMarkerZoomSettings FZoomMarkerSettings
---@field MapMarkerLocationUpdateTime float
---@field MapMarkerLocationUpdateRadius float
---@field MarkerUntrackDistance float
---@field MarkerNavigationDistanceThreshold float
local UMapSettingsAsset = {}



---@class UMapTransitionActionBlockerCondition : UActionBlockerConditionBase
---@field bBlockMapTransition boolean
local UMapTransitionActionBlockerCondition = {}



---@class UMarkerCompassWidget : UWidgetBase
---@field DistanceText UTextBlock
---@field IconImage UImage
---@field HeightArrow UImage
---@field DistanceContainer UWidget
---@field IconSizeBox USizeBox
---@field HideDelayForEnemyMarkers float
---@field HideEnemyTime float
---@field UpdateRate float
local UMarkerCompassWidget = {}



---@class UMarkerSettings : UDataAsset
---@field MarkerTypeSettings TMap<EMarkerType, FMarkerTypeSettings>
---@field CompassMarkerVisibilityCurve UCurveFloat
---@field MarkerSettingsDefaultObject FMarkerTypeSettings
local UMarkerSettings = {}



---@class UMaterialGroupEditor : UObject
---@field MaterialPath FSoftObjectPath
---@field VariationIndex int32
---@field bBlockedInVisualizer boolean
---@field Weight float
local UMaterialGroupEditor = {}



---@class UMenuButtonActionBase : UObject
---@field bShouldPlaySound boolean
---@field OnExecuteSound EUISound
local UMenuButtonActionBase = {}

function UMenuButtonActionBase:ExecuteButtonAction() end


---@class UMenuButtonBase : UWidgetBase
---@field ActionName UTextWidget
---@field Button UButton
---@field HoverAnimation UWidgetAnimation
---@field PressAnimation UWidgetAnimation
---@field HoverAnimationSpeedMultiplier float
---@field HideHoverAnimationSpeedMultiplier float
---@field PressButtonAnimationSpeed float
---@field IsNotActiveOpacity float
---@field bHandleClickOutsideOfSubView boolean
---@field ButtonAction UMenuButtonActionBase
---@field ButtonShortcuts TArray<FShortcutData>
---@field ButtonStateDefiners TArray<UMenuButtonStateDefiner>
local UMenuButtonBase = {}

function UMenuButtonBase:OnPressed() end
function UMenuButtonBase:OnMousePressed() end
function UMenuButtonBase:OnButtonHovered() end
function UMenuButtonBase:HandlePressAnimation() end
function UMenuButtonBase:ExecuteAction() end


---@class UMenuButtonModel : UDataAsset
---@field ButtonDataList TArray<FMenuButtonData>
---@field LegendButtonWidgetClass TSubclassOf<UHintControllerBase>
---@field SubViewShortcuts TArray<FShortcutData>
local UMenuButtonModel = {}



---@class UMenuButtonStateDefiner : UObject
---@field OverrideBlockedAction UMenuButtonActionBase
local UMenuButtonStateDefiner = {}



---@class UMenuLegendSubView : UChildViewBase
---@field LegendSubViewPanel UAsyncHintBox
---@field LegendButtonPanel UAsyncHintBox
---@field LegendSubViewWidgets TArray<UHintControllerBase>
---@field LegendButtonWidgets TArray<UHintControllerBase>
local UMenuLegendSubView = {}



---@class UMenuMainBackgroundVideo : UUserWidget
---@field BackgroundVideo TSoftObjectPtr<UMediaSource>
---@field BackgroundVideoSecond TSoftObjectPtr<UMediaSource>
---@field BinkMediaPlayer UBinkMediaPlayer
---@field BlackoutImage UImage
---@field Border UImage
---@field BorderImages TMap<EBorderType, TSoftObjectPtr<UTexture2D>>
local UMenuMainBackgroundVideo = {}

---@param VideoToPlay UMediaSource
function UMenuMainBackgroundVideo:PlayVideo(VideoToPlay) end


---@class UMenuMainViewBase : UViewBaseExtended
---@field SubMenuViewOverlay UOverlay
---@field LegendSubView UMenuLegendSubView
---@field MainMenuBackgroundVideo UMenuMainBackgroundVideo
---@field RootSubViewClass TSubclassOf<UMenuSubViewBase>
---@field FadeOutAnimation UWidgetAnimation
---@field FadeInAnimation UWidgetAnimation
---@field FadeInSpeedMultiplier float
---@field FadeOutSpeedMultiplier float
---@field EnhancedInputComponent UEnhancedInputComponent
local UMenuMainViewBase = {}

function UMenuMainViewBase:FadeOutStartedFunction() end
function UMenuMainViewBase:FadeOutFinishedFunction() end
function UMenuMainViewBase:FadeInStartedFunction() end
function UMenuMainViewBase:FadeInFinishedFunction() end


---@class UMenuNavigationPanelBase : UWidgetBase
---@field SlotContainer UPanelWidget
---@field HoveredButton USettingsNavigationButton
---@field Buttons TArray<USettingsNavigationButton>
local UMenuNavigationPanelBase = {}

---@param PressedButton USettingsNavigationButton
function UMenuNavigationPanelBase:OnButtonPressed(PressedButton) end


---@class UMenuSubViewBase : UChildViewBase
---@field PauseText UTextWidget
---@field ButtonPanel UPanelWidget
---@field MenuButtonModel UMenuButtonModel
---@field DefaultSelectedIndex int32
---@field TextProperties FTextProperties
---@field SpaceBetweenOptions float
---@field ScrollBox UScrollBox
---@field MenuOptionsHolder TArray<UMenuButtonBase>
---@field SelectedButton UMenuButtonBase
local UMenuSubViewBase = {}

---@param ButtonWidget UMenuButtonBase
function UMenuSubViewBase:SelectOptionWidget(ButtonWidget) end


---@class UMeshGeneratorBodyMeshEditor : UObject
---@field BlockingGroomSIDs TSet<FName>
---@field BodyMeshSID FString
---@field MeshPath FSoftObjectPath
---@field AnimPath FSoftObjectPath
---@field Weight float
---@field bIsSkeletal boolean
---@field BlockingSlots TArray<FName>
---@field BlockingAttaches TArray<FName>
---@field BlockingGroom TSet<FName>
---@field ItemPrototypeSID FString
---@field Type EBodyMeshType
---@field AdditionalMeshes TArray<UMeshGeneratorBodyMeshEditor>
---@field MeshGeneratorSID FString
---@field bUseCustomLODSync boolean
---@field LODSyncOption ESyncOption
---@field LODSyncMapping TArray<int32>
---@field HumanReadableName FName
---@field Materials TArray<UMeshGeneratorMaterialSlotEditor>
---@field Grooms TArray<UGroomCategoryEditor>
local UMeshGeneratorBodyMeshEditor = {}



---@class UMeshGeneratorBodySlotEditor : UObject
---@field SelectedIndex int32
---@field SlotName FName
---@field MeshArray TArray<UMeshGeneratorBodyMeshEditor>
local UMeshGeneratorBodySlotEditor = {}



---@class UMeshGeneratorEditor : UObject
---@field SID FName
---@field ParentMeshGeneratorSID FName
---@field ParentItemGeneratorSID FName
---@field GeneratorBodySlots TArray<UMeshGeneratorBodySlotEditor>
---@field Materials TArray<UMeshGeneratorMaterialSlotEditor>
---@field CustomData TArray<UCustomDataVariationsEditor>
---@field Grooms TArray<UGroomCategoryEditor>
local UMeshGeneratorEditor = {}



---@class UMeshGeneratorMaterialSlotEditor : UObject
---@field MaterialGroup FName
---@field MaterialGroupArray TArray<UMaterialGroupEditor>
---@field MaterialSlot int32
---@field CustomData TArray<UCustomDataVariationsEditor>
local UMeshGeneratorMaterialSlotEditor = {}



---@class UMeshSoundPlacerManager : UTickableWorldSubsystem
local UMeshSoundPlacerManager = {}


---@class UModBlueprintSupportSubsystem : UGameInstanceSubsystem
---@field ModWorldSubsystems TArray<TObjectPtr<UClass>>
local UModBlueprintSupportSubsystem = {}



---@class UModMultilineEditableTextBox : UModioCommonMultiLineEditableTextBox
local UModMultilineEditableTextBox = {}


---@class UModSubsystemBase : UGameInstanceSubsystem
local UModSubsystemBase = {}


---@class UModTagListHintController : UHintInputController
---@field VisibilityConditions TArray<FModEntryActionHintVisibilityCondition>
local UModTagListHintController = {}



---@class UModWorldSubsystem : UTickableWorldSubsystem
---@field bIsTickEnabled boolean
local UModWorldSubsystem = {}

---@param bIsEnabled boolean
function UModWorldSubsystem:SetTickEnabled(bIsEnabled) end
function UModWorldSubsystem:PreDeinitialize() end
---@param World UWorld
function UModWorldSubsystem:OnWorldBeginPlay(World) end
---@param DeltaTime float
function UModWorldSubsystem:OnTick(DeltaTime) end
function UModWorldSubsystem:OnInitialized() end
---@param Level ULevel
---@param Actors TArray<AActor>
function UModWorldSubsystem:LevelActorsPreInit(Level, Actors) end
---@return UWorld
function UModWorldSubsystem:GetTickableWorld() end


---@class UModelCharacterMovementComponent : UCharacterMovementComponent
local UModelCharacterMovementComponent = {}


---@class UModifiableRichText : UWidgetBase
---@field LineHeightPercentage float
---@field RichText URichTextWidget
---@field bEnableList boolean
---@field ClosureTag FString
---@field ListPointTag FString
---@field ListItemTag FString
---@field ListItemClosureTag FString
---@field ListNumericTag FString
---@field ClouseTags TArray<FString>
---@field OpenTags TArray<FString>
---@field BodyTag FString
---@field PointTag FString
---@field DoubleLineTags TArray<FDoubleLineSettings>
---@field bShoudUseDefaultStyle boolean
---@field DefaultStyleId FText
---@field bEnableDefaultText boolean
---@field DefaultText FText
---@field WrappingTextAt float
---@field TagSize int32
---@field WrappingTextAtEULA float
---@field bShoudLoadLocalization boolean
local UModifiableRichText = {}

---@return FText
function UModifiableRichText:GetNextLine() end


---@class UModioAuthView : UModioCommonAuthView
---@field LoadingWidget UUserWidget
local UModioAuthView = {}



---@class UModioCategorySelectionBox : UCommonUserWidget
---@field CheckboxPanel UScrollBox
---@field TagsClass TSubclassOf<UModioCategorySelectionBoxEntry>
---@field CheckboxList TArray<UModioCategorySelectionBoxEntry>
---@field FocusedTagWidget UModioCategorySelectionBoxEntry
local UModioCategorySelectionBox = {}



---@class UModioCategorySelectionBoxEntry : UModioCommonButtonBase
---@field DummyCheckbox UCheckBoxWidget
---@field CheckboxNameText UTextWidget
---@field HoverAnimation UWidgetAnimation
---@field PressAnimation UWidgetAnimation
---@field HoverAnimationSpeedMultiplier float
---@field HideHoverAnimationSpeedMultiplier float
---@field PressButtonAnimationSpeed float
---@field IsCheckedOnInit boolean
---@field CheckedStyleIdActive FName
---@field CheckedStyleIdInactive FName
---@field UncheckedStyleIdActive FName
---@field UncheckedStyleIdInactive FName
local UModioCategorySelectionBoxEntry = {}



---@class UModioCommonUIRetryingAsyncLoader : UModioCommonUIAsyncLoader
local UModioCommonUIRetryingAsyncLoader = {}


---@class UModioEmailAuthCodePopup : UModioCommonEmailAuthCodeViewBase
---@field ValidationText UTextWidget
---@field CodeInputTextBox UModioCommonCodeInputTextBox
local UModioEmailAuthCodePopup = {}



---@class UModioEmailAuthLoadingPopup : UModioCommonEmailAuthLoadingViewBase
local UModioEmailAuthLoadingPopup = {}


---@class UModioEmailAuthPopup : UModioCommonEmailAuthViewBase
---@field ValidationText UTextWidget
---@field EmailTextBox UModioCommonEditableTextBox
local UModioEmailAuthPopup = {}

---@param Text FText
---@param CommitMethod ETextCommit::Type
function UModioEmailAuthPopup:OnTextCommited(Text, CommitMethod) end
---@param Text FText
function UModioEmailAuthPopup:OnEditableTextBoxTextChanged(Text) end
---@return FString
function UModioEmailAuthPopup:GetEmail() end


---@class UModioFeaturedView : UModioCommonFeaturedView
---@field PageSize int64
local UModioFeaturedView = {}



---@class UModioFilterNavigationButton : UModioCommonButtonBase
---@field SelectLine UImage
---@field IconImage UImage
---@field TextWidget UTextWidget
---@field bEnableLocalisation boolean
---@field ButtonLocalizationSID FString
---@field DisplayText FText
---@field bEnableSelectAnimation boolean
---@field bEnableByDefault boolean
---@field ButtonIndex int32
---@field SetStyleIdHover FName
---@field SetStyleIdUnHover FName
---@field SetStyleIconTintHover FSlateColor
---@field SetStyleIconTintUnhover FSlateColor
---@field SetStyleIconImageTexture UTexture2D
local UModioFilterNavigationButton = {}



---@class UModioFilterNavigationPanel : UCommonUserWidget
---@field SlotContainer UPanelWidget
local UModioFilterNavigationPanel = {}

---@param ButtonIndex int32
function UModioFilterNavigationPanel:OnButtonClicked(ButtonIndex) end


---@class UModioFilteredModListView : UModioCommonFilteredModListView
---@field FirstFilterNavigationPanel UModioFirstFilterNavigationPanel
---@field SecondFilterNavigationPanel UModioSecondFilterNavigationPanel
---@field CategorySelectionBox UModioCategorySelectionBox
---@field PageInfo UModioModListPageInfo
---@field SearchField UModioSearchField
---@field ModioUISubsystem UModioUISubsystem
---@field ModioSubsystem UModioSubsystem
local UModioFilteredModListView = {}

---@param InNavigation EUINavigation
---@return UWidget
function UModioFilteredModListView:NavigateTagList(InNavigation) end
---@param InNavigation EUINavigation
---@return UWidget
function UModioFilteredModListView:FocusToTagList(InNavigation) end


---@class UModioFirstFilterNavigationPanel : UModioFilterNavigationPanel
local UModioFirstFilterNavigationPanel = {}


---@class UModioGenericModEntry : UModioCommonGenericModEntry
---@field Rating UModioGenericModEntryRating
---@field ModAuthorText UTextWidget
---@field ByText UTextWidget
---@field ModIncompatiblePanel UPanelWidget
---@field SelectedOperationTrackerImageColorTint FLinearColor
---@field UnselectedOperationTrackerImageColorTint FLinearColor
---@field UnselectedOperationTrackerImageColorTintError FLinearColor
---@field SelectedByTextColor FLinearColor
---@field UnselectedByTextColor FLinearColor
---@field SelectedModAuthorTextColor FLinearColor
---@field UnselectedModAuthorTextColor FLinearColor
---@field FocusAnimation UWidgetAnimation
local UModioGenericModEntry = {}



---@class UModioGenericModEntryOperationTrackerUserWidget : UModioCommonModOperationTrackerUserWidget
---@field DefaultImageColorTint FLinearColor
local UModioGenericModEntryOperationTrackerUserWidget = {}



---@class UModioGenericModEntryRating : UCommonUserWidget
---@field StarImagesPanel UPanelWidget
local UModioGenericModEntryRating = {}



---@class UModioLegendModel : UMenuButtonModel
---@field SubViewShortcutsRightSide TArray<FShortcutData>
local UModioLegendModel = {}



---@class UModioLegendSubView : UMenuLegendSubView
---@field LegendData FModioLegendData
local UModioLegendSubView = {}



---@class UModioModBrowser : UModioCommonModBrowser
---@field LegendSubView UModioLegendSubView
---@field ModGalleryFullscreenViewSlot UNamedSlot
---@field CurrentDialogsInfo TArray<UModioCommonDialogInfo>
local UModioModBrowser = {}



---@class UModioModBrowserDummySubView : UMenuSubViewBase
local UModioModBrowserDummySubView = {}


---@class UModioModBrowserLoadingIndicator : UUserWidget
---@field SpinnerImageSizeBox USizeBox
---@field SpinnerImage UImage
---@field size FVector2D
local UModioModBrowserLoadingIndicator = {}



---@class UModioModDetailsView : UModioCommonModDetailsView
---@field AuthorTextLabel UTextWidget
---@field AuthorText UTextWidget
---@field TagsTextLabel UTextWidget
---@field TagsText UTextWidget
---@field RatedTextLabel UTextWidget
---@field RatedText UTextWidget
---@field FileSizeTextLabel UTextWidget
---@field ReleaseDateTextLabel UTextWidget
---@field LastUpdatedTextLabel UTextWidget
---@field ErrorMessageText UTextWidget
---@field ErrorMessageHorizontalBox UHorizontalBox
---@field Rating UModioGenericModEntryRating
---@field LikeImage UImage
---@field DislikeImage UImage
---@field ModIncompatibleInfoPanel UPanelWidget
---@field ActiveRatingImageTint FSlateColor
---@field InactiveRatingImageTint FSlateColor
---@field OperationTrackerImageColorTintError FLinearColor
local UModioModDetailsView = {}



---@class UModioModGalleryArrow : UUserWidget
---@field Button UButton
---@field Icon UImage
---@field bPointingToRight boolean
local UModioModGalleryArrow = {}

function UModioModGalleryArrow:HandleButtonPressed() end


---@class UModioModGalleryFullscreenView : UModioModGalleryView
---@field PreviousButtonHint UHintInputController
---@field NextButtonHint UHintInputController
local UModioModGalleryFullscreenView = {}



---@class UModioModGalleryListEntry : UUserWidget
---@field GainFocusAnimation UWidgetAnimation
local UModioModGalleryListEntry = {}



---@class UModioModGalleryView : UModioCommonModGalleryView
---@field PreviousImageButton UModioModGalleryArrow
---@field NextImageButton UModioModGalleryArrow
local UModioModGalleryView = {}



---@class UModioModListPageInfo : UCommonUserWidget
---@field PageInfoIndex UTextWidget
---@field PageInfoNum UTextWidget
---@field HintNavigationLeft UHintInputController
---@field HintNavigationRight UHintInputController
local UModioModListPageInfo = {}



---@class UModioModOperationTrackerUserWidget : UModioCommonModOperationTrackerUserWidget
local UModioModOperationTrackerUserWidget = {}


---@class UModioModReportView : UModioCommonReportViewBase
---@field ModNameText UTextWidget
---@field ReportTextBox UModMultilineEditableTextBox
---@field ReportTextHintSwitcher UWidgetSwitcher
---@field ReportTextHint UTextWidget
---@field ReportTextLengthWidget UTextWidget
---@field ReportTextMaxLengthWidget UTextWidget
---@field CategoriesGrid UGridPanel
---@field BackHint UHintInputController
---@field SelectHint UHintInputController
---@field SubmitHint UHintInputController
local UModioModReportView = {}

---@param Text FText
---@param CommitMethod ETextCommit::Type
function UModioModReportView:HandleTextCommited(Text, CommitMethod) end
---@param Text FText
function UModioModReportView:HandleEditableTextBoxTextChanged(Text) end


---@class UModioModTileView : UModioCommonModTileView
local UModioModTileView = {}


---@class UModioNotificationWidget : UModioCommonNotificationWidget
---@field AppearAnim UWidgetAnimation
local UModioNotificationWidget = {}



---@class UModioRatingStar : UUserWidget
---@field Star UImage
---@field FilledHoveredColor FLinearColor
---@field EmptyHoveredColor FLinearColor
---@field FilledUnhoveredColor FLinearColor
---@field EmptyUnhoveredColor FLinearColor
---@field FullnessPercentMaterialParamName FName
---@field EmptyColorMaterialParamName FName
---@field FilledColorMaterialParamName FName
---@field bFilled boolean
---@field bHalf boolean
---@field bHovered boolean
local UModioRatingStar = {}



---@class UModioReportSelectionBoxEntry : UModioCategorySelectionBoxEntry
---@field ReportType EModioReportType
local UModioReportSelectionBoxEntry = {}



---@class UModioSearchField : UCommonUserWidget
---@field SearchHint UHintInputController
---@field SearchHintText UTextWidget
---@field SearchTextBox UModioCommonEditableTextBox
local UModioSearchField = {}

---@param Text FText
---@param CommitMethod ETextCommit::Type
function UModioSearchField:HandleOnTextCommitted(Text, CommitMethod) end
---@param Text FText
function UModioSearchField:HandleOnTextChanged(Text) end
---@return FString
function UModioSearchField:GetSearchKeywords() end


---@class UModioSearchResultsView : UModioCommonSearchResultsView
local UModioSearchResultsView = {}


---@class UModioSecondFilterNavigationPanel : UModioFilterNavigationPanel
local UModioSecondFilterNavigationPanel = {}


---@class UModioStalkerCommonModBrowserStyle : UModioCommonModBrowserStyle
---@field ModGalleryFullscreenViewClass TSubclassOf<UModioModGalleryView>
local UModioStalkerCommonModBrowserStyle = {}



---@class UModioTermsOfUsePopup : UModioCommonTermsOfUseViewBase
---@field PrivacyPolicyButton UHyperlinkButton
---@field TermsOfUseButton UHyperlinkButton
local UModioTermsOfUsePopup = {}



---@class UModioUserProfileBlock : UModioCommonButtonBase
---@field NickNameText UTextWidget
local UModioUserProfileBlock = {}



---@class UModioUserProfileWidget : UModioCommonUserProfileWidget
local UModioUserProfileWidget = {}


---@class UModsEnabledButtonStateDefiner : UMenuButtonStateDefiner
local UModsEnabledButtonStateDefiner = {}


---@class UMouthComponent : UActorComponent
---@field StaminaCurve TSoftObjectPtr<UCurveFloat>
---@field HealthCurve TSoftObjectPtr<UCurveFloat>
---@field StaminaIntensityCurve TSoftObjectPtr<UCurveFloat>
---@field HealthIntensityCurve TSoftObjectPtr<UCurveFloat>
---@field StaminaIntensityRTPC TSoftObjectPtr<UAkRtpc>
---@field HealthIntensityRTPC TSoftObjectPtr<UAkRtpc>
---@field BreathInhale TSoftObjectPtr<UAkAudioEvent>
---@field BreathExhale TSoftObjectPtr<UAkAudioEvent>
---@field DefaultBreathType TSoftObjectPtr<UAkSwitchValue>
---@field HoldBreathBreathType TSoftObjectPtr<UAkSwitchValue>
---@field OwnerObj APC
---@field StaminaRTPC UAkRtpc
---@field HealthRTPC UAkRtpc
---@field HealthBreathCurve UCurveFloat
---@field StaminaBreathCurve UCurveFloat
---@field HealthBreathIntensityCurve UCurveFloat
---@field StaminaBreathIntensityCurve UCurveFloat
---@field DefaultBreathTypeSwitch UAkSwitchValue
---@field HoldBreathBreathTypeSwitch UAkSwitchValue
local UMouthComponent = {}



---@class UMoveIPU : UInputProcessingUnit
local UMoveIPU = {}


---@class UMovementComponentExt : UActorComponent
---@field CameraShakeEffectPrototype FPrototypeSID
---@field MaxCameraShakeDistance float
---@field CameraShakeEffectCurve UCurveFloat
---@field WaterDepthRtpc UAkRtpc
---@field AkSoundEvent UAkAudioEvent
---@field AkSurfaceSwitch UAkSwitchValue
---@field AkMovementBehaviourSwitch UAkSwitchValue
local UMovementComponentExt = {}



---@class UMovementModeChangedEventData : UGSCGameplayEventData
---@field NewMovementBehavior EMovementBehaviour
---@field OldMovementBehavior EMovementBehaviour
local UMovementModeChangedEventData = {}



---@class UMultiClickComponent : UInteractionComponent
---@field InteractionData FMultiClickInteractionData
local UMultiClickComponent = {}



---@class UMultiClickIPU : UInputProcessingUnit
local UMultiClickIPU = {}


---@class UMusicManager : UBaseManager
---@field GameMusicEvent UAkAudioEvent
---@field MusicVolumeSlider UAkRtpc
local UMusicManager = {}



---@class UMutantAnimCollection : UObject
---@field Sleep UAnimMontage
---@field ReactionOnEmission UAnimSequenceBase
---@field PoseSearchLocomotionAnimCollectionData FPoseSearchLocomotionAnimCollectionData
---@field CombatIdles UIdlesAnimEntriesData
---@field RelaxIdles UIdlesAnimEntriesData
---@field DeathsAnimations UDeathsAnimCollection
---@field FootPlacementSettings UAnimCollectionFootPlacementSettings
---@field LegIKSettings UAnimCollectionLegIKSettings
---@field StrideWarpingSettings UAnimCollectionStrideWarpingSettings
---@field SlopeWarpingSettings UAnimCollectionSlopeWarpingSettings
local UMutantAnimCollection = {}



---@class UMutantLootInteractionComponent : USingleClickComponent
local UMutantLootInteractionComponent = {}

function UMutantLootInteractionComponent:PerformLootAction() end


---@class UNPCComponent : USingleClickComponent
local UNPCComponent = {}


---@class UNPCScheduleManager : UBaseTickableManager
local UNPCScheduleManager = {}


---@class UNPCWetnessComponent : UWetnessComponent
---@field Niagara UNiagaraComponent
---@field SplashSpawnRateParamName FName
---@field DropSpawnRateParamName FName
local UNPCWetnessComponent = {}



---@class UNameDistributor : UBaseManager
local UNameDistributor = {}


---@class UNavArea_Anomaly : UNavArea
local UNavArea_Anomaly = {}


---@class UNavArea_Dialog : UNavArea
local UNavArea_Dialog = {}


---@class UNavArea_Door : UNavArea
local UNavArea_Door = {}


---@class UNavArea_Interactive : UNavArea
local UNavArea_Interactive = {}


---@class UNavArea_Lair : UNavArea
local UNavArea_Lair = {}


---@class UNavArea_RadiationFields : UNavArea
local UNavArea_RadiationFields = {}


---@class UNavArea_SafeZone : UNavArea
local UNavArea_SafeZone = {}


---@class UNavArea_Scripted : UNavArea
local UNavArea_Scripted = {}


---@class UNavArea_Shelter : UNavArea
local UNavArea_Shelter = {}


---@class UNavDataLayerCombination : UObject
---@field bEnabled boolean
---@field Name FString
---@field ActiveDataLayersMask uint32
local UNavDataLayerCombination = {}



---@class UNavDataLayerCombinationSubsystem : UWorldSubsystem
local UNavDataLayerCombinationSubsystem = {}


---@class UNavModifiersManagementSubsystem : UWorldSubsystem
---@field VolumesMap TMap<FGuid, AGSCNavModifierVolume>
---@field CachedDefaultRecast ARecastNavMesh
local UNavModifiersManagementSubsystem = {}



---@class UNavigationPanel : UWidgetBase
---@field SlotContainer UPanelWidget
---@field bShouldEnableClick boolean
---@field bShouldSelectDefaultSlot boolean
---@field DefaultSlotIndex int32
---@field bShouldStopOthersInputs boolean
---@field bShouldBindClick boolean
---@field MoveToNextSlotAction FName
---@field MoveToPreviousSlotAction FName
---@field bIgnoreInputOnPause boolean
---@field bShouldLoopMove boolean
---@field PDASectionSwitch float
---@field OnChangeSelectSlot FNavigationPanelOnChangeSelectSlot
---@field OnSlotClicked FNavigationPanelOnSlotClicked
---@field PrevPageHint UHintInputController
---@field NextPageHint UHintInputController
local UNavigationPanel = {}

function UNavigationPanel:TransitToNextSlot() end
function UNavigationPanel:TransitSelectSlotRelease() end
function UNavigationPanel:TransitSelectSlotForward() end
function UNavigationPanel:TransitSelectSlotBack() end
function UNavigationPanel:MoveSelectSlotToPreviousSlot() end
function UNavigationPanel:MoveSelectSlotToNextSlot() end
---@param ButtonId FName
function UNavigationPanel:InitClickTransition(ButtonId) end
---@param InButtonId FName
function UNavigationPanel:ClickMenuButton(InButtonId) end


---@class UNeedsResolverFactory : UObject
local UNeedsResolverFactory = {}


---@class UNiagaraDataInterfaceAkEvent : UNiagaraDataInterface
---@field Event UAkAudioEvent
---@field StopEvent UAkAudioEvent
local UNiagaraDataInterfaceAkEvent = {}



---@class UNiagaraEyeAdaptationProvider : UNiagaraParameterProvider
local UNiagaraEyeAdaptationProvider = {}


---@class UNiagaraLightningDataProvider : UNiagaraParameterProvider
local UNiagaraLightningDataProvider = {}


---@class UNiagaraParameterProvider : UActorComponent
---@field ValueReceivers TSet<UNiagaraComponent>
local UNiagaraParameterProvider = {}



---@class UNiagaraPlayerLocationProvider : UNiagaraParameterProvider
local UNiagaraPlayerLocationProvider = {}


---@class UNiagaraRainIntensityProvider : UNiagaraParameterProvider
local UNiagaraRainIntensityProvider = {}


---@class UNiagaraRainbowOpacityProvider : UNiagaraParameterProvider
local UNiagaraRainbowOpacityProvider = {}


---@class UNiagaraStormSpawnRateProvider : UNiagaraParameterProvider
local UNiagaraStormSpawnRateProvider = {}


---@class UNiagaraSunRotationProvider : UNiagaraParameterProvider
local UNiagaraSunRotationProvider = {}


---@class UNiagaraTerrainOffsetProvider : UNiagaraParameterProvider
local UNiagaraTerrainOffsetProvider = {}


---@class UNiagaraTimeOfDayNormalizedProvider : UNiagaraParameterProvider
local UNiagaraTimeOfDayNormalizedProvider = {}


---@class UNiagaraWindIntensityDirectionProvider : UNiagaraParameterProvider
local UNiagaraWindIntensityDirectionProvider = {}


---@class UNicknameWidget : UWidgetBase
---@field Greeting UTextWidget
---@field Nickname UTextWidget
local UNicknameWidget = {}



---@class UNightVisionGogglesComponent : UElectricComponent
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
---@field PointLightComponents TArray<UPointLightComponent>
---@field MainMeshComponent UMeshComponent
local UNightVisionGogglesComponent = {}



---@class UNoteMouseIPU : UInputProcessingUnit
local UNoteMouseIPU = {}


---@class UNotesIPU : UInputProcessingUnit
local UNotesIPU = {}


---@class UNotesPage : UPDAPage
---@field NoteDetails UPDANotesDetails
---@field ButtonAll UPDANotesButton
---@field ButtonFlash UPDANotesButton
---@field ButtonNotes UPDANotesButton
---@field ButtonAudio UPDANotesButton
---@field NotePanel UPDANotePanel
---@field PlayAudioHint UHintInputController
---@field PlayAudioSID FString
---@field PauseAudioSID FString
---@field DefaultOpenFilter int32
---@field NotesSlotListScrollTime float
---@field BackgroundSettings TMap<ENoteType, FBackgroundSettings>
---@field ButtonActionLeft FName
---@field ButtonActionRight FName
---@field MappingContext EMappingContext
local UNotesPage = {}

function UNotesPage:UIPDANavigationUp() end
function UNotesPage:UIPDANavigationRight() end
function UNotesPage:UIPDANavigationPlayAudio() end
function UNotesPage:UIPDANavigatioNoteUp() end
function UNotesPage:UIPDANavigatioNoteDown() end
function UNotesPage:UIPDANavigationLeft() end
function UNotesPage:UIPDANavigationDown() end
function UNotesPage:UIPDANavigationButtonRelease() end
function UNotesPage:SlotTransitionUp() end
---@param bEmpty boolean
function UNotesPage:ShowDetails(bEmpty) end
---@param ButtonId FName
function UNotesPage:ClickButtonMenu(ButtonId) end


---@class UNotificationWidget : UWidgetBase
---@field MainQuest UQuestNotification
---@field SecondaryQuest UQuestNotification
---@field QuestVerticalBox UVerticalBox
---@field Settings UQuestNotificationDataAsset
---@field NumberOfTicksToWait int32
---@field NotificationWithActiveHint UQuestNotification
local UNotificationWidget = {}

function UNotificationWidget:TryShowNextNotify() end
function UNotificationWidget:HideNotificationSecondary() end
function UNotificationWidget:HideNotificationMain() end


---@class UObjPrototypeEditor : UObject
---@field SID FString
---@field ItemGeneratorSID FString
local UObjPrototypeEditor = {}



---@class UObjWaterContactController : UWaterContactController
local UObjWaterContactController = {}


---@class UOnAKEventFinished_Proxy : UObject
local UOnAKEventFinished_Proxy = {}

---@param CallbackType EAkCallbackType
---@param CallbackInfo UAkCallbackInfo
function UOnAKEventFinished_Proxy:OnSoundFinished(CallbackType, CallbackInfo) end


---@class UOpenModBrowser : UMenuButtonActionBase
---@field ModBrowserDummyViewWidget TSoftClassPtr<UMenuSubViewBase>
local UOpenModBrowser = {}



---@class UOpenSelectorIPU : UInputProcessingUnit
local UOpenSelectorIPU = {}


---@class UOpenSettingsSubTab : UMenuButtonActionBase
local UOpenSettingsSubTab = {}


---@class UOptimizationSettings : UObject
---@field bPSOWarmupStarted boolean
---@field bReloadPrototypes boolean
---@field SoftMemoryThresholdMultiplier float
---@field StreamingDistanceMemoryMultiplier float
---@field StreamingDistanceModifierLimit float
---@field MemoryThresholdMultiplierToStartHighPriorityNavMeshLoading float
---@field AfkTimeout float
---@field WaterTraceDistanceTolerance float
---@field bAlwaysCleanXSSViews boolean
local UOptimizationSettings = {}



---@class UOverwriteSaveGameAction : USaveLoadActionBase
local UOverwriteSaveGameAction = {}


---@class UPCSaveLoadIO : USaveLoadIO
local UPCSaveLoadIO = {}


---@class UPDAArrowButton : UButtonBase
---@field ArrowIcon UImage
---@field ClickAnimation UWidgetAnimation
---@field ClickAnimSpeed float
---@field bShoudBlockClickAnim boolean
---@field bShoudHoverOpacity boolean
---@field HoverOpacity float
---@field UnHoverOpacity float
local UPDAArrowButton = {}



---@class UPDAButtonBase : UButtonBase
---@field Background UImage
---@field BackgroundLeft UImage
---@field BackgroundRight UImage
---@field NewPoint UImage
---@field ButtonCollorEnable FLinearColor
---@field ButtonCollorDisable FLinearColor
---@field ButtonEnabledStyleId FName
---@field ButtonDisabledStyleId FName
---@field bShoudHoverOpacity boolean
---@field HoverOpacity float
---@field UnHoverOpacity float
---@field bShouldShowNewItem boolean
local UPDAButtonBase = {}



---@class UPDAMenuButton : UButtonBase
---@field SelectLine UImage
---@field Notify UImage
---@field ButtonText UTextWidget
---@field bEnableLocalisation boolean
---@field ButtonLocalizationSID FString
---@field DisplayText FText
---@field bEnableSelectAnimation boolean
---@field SetStyleIdHover FName
---@field SetStyleIdUnHover FName
local UPDAMenuButton = {}



---@class UPDANotePanel : UPDASlotPanelBase
---@field AbsentNoteSizeBox USizeBox
---@field SlotFilterSettings TMap<ENoteType, FSlotFilterSettings>
local UPDANotePanel = {}



---@class UPDANotesButton : UPDAButtonBase
---@field ButtonIcon UImageWidget
---@field FilterSettings FNoteFilterSettings
---@field ShouldEnableStailManager boolean
---@field Icon UTexture2D
local UPDANotesButton = {}



---@class UPDANotesDetails : UWidgetBase
---@field NotesBox UVerticalBox
---@field AudioContainer UOverlay
---@field BackgroundImage UImage
---@field ImageContainer UWidget
---@field TitleText UModifiableRichText
---@field HintText UModifiableRichText
---@field HeaderText UModifiableRichText
---@field BodyText UModifiableRichText
---@field FooterText UModifiableRichText
---@field TextScroll UScrollBox
---@field AudioPlayButton UCheckBoxWidget
---@field AudiologProgressBar UProgressBar
---@field AbsentNoteText UTextWidget
---@field TimerText UTextWidget
---@field ScrollMoveSpeed float
---@field ParentVerticalBox UCommonVerticalBox
---@field TopBorder UWidget
---@field BottomBorder UWidget
---@field RightBorder UWidget
---@field LeftBorder UWidget
local UPDANotesDetails = {}

---@param bStart boolean
function UPDANotesDetails:PlayNoteAudio(bStart) end


---@class UPDANotesSlot : UPDASlotBase
---@field OnNoteSlotClick FPDANotesSlotOnNoteSlotClick
local UPDANotesSlot = {}



---@class UPDAOpenIPU : UInputProcessingUnit
local UPDAOpenIPU = {}


---@class UPDAPage : UPageViewBase
---@field PDAPage EPDAPageType
local UPDAPage = {}



---@class UPDAQuestButton : UPDAButtonBase
---@field ButtonText UTextWidget
---@field bEnableLocalization boolean
---@field ButtonLocalizationSID FString
local UPDAQuestButton = {}



---@class UPDAQuestDescription : UChildViewBase
---@field DescriptionText UTextWidget
---@field DescriptionContainer UScrollBox
---@field bEnableHoverIllumination boolean
---@field ScrollSpeed float
---@field OnHoverDescription FPDAQuestDescriptionOnHoverDescription
local UPDAQuestDescription = {}



---@class UPDAQuestDetails : UChildViewBase
---@field OnHoveredDetailsElement FPDAQuestDetailsOnHoveredDetailsElement
---@field OnUpdateQuestList FPDAQuestDetailsOnUpdateQuestList
---@field OnStageSlotHover FPDAQuestDetailsOnStageSlotHover
---@field DefaultQuestIcon UTexture2D
---@field QuestStatusSettings TMap<EPDAQuestStatus, FPDAQuestDetailsStatusSettings>
---@field CurrentStatus EPDAQuestStatus
---@field QuestInfoBox UVerticalBox
---@field QuestLogo UImage
---@field TaskText UTextWidget
---@field DescriptionText UTextWidget
---@field RewardText UTextWidget
---@field RewardBlock UPanelWidget
---@field DescriptionQuest UPDAQuestDescription
---@field Header UPDAQuestSlotTextContent
---@field RewardContainer UHorizontalBox
---@field TaskContainer UPDAQuestTaskContainer
local UPDAQuestDetails = {}

function UPDAQuestDetails:UpdateStageSlotHover() end
---@param bIsStageHovered boolean
function UPDAQuestDetails:UpdateStageHover(bIsStageHovered) end
---@param bIsHovered boolean
function UPDAQuestDetails:UpdateDescriptionHover(bIsHovered) end
---@param InSlot UPDAQuestTaskSlot
function UPDAQuestDetails:StageClick(InSlot) end


---@class UPDAQuestPanel : UPDASlotPanelBase
---@field MainQuestBorder UPDATextBorder
---@field CancelledQuestBorder UPDATextBorder
---@field SecondaryQuestBorder UPDATextBorder
---@field MainQuestLocalizationSID FString
---@field SecondaryQuestLocalizationSID FString
---@field FinishQuestLocalizationSID FString
---@field FailedQuestLocalizationSID FString
---@field CanceledQuestLocalizationSID FString
---@field TopQuestBorderPadding FMargin
---@field QuestBorderPadding FMargin
---@field ScenarioManager UScenarioManager
---@field QuestSlots TArray<UPDAQuestSlot>
local UPDAQuestPanel = {}

---@param JournalQuestIndex int32
function UPDAQuestPanel:ChangeSelectedQuestSlot(JournalQuestIndex) end


---@class UPDAQuestRewardSlot : UWidgetBase
---@field RewardIcon UImage
---@field StyleSettings UPDAQuestRewardSlotStyleDataAsset
---@field RewardType EQuestRewardType
local UPDAQuestRewardSlot = {}



---@class UPDAQuestRewardSlotStyleDataAsset : UDataAsset
---@field RewardIcons TMap<EQuestRewardType, UTexture2D>
local UPDAQuestRewardSlotStyleDataAsset = {}



---@class UPDAQuestSlot : UPDASlotBase
---@field OnQuestSlotClick FPDAQuestSlotOnQuestSlotClick
---@field OnChangeSlotSelectQuest FPDAQuestSlotOnChangeSlotSelectQuest
---@field WidgetInactiveStateOpacity float
---@field StyleSettings UPDAQuestSlotStyleDataAsset
---@field bWidgetActive boolean
---@field CurrentStatus EPDAQuestStatus
---@field ContentPanel UPanelWidget
---@field TextContent UPDAQuestSlotTextContent
local UPDAQuestSlot = {}



---@class UPDAQuestSlotStyleDataAsset : UDataAsset
---@field QuestStatusSettings TMap<EPDAQuestStatus, FPDAQuestDetailsStatusSettings>
local UPDAQuestSlotStyleDataAsset = {}



---@class UPDAQuestSlotTextContent : UUserWidget
---@field AccentColor FLinearColor
---@field bOverrideNameAccentColor boolean
---@field NameAccentColorOverride FLinearColor
---@field NameText UTextWidget
---@field RegionText UTextWidget
---@field StatusSeparator UTextWidget
---@field StatusText UTextWidget
local UPDAQuestSlotTextContent = {}



---@class UPDAQuestTaskContainer : UHoverIndicator
---@field TaskScroll UScrollBox
---@field TaskListClass TSubclassOf<UPDAQuestTaskSlot>
---@field TaskListSize int32
---@field OnTrackingStage FPDAQuestTaskContainerOnTrackingStage
---@field OnUpdateStageHover FPDAQuestTaskContainerOnUpdateStageHover
local UPDAQuestTaskContainer = {}

---@param InSlot UPDAQuestTaskSlot
function UPDAQuestTaskContainer:StageClick(InSlot) end
---@param bHovered boolean
---@param IndexOnParent int32
function UPDAQuestTaskContainer:MouseHoverStage(bHovered, IndexOnParent) end


---@class UPDAQuestTaskSlot : UWidgetBase
---@field OnTrackingStage FPDAQuestTaskSlotOnTrackingStage
---@field OnHoverTaskSlot FPDAQuestTaskSlotOnHoverTaskSlot
---@field ClickAnimSpeed float
---@field StyleSettings UPDAQuestTaskSlotStyleDataAsset
---@field CurrentStatus EPDAQuestStatus
---@field bOptional boolean
---@field ImageTask UImage
---@field HoverImage UWidget
---@field Text URichTextBlock
---@field ClickAnim UWidgetAnimation
local UPDAQuestTaskSlot = {}



---@class UPDAQuestTaskSlotStyleDataAsset : UDataAsset
---@field StatusSettings TMap<EPDAQuestStatus, FPDAQuestTaskStatusSettings>
---@field OptionalTextSID FString
---@field OptionalTextStyleID FString
local UPDAQuestTaskSlotStyleDataAsset = {}



---@class UPDARadiationLine : UWidgetBase
---@field MoveAnim UWidgetAnimation
---@field bShoudBlockAnim boolean
---@field MoveAnimSpeed float
local UPDARadiationLine = {}



---@class UPDARegionPanel : UChildViewBase
---@field Progress UProgressBar
---@field RegionText UTextWidget
---@field ActiveColor FLinearColor
---@field DisactiveColor FLinearColor
local UPDARegionPanel = {}



---@class UPDASlotBase : UWidgetBase
---@field NameText UTextWidget
---@field SelectPoint UCheckBoxWidget
---@field HoverBeckground UImage
---@field SelectBeckground UImage
---@field NewPoint UImage
local UPDASlotBase = {}



---@class UPDASlotPanelBase : UChildViewBase
---@field SlotContainer UVerticalBox
---@field ArrowDown UPDAArrowButton
---@field ArrowTop UPDAArrowButton
---@field OnUpdateDetails FPDASlotPanelBaseOnUpdateDetails
---@field OnUpdateSelectButton FPDASlotPanelBaseOnUpdateSelectButton
---@field ArrowActionIdTop FName
---@field ArrowActionIdDown FName
local UPDASlotPanelBase = {}

function UPDASlotPanelBase:UpdateSelectSlotID() end
---@param QuestSlotIndex int32
function UPDASlotPanelBase:ClickSlot(QuestSlotIndex) end
---@param ButtonId FName
function UPDASlotPanelBase:ClickArrowButton(ButtonId) end


---@class UPDATextBorder : UWidgetBase
---@field LeftBorder UImage
---@field RightBorder UImage
---@field BorderText UTextWidget
local UPDATextBorder = {}



---@class UPDATimePanel : UChildViewBase
---@field HourText UTextWidget
---@field MinutesText UTextWidget
---@field PointAnim UWidgetAnimation
---@field PointAnimSpeed float
local UPDATimePanel = {}



---@class UPDATutorialButton : UPDAButtonBase
---@field ButtonIcon UImageWidget
---@field FilterSettings FTutorialFilterSettings
---@field ShouldEnableStailManager boolean
---@field Icon UTexture2D
local UPDATutorialButton = {}



---@class UPDATutorialDetails : UHoverIndicator
---@field TutorialBox UVerticalBox
---@field TitleText URichTextBlock
---@field RichText URichTextBlock
---@field TextScroll UScrollBox
---@field NumWidgetsInLine int32
---@field ScrollMoveSpeed float
---@field ParentVerticalBox UCommonVerticalBox
local UPDATutorialDetails = {}



---@class UPDATutorialPanel : UPDASlotPanelBase
---@field AbsentTutorialSizeBox USizeBox
---@field SlotFilterSettings TMap<EPDATutorialCategory, FSlotFilterSettings>
local UPDATutorialPanel = {}



---@class UPDATutorialSlot : UPDASlotBase
---@field NavigationIcon UTexture2D
---@field CombatIcon UTexture2D
---@field SurvivalIcon UTexture2D
---@field EarningsIcon UTexture2D
---@field NavigationSID FString
---@field CombatSID FString
---@field SurvivalSID FString
---@field EarningsSID FString
---@field OnTutorialSlotClick FPDATutorialSlotOnTutorialSlotClick
---@field CategoryText UTextWidget
local UPDATutorialSlot = {}



---@class UPDAUpgradePanel : UPDASlotPanelBase
---@field UpgradeMenu UUpgradeMenuWidget
---@field EquipedBorder UPDATextBorder
---@field UnEquipedBorder UPDATextBorder
---@field EquipedBorderLocalizationSID FString
---@field UnEquipedBorderLocalizationSID FString
---@field UpgradeColor FLinearColor
local UPDAUpgradePanel = {}



---@class UPDAUpgradesButton : UPDAButtonBase
---@field ButtonIcon UImageWidget
---@field FilterSettings FUpgradeFilterSettings
---@field ShouldEnableStailManager boolean
---@field Icon UTexture2D
local UPDAUpgradesButton = {}



---@class UPDAUpgradesSlot : UPDASlotBase
---@field OnUpgradeSlotClick FPDAUpgradesSlotOnUpgradeSlotClick
---@field RegionText UTextWidget
---@field ButtonIcon UImageWidget
---@field DefaultIconColor FLinearColor
---@field StyleIdWeapon FName
---@field StyleArmor FName
---@field StyleHelmet FName
---@field StyleDetector FName
local UPDAUpgradesSlot = {}



---@class UPDAView : UBookViewBase
---@field Container UOverlay
---@field TimeWidget UPDATimePanel
---@field RegionWidget UPDARegionPanel
---@field PDAFadeOutAnimation UWidgetAnimation
---@field PDAFadeInAnimation UWidgetAnimation
---@field bSholdShowInput boolean
---@field PDATurnOnTimer float
local UPDAView = {}

function UPDAView:UpdateQuestList() end
function UPDAView:HideAllWindows() end
function UPDAView:CloseUpdateView() end


---@class UPGOProfileButtonStateDefiner : UMenuButtonStateDefiner
local UPGOProfileButtonStateDefiner = {}


---@class UPageViewBase : UChildViewBase
---@field bShouldBindWidgetInputs boolean
---@field bShoudIgnoreInputOnPouse boolean
---@field bOpenedFromDialog boolean
local UPageViewBase = {}



---@class UParticleCallbackHandler : UObject
local UParticleCallbackHandler = {}


---@class UPassiveDetectorComponent : UActorComponent
---@field DangerLevelSoundParameter UAkRtpc
---@field DetectorWorkSFX UAkAudioEvent
---@field DetectorWorkCurve UCurveFloat
---@field SignalCurve UCurveFloat
local UPassiveDetectorComponent = {}



---@class UPathBuilderDrawComponent : UDebugDrawComponent
local UPathBuilderDrawComponent = {}


---@class UPauseGameView : UViewBaseExtended
---@field Continue UGameMenuElement
---@field Play UGameMenuElement
---@field Save UGameMenuElement
---@field Load UGameMenuElement
---@field Online UGameMenuElement
---@field Options UGameMenuElement
---@field Back UGameMenuElement
---@field Exit UGameMenuElement
---@field DebugMaps UGameMenuElement
---@field BackToMainMenu UGameMenuElement
---@field DebugBenchmark UGameMenuElement
---@field ButtonContainer UVerticalBox
---@field Background UImage
---@field MenuOverlay UOverlay
---@field OptionsOverlay UOverlay
local UPauseGameView = {}

function UPauseGameView:UpdateShowDebugMenu() end
function UPauseGameView:UIOptionsBack() end
function UPauseGameView:UIMenuMoveUp() end
function UPauseGameView:UIMenuMoveDown() end
function UPauseGameView:UIMenuConfirm() end
function UPauseGameView:UIMenuBack() end
function UPauseGameView:OnItemHovered() end
function UPauseGameView:OnClickSave() end
function UPauseGameView:OnClickPlay() end
function UPauseGameView:OnClickOptions() end
function UPauseGameView:OnClickOnline() end
function UPauseGameView:OnClickLoad() end
function UPauseGameView:OnClickExit() end
function UPauseGameView:OnClickDebugMaps() end
function UPauseGameView:OnClickContinue() end
function UPauseGameView:OnClickBackToMainMenu() end
function UPauseGameView:OnClickBack() end


---@class UPauseMenuIPU : UInputProcessingUnit
local UPauseMenuIPU = {}


---@class UPauseMenuMainView : UMenuMainViewBase
local UPauseMenuMainView = {}


---@class UPauseMenuSubView : UMenuSubViewBase
local UPauseMenuSubView = {}


---@class UPhotoModeSubsystem : UWorldSubsystem
local UPhotoModeSubsystem = {}


---@class UPhotomodeBlueprintFunctionLibrary : UBlueprintFunctionLibrary
local UPhotomodeBlueprintFunctionLibrary = {}

---@return boolean
function UPhotomodeBlueprintFunctionLibrary:IsScreenshotModeEnabledInGame() end


---@class UPhysicsInteractionComponent : UActorComponent
---@field bLoadDefaultPrototypeOnBeginPlay boolean
---@field bCreateWaterContactController boolean
---@field bCreateWetnessComponent boolean
---@field WaterContactNiagaraSystemVFX UFXSystemAsset
---@field PhysicsInteractionPrototypeSID FString
local UPhysicsInteractionComponent = {}



---@class UPhysicsSoundsComponent : UActorComponent
---@field PhysicsInteractionPrototypeSID FString
---@field PhysicalObjectAudioEventPlay UAkAudioEvent
---@field PhysicalObjectAudioEventStop UAkAudioEvent
---@field DraggingParameterSwitch UAkSwitchValue
---@field RollingParameterSwitch UAkSwitchValue
---@field HitParameterSwitch UAkSwitchValue
---@field PhysicalObjectContinuousSpeedRTPC UAkRtpc
---@field PhysicalObjectInstantSpeedRTPCParameter UAkRtpc
---@field WaterDepthRtpc UAkRtpc
---@field AkAudioComponent UAkComponent
local UPhysicsSoundsComponent = {}



---@class UPlatformButtonStateDefiner : UMenuButtonStateDefiner
---@field AvailablePlatforms uint32
local UPlatformButtonStateDefiner = {}



---@class UPlatformSwitcher : UPlatformSwitcherBase
---@field bChildrenView boolean
local UPlatformSwitcher = {}



---@class UPlatformSwitcherBase : UWidgetSwitcher
---@field bEnablePlatformAutoSwitch boolean
---@field PlatformSettings TMap<EGSCInputDeviceType, int32>
local UPlatformSwitcherBase = {}

function UPlatformSwitcherBase:UpdateWidget() end
function UPlatformSwitcherBase:InitWidget() end


---@class UPlayGoInProgressActionBlockerCondition : UActionBlockerConditionBase
local UPlayGoInProgressActionBlockerCondition = {}


---@class UPlayGoStatusSubsystem : UGameInstanceSubsystem
---@field PrologueQuestId FString
---@field EarlyGameThresholdSeconds float
local UPlayGoStatusSubsystem = {}



---@class UPlaySoundQuestNodeListener : UObject
local UPlaySoundQuestNodeListener = {}

---@param CallbackType EAkCallbackType
---@param CallbackInfo UAkCallbackInfo
function UPlaySoundQuestNodeListener:OnSoundFinished(CallbackType, CallbackInfo) end


---@class UPlayVideoWidget : UUserWidget
---@field SkipHint USkipHintView
---@field SubtitleTextWidget UTextWidget
---@field BinkMediaPlayer UBinkMediaPlayer
local UPlayVideoWidget = {}

function UPlayVideoWidget:SkipVideo() end
---@return float
function UPlayVideoWidget:GetVideoDuration() end
function UPlayVideoWidget:EndVideo() end


---@class UPlayerAnimCollection : UObject
---@field ExternalAnimations FPlayerExternalAnimations
---@field InternalAnimations FPlayerInternalAnimations
---@field ParentAnimCollection UPlayerAnimCollection
local UPlayerAnimCollection = {}



---@class UPlayerCodelockAnimCollection : UObject
---@field CodelockInteractionAnimations FCodelockInteractionAnimations
local UPlayerCodelockAnimCollection = {}



---@class UPlayerContextualActionExitIPU : UInputProcessingUnit
local UPlayerContextualActionExitIPU = {}


---@class UPlayerDefaultAnimCollection : UObject
---@field PlayerAnimCollection UPlayerAnimCollection
---@field PlayerAnimBlueprint UClass
---@field EquipUnequip FEquipUnequipAnimations
---@field InspectArtifactAnimations FInspectArtifactAnimations
---@field DragDeadBodyAnimations FDragDeadBodyAnimations
---@field DeathAnimations FPlayerDeathAnimations
---@field Dialog FPlayerDialogAnimations
---@field GuitarAnimations FPlayerGuitarAnimations
---@field DodgeAnimations TMap<EDodgeSide, UAnimMontage>
local UPlayerDefaultAnimCollection = {}



---@class UPlayerDetectorAnimCollection : UObject
---@field Equip FCharacterDetectorAnimations
---@field Unequip FCharacterDetectorAnimations
---@field UnequipFast FCharacterDetectorAnimations
---@field EquipBothHands FCharacterDetectorAnimations
---@field WeaponSwitch FCharacterDetectorWeaponAnimations
---@field WeaponShoot FCharacterDetectorWeaponAnimations
---@field WeaponAimShoot FCharacterDetectorWeaponAnimations
---@field FailedLanding FCharacterDetectorFailedLandingAnimations
---@field DetectorGadgetAnimations FPlayerGadgetAnimations
---@field DetectorBasePoses FPlayerDetectorBasePoses
---@field PlayerAnimBlueprint UClass
---@field AdditionalAnimationLayers TArray<UClass>
---@field SwingConfigContainer FAnimWeaponSwingContainer
---@field StopSwingInertia FWeaponInertiaContainer
---@field StopSprintInertia FWeaponInertiaContainer
local UPlayerDetectorAnimCollection = {}



---@class UPlayerEffectsSFXComponent : UActorComponent
---@field SFXStartEvent UAkAudioEvent
---@field SFXStopEvent UAkAudioEvent
---@field SFXParameter UAkRtpc
local UPlayerEffectsSFXComponent = {}



---@class UPlayerEnhancedInputComponent : UEnhancedInputComponent
local UPlayerEnhancedInputComponent = {}


---@class UPlayerFirearmAnimCollection : UObject
---@field InternalAnimations FPlayerFirearmInternalAnimations
---@field SocketLocations TMap<FName, FVector>
---@field IdleSwayCurve UCurveVector
---@field AimTransitionBlendTimeCurve UCurveFloat
---@field OffsetAimCameraAlphaCurve UCurveFloat
---@field WeaponAnimations FPlayerWeaponAnimations
---@field WeaponGadgetAnimations FPlayerGadgetAnimations
---@field AutoCoverAnimations FPlayerAutoCoverAnimations
local UPlayerFirearmAnimCollection = {}



---@class UPlayerGameHUDView : UViewBase
---@field ContextualLegend UHUDContextualLegend
---@field HUDSizer USizeBox
---@field QuickPanel UQuickPanel
---@field HudHintsPanel UHudHintsPanel
---@field SystemNotification USystemNotificationWidget
---@field Container UOverlay
---@field CompassWidget UCompassWidget
---@field AmmoPanel UAmmoWidget
---@field HoldBreathHint UHintInputController
---@field OffsetAimingHint UHintInputController
---@field TwoHintsSeparator UWidget
---@field Crosshair UCrosshairWidgetSwitcher
---@field StatPanel UStatPanel
---@field NotificationWidget UNotificationWidget
---@field ThreatIndicator UThreatIndicator
---@field BackgroundBlur UBackgroundBlur
---@field ItemSelectorHudModeAnimation UWidgetAnimation
---@field HideAnimation UWidgetAnimation
---@field ItemSelectorHUDMod float
---@field ItemSelectorHUDModSpeed float
---@field bShouldEnableAutoHideWidgets boolean
---@field TimeUpdateHideWidgetsMax float
---@field TimeUpdateHideWidgets float
---@field bShouldEnableTurnAngleAutoHide boolean
---@field PlayerTurnAngleMax float
---@field ApproximationPlayerLocation float
---@field AspectRatioHUDSizeMap TMap<EAspectRatio, FVector2D>
local UPlayerGameHUDView = {}



---@class UPlayerIdentityWidget : UWidgetBase
---@field IdentityContainer UHorizontalBox
---@field IdentityList TArray<TSoftClassPtr<UWidgetBase>>
local UPlayerIdentityWidget = {}



---@class UPlayerInteractionComponent : UActorComponent
local UPlayerInteractionComponent = {}


---@class UPlayerItemsSounds : UDataAsset
---@field SFXPickUp UAkAudioEvent
---@field SFXPickUpCloth UAkAudioEvent
---@field SFXDrop UAkAudioEvent
---@field SFXUse UAkAudioEvent
local UPlayerItemsSounds = {}



---@class UPlayerKnifeAnimCollection : UObject
---@field InternalAnimations FPlayerKnifeInternalAnimations
---@field WeaponAnimations FPlayerWeaponAnimations
local UPlayerKnifeAnimCollection = {}



---@class UPlayerLaserSightComponent : ULaserSightComponent
---@field PlayerOwner APC
local UPlayerLaserSightComponent = {}



---@class UPlayerModeManager : UBaseTickableManager
local UPlayerModeManager = {}


---@class UPlayerOpticScopeComponent : UActorComponent
local UPlayerOpticScopeComponent = {}


---@class UPlayerPictureWidget : UWidgetBase
---@field PlayerPicture UImage
local UPlayerPictureWidget = {}



---@class UPlayerStorageData : UWidgetBase
---@field ItemsAmount UTooltipRecord
---@field ItemsWeight UTooltipRecord
local UPlayerStorageData = {}



---@class UPlayerThrowableItemAnimCollection : UObject
---@field InternalAnimations FPlayerThrowableItemInternalAnimations
---@field WeaponAnimations FPlayerWeaponAnimations
local UPlayerThrowableItemAnimCollection = {}



---@class UPoppyFieldAnomalyBehaviorComponent : USceneComponent
---@field InsideSleepinessEffectSID FPrototypeSID
---@field OutsideSleepinessEffectSID FPrototypeSID
---@field CriticalSleepinessEffectSID FPrototypeSID
---@field FallAsleepEffectSIDs TArray<FEffectPrototypeSID>
---@field TeleportPoints TArray<FTransform>
---@field SleepThresholds TArray<float>
---@field SleepTeleportMinDistance float
---@field SleepDuration float
---@field FlowerSoundEvent TSoftObjectPtr<UAkAudioEvent>
---@field AmbientSoundEvent TSoftObjectPtr<UAkAudioEvent>
---@field SleepinessSoundEventPlay TSoftObjectPtr<UAkAudioEvent>
---@field SleepinessSoundEventStop TSoftObjectPtr<UAkAudioEvent>
---@field EyelidsMovementSoundEvent TSoftObjectPtr<UAkAudioEvent>
---@field BlinkSoundEvent TSoftObjectPtr<UAkAudioEvent>
---@field BlinkParameter TSoftObjectPtr<UAkRtpc>
---@field BlinkValueProviderSID FPrototypeSID
---@field Collisions TArray<UShapeComponent>
---@field FlowerParticleComponents TArray<UFlowerParticleComponent>
local UPoppyFieldAnomalyBehaviorComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UPoppyFieldAnomalyBehaviorComponent:OnEndOverlapFlowers(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UPoppyFieldAnomalyBehaviorComponent:OnEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UPoppyFieldAnomalyBehaviorComponent:OnBeginOverlapFlowers(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UPoppyFieldAnomalyBehaviorComponent:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UPopupBase : UWidgetBase
---@field Title UTextWidget
---@field Description UTextWidget
---@field ConfirmHint UHintInputController
---@field DiscardHint UHintInputController
---@field RetryHint UHintInputController
---@field CancelHint UHintInputController
---@field ConfirmHoldHint UHintInputController
---@field NoIconHorizontalBox UHorizontalBox
---@field IconHorizontalBox UHorizontalBox
---@field Icon UImage
---@field SaveIcon UTexture2D
---@field BrokenIcon UTexture2D
---@field AttentionIcon UTexture2D
---@field AnimShow UWidgetAnimation
local UPopupBase = {}



---@class UPopupHintImage : UWidgetBase
---@field HintImageKeyboard UHintImageKeyboard
---@field SizeBox USizeBox
---@field ScaleBox UScaleBox
local UPopupHintImage = {}



---@class UPopupManager : UBaseManager
---@field PopupView UPopupView
local UPopupManager = {}



---@class UPopupView : UViewBaseExtended
---@field PopupOverlay UOverlay
---@field PopupViewZOrder int32
---@field ActivePopupWidget UPopupBase
---@field BackgroundBlur UBackgroundBlur
---@field BlurShow UWidgetAnimation
---@field DefaultBlurStrength float
local UPopupView = {}

function UPopupView:Retry() end
function UPopupView:Prev() end
function UPopupView:Next() end
function UPopupView:NavigationUpPressed() end
function UPopupView:NavigationUp() end
function UPopupView:NavigationDownPressed() end
function UPopupView:NavigationDown() end
function UPopupView:Discard() end
function UPopupView:ConfirmHold() end
function UPopupView:Confirm() end
function UPopupView:Cancel() end


---@class UPoseSearchLocomotionCharacterMovementComponent : UModelCharacterMovementComponent
---@field NavWalkingSearchFloorScale float
---@field bNavWalkingOrientToSlope boolean
---@field NavWalkingOrientToSlopeInterpolationSpeed float
---@field FutureLocationPredictionTime float
---@field PredictionBlockedAngle float
local UPoseSearchLocomotionCharacterMovementComponent = {}



---@class UPoseSearchLocomotionDataObject : UObject
---@field Data FAnimPoseSearchLocomotionData
local UPoseSearchLocomotionDataObject = {}



---@class UPossessedObjectComponent : USphereComponent
---@field FloatingStartSound UAkAudioEvent
---@field FloatingStopSound UAkAudioEvent
---@field FloatingVFX UNiagaraSystem
---@field FloatingVFXComponent UNiagaraComponent
---@field SoundComponent UAkComponent
local UPossessedObjectComponent = {}

---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UPossessedObjectComponent:OnSphereComponentHit(HitComp, OtherActor, OtherComp, NormalImpulse, Hit) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UPossessedObjectComponent:OnSphereComponentBeginOverlap(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UPossessedObjectEventData : UGSCGameplayEventData
local UPossessedObjectEventData = {}

---@return AActor
function UPossessedObjectEventData:GetPossessedObject() end


---@class UPossessedShootingWeaponComponent : UActorComponent
---@field WeaponAkComponent UAkComponent
---@field FireAudioEvent UAkAudioEvent
---@field FireEventLoop UAkAudioEvent
---@field CurrentFireEvent UAkAudioEvent
---@field BreakAudioEvent UAkAudioEvent
---@field WeaponMuzzleComponent UFXSystemComponent
local UPossessedShootingWeaponComponent = {}



---@class UPostProcessPreset : UDataAsset
---@field PostProcessSettings FPostProcessSettings
local UPostProcessPreset = {}



---@class UPostUpdateTickAggregationManager : UBaseTickableManager
---@field ProjectilesCollection FProjectileCollection
---@field PhysicalManagerCollection FPhysicalManagerCollection
---@field PhysicsObjectCollection FPhysicsObjectCollection
---@field LODSyncComponentCollection FLODSyncComponentCollection
---@field WaterControllerCollection FObjWaterControllerCollection
local UPostUpdateTickAggregationManager = {}



---@class UPreBlendCinematicComponent : UObject
local UPreBlendCinematicComponent = {}


---@class UPresentationSettings : UDeveloperSettings
---@field bEnablePresentationSubsystem boolean
---@field DemoPopupTitleSID FString
---@field DemoPopupDescriptionSID FString
---@field QuestNodeToStopPresentation FString
---@field DemoPopupContinuePlaySID FString
---@field DemoPopupToMainMenuSID FString
---@field PresentationTimer int32
---@field bShowEndPopup boolean
local UPresentationSettings = {}



---@class UPresentationSubsystem : UGameInstanceSubsystem
local UPresentationSubsystem = {}

function UPresentationSubsystem:ResumeGame() end
function UPresentationSubsystem:GoToMainMenu() end


---@class UPressBuildControlSettingsWidget : UWidgetBase
---@field Gamepad ULocalizedImage
---@field Keyboard ULocalizedImage
local UPressBuildControlSettingsWidget = {}



---@class UPressSelectedOptionAction : UMenuButtonActionBase
local UPressSelectedOptionAction = {}


---@class UProgressBarWidget : UAbstractProgressBar
---@field ProgressBarObj UProgressBar
local UProgressBarWidget = {}



---@class UProjectileImpactEffectSubsystem : UWorldSubsystem
---@field ImpactRequests TMap<uint32, FProjectileImpactFXData>
local UProjectileImpactEffectSubsystem = {}



---@class UProjectileSpawnSettings : UDeveloperSettings
---@field ProjectileAmountRefreshRate float
---@field ProjectileActiveKeepTime float
---@field ProjectileDesiredPreHeatTime float
---@field ProjectileExtraPreHeatShots int32
---@field ProjectileSpawnPerFrameAmount int32
---@field MaxDestroyedProjectilesPerFrame int32
local UProjectileSpawnSettings = {}



---@class UProjectileSubsystem : UBaseTickableManager
local UProjectileSubsystem = {}


---@class UPrototypeBasedForceFeedbackProcessor : UForceFeedbackProcessorBase
---@field DefaultFeedback UForceFeedbackEffect
---@field PrototypeToFeedback TMap<FString, UForceFeedbackEffect>
---@field PrototypeToRumble TMap<FString, ERumbleType>
local UPrototypeBasedForceFeedbackProcessor = {}



---@class UProximityGroupManager : UBaseTickableManager
local UProximityGroupManager = {}


---@class UPsyNPCComponent : UActorComponent
---@field DissolveCurve UCurveFloat
---@field GroomCurve UCurveFloat
---@field DissolveTime float
local UPsyNPCComponent = {}



---@class UPsyNoiseSFXComponent : UPlayerEffectsSFXComponent
local UPsyNoiseSFXComponent = {}


---@class UPsyPhantomComponent : UActorComponent
---@field SecondsToAppear float
---@field SecondsToDisappear float
---@field PhatnomHeightChangeSpeedPerSecond float
---@field MaterialAlphaParameterName FName
---@field VFXAlphaParameterName FName
---@field ParticleOnSpawn UFXSystemAsset
---@field PhantomHitVFX UFXSystemAsset
---@field ParticleOnDeath UFXSystemAsset
---@field TrailsParticleScale FVector
---@field RTPC UAkRtpc
---@field SpawnSound UAkAudioEvent
---@field DeathSound UAkAudioEvent
---@field bUseDissolveMaterials boolean
---@field SpawnTimestamp float
---@field DeathTimestamp float
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
local UPsyPhantomComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UPsyPhantomComponent:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UPsyPhantomManager : UBaseTickableManager
local UPsyPhantomManager = {}


---@class UPsyVolumeComponent : UBaseVolumeComponent
---@field PsyEffectPrototypeSIDs TArray<FString>
---@field EndOverlapPsyEffectPrototypeSIDs TArray<FString>
---@field PsyTimerMin float
---@field PsyTimerMax float
local UPsyVolumeComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UPsyVolumeComponent:OnEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UPsyVolumeComponent:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UPushOptionButton : UMenuButtonBase
local UPushOptionButton = {}


---@class UQuestMenuWidget : UWidgetBase
---@field QuestIcon UTaskIcon
---@field QuestName UTextWidget
---@field QuestLocation UTextWidget
---@field QuestTaskList UVerticalBox
---@field TaskMenuWidgetClass TSubclassOf<UTaskMenuWidget>
---@field TaskSlotPadding FMargin
---@field MainQuestStyleID FName
---@field SecondaryQuestStyleID FName
---@field TaskCap int32
local UQuestMenuWidget = {}



---@class UQuestNotification : UWidgetBase
---@field StyleSettings UQuestNotificationStyleDataAsset
---@field JournalState EQuestState
---@field HintState EQuestHintState
---@field bQuestTracked boolean
---@field bMainQuest boolean
---@field TaskWidgets TArray<UQuestTaskNotification>
---@field Body UPanelWidget
---@field QuestTitle UTextWidget
---@field QuestImage UImage
---@field QuestNotificationHeader UWorldMapTooltipHeader
---@field LabelOverlay UPanelWidget
---@field LabelBackground UImage
---@field ContentLine UImage
---@field LabelText UTextWidget
---@field Hint UHintInputController
---@field QuestVerticalBox UVerticalBox
---@field ShowAnimation UWidgetAnimation
---@field HideAnimation UWidgetAnimation
---@field LastUpdatedTask UQuestTaskNotification
local UQuestNotification = {}

function UQuestNotification:HideTasks() end


---@class UQuestNotificationDataAsset : UDataAsset
---@field bEnableDelayBetweenNotifications boolean
---@field TimerRate float
---@field DelayAfterShow float
local UQuestNotificationDataAsset = {}



---@class UQuestNotificationStyleDataAsset : UDataAsset
---@field MainQuestNameColorStyleID FName
---@field SecondaryQuestNameColorStyleID FName
---@field MainQuestHeaderStyleSettings TMap<EQuestState, FQuestNotificationHeaderStyleSettings>
---@field SecondaryQuestHeaderStyleSettings TMap<EQuestState, FQuestNotificationHeaderStyleSettings>
---@field TrackQuestIcon UTexture2D
---@field UntrackQuestIcon UTexture2D
---@field MaxTaskNumber int32
---@field TaskClass TSubclassOf<UUserWidget>
---@field TaskPadding FMargin
---@field HintLocalization TMap<EQuestHintState, FString>
---@field MainQuestSound TMap<EQuestState, EUISound>
---@field SecondaryQuestSound TMap<EQuestState, EUISound>
---@field bEnableDelayForHide boolean
---@field QuestNotificationLifeTime float
---@field QuestNotificationLifeTimeTimerRate float
---@field RemainingTimeAfterHintAction float
local UQuestNotificationStyleDataAsset = {}



---@class UQuestTaskNotification : UWidgetBase
---@field StyleSettings UQuestTaskNotificationStyleDataAsset
---@field CurrentStatus EPDAQuestStatus
---@field bOptional boolean
---@field TextWidget URichTextWidget
---@field TrackingStage UQuestTaskNotificationIcon
---@field CanceledStage UQuestTaskNotificationIcon
---@field FailedStage UQuestTaskNotificationIcon
---@field FinishedStage UQuestTaskNotificationIcon
---@field UntrackingStage UQuestTaskNotificationIcon
---@field AppearAnim UWidgetAnimation
---@field FailAnim UWidgetAnimation
---@field FinishedAnim UWidgetAnimation
---@field CancelAnim UWidgetAnimation
---@field LastAnim UWidgetAnimation
---@field QuestStateSwitcher UWidgetSwitcher
local UQuestTaskNotification = {}



---@class UQuestTaskNotificationIcon : UUserWidget
---@field Image UTexture2D
---@field ImageSize FVector2D
---@field ColorStyleID FName
---@field Icon UImage
local UQuestTaskNotificationIcon = {}



---@class UQuestTaskNotificationStyleDataAsset : UDataAsset
---@field RegularTextStyleID FString
---@field FadedTextStyleID FString
---@field OptionalTextStyleID FString
---@field OptionalTextSID FString
---@field StageSound TMap<EPDAQuestStatus, EUISound>
local UQuestTaskNotificationStyleDataAsset = {}



---@class UQuickLoadIPU : UInputProcessingUnit
local UQuickLoadIPU = {}


---@class UQuickPanel : UChildViewBase
---@field SlotADefaultEquipment ESortGroup
---@field SlotBDefaultEquipment ESortGroup
---@field SlotCDefaultEquipment ESortGroup
---@field SlotDDefaultEquipment ESortGroup
---@field bAnimate boolean
---@field UpdateShouldUseAnimationTime float
---@field AnimPanelHide UWidgetAnimation
---@field AnimPanelShow UWidgetAnimation
---@field NavBorder UBorder
---@field NavBorderSlot UCanvasPanelSlot
---@field DefaultNavBorderColor FLinearColor
---@field DraggingNavBorderColor FLinearColor
---@field LeftHint UHintInputController
---@field RightHint UHintInputController
---@field QuickSlot1 UQuickSlot
---@field QuickSlot3 UQuickSlot
---@field QuickSlot2 UQuickSlot
---@field QuickSlot4 UQuickSlot
---@field QuickSlots TArray<UQuickSlot>
---@field HoldProgressLeft UImage
---@field HoldProgressRight UImage
---@field HoldInactiveOpacity float
---@field HoldActiveOpacity float
---@field HidePanelDelay float
---@field QuickSlotsFadeIn float
---@field QuickSlotsFadeOut float
---@field bInventoryQuickPanel boolean
---@field CurrSelectedSlot UQuickSlot
---@field InventoryNew UInventoryNew
local UQuickPanel = {}

function UQuickPanel:UpdateShouldUseAnimation() end
---@param InSortGroup ESortGroup
---@return boolean
function UQuickPanel:PlayShouldUseAnimationIfRequired(InSortGroup) end
---@param HoveredWidget UQuickSlot
function UQuickPanel:OnQuickSlotMouseLeave(HoveredWidget) end
---@param ItemWidget UQuickSlot
function UQuickPanel:OnQuickSlotMouseEnter(ItemWidget) end


---@class UQuickSaveGameAction : USaveLoadActionBase
local UQuickSaveGameAction = {}


---@class UQuickSaveIPU : UInputProcessingUnit
local UQuickSaveIPU = {}


---@class UQuickSaveManager : UBaseManager
local UQuickSaveManager = {}


---@class UQuickSlot : UWidgetBase
---@field Icon UImageWidget
---@field Background UImage
---@field DefaultImage UImage
---@field UseFrame UImage
---@field ShouldUseFrame UImage
---@field HighlightImage UImage
---@field ItemCountText UTextWidget
---@field IconSizeBox USizeBox
---@field InventoryHighlightImage UImage
---@field ClickAnimation UWidgetAnimation
---@field ShouldUseAnimation UWidgetAnimation
---@field SlotIndex int32
---@field BackgroundTexture UTexture2D
---@field UseFrameTexture UTexture2D
---@field ShouldUseFrameTexture UTexture2D
---@field DefaultIconTexture UTexture2D
---@field InventoryHighlightTexture UTexture2D
---@field QuickSlotSize float
---@field IconSize float
---@field bEnableHint boolean
---@field bEnableCountText boolean
---@field bEnableTransparency boolean
---@field bEnableClickAnimation boolean
---@field bEnableShouldUseAnimation boolean
---@field IconOnTextureParam FName
---@field LowTransparency float
---@field HighTransparency float
---@field ClickAnimationSpeed float
---@field ShouldUseAnimationSpeed float
---@field ShouldUseAnimationDuration int32
---@field ShouldUseAnimationCooldown int32
---@field SortGroupToIconMap TMap<ESortGroup, TSoftObjectPtr<UTexture2D>>
---@field SlotTypeIcon UImage
local UQuickSlot = {}

function UQuickSlot:StopCooldown() end


---@class UQuickSlot1IPU : UQuickSlotBaseIPU
local UQuickSlot1IPU = {}


---@class UQuickSlot2IPU : UQuickSlotBaseIPU
local UQuickSlot2IPU = {}


---@class UQuickSlot3IPU : UQuickSlotBaseIPU
local UQuickSlot3IPU = {}


---@class UQuickSlot4IPU : UQuickSlotBaseIPU
local UQuickSlot4IPU = {}


---@class UQuickSlotBaseIPU : UInputProcessingUnit
local UQuickSlotBaseIPU = {}


---@class UQuitAction : UMenuButtonActionBase
local UQuitAction = {}


---@class UQuitToMainMenuAction : UMenuButtonActionBase
---@field bForceQuit boolean
local UQuitToMainMenuAction = {}



---@class URazerChromaCinematicEventTracker : UObject
---@field Subsystem URazerChromaSubsystem
local URazerChromaCinematicEventTracker = {}



---@class URazerChromaEventTracker : UObject
---@field Subsystem URazerChromaSubsystem
local URazerChromaEventTracker = {}



---@class URazerChromaSettings : UDeveloperSettings
---@field ContentBasePath FString
---@field AnimationSuffix FString
---@field SupportedDevices TArray<FString>
---@field OneTimeEventLifetime float
---@field KillEvent FRazerChromaEvent
---@field UseConsumableEvent FRazerChromaEvent
---@field AchievementUnlockedEvent FRazerChromaEvent
---@field QuestNotificationEvent FRazerChromaEvent
---@field SystemNotificationEvent FRazerChromaEvent
---@field PlayerNoticedEvent FRazerChromaEvent
---@field SaveGameEvent FRazerChromaEvent
---@field ArtifactPickupEvent FRazerChromaEvent
---@field ArtifactVisualizedEvent FRazerChromaEvent
---@field DetectorPingEvent FRazerChromaEvent
---@field ChangeFireTypeEvent FRazerChromaEvent
---@field ChangeAmmoTypeEvent FRazerChromaEvent
---@field ChangeWeaponEvent FRazerChromaEvent
---@field ToggleUnderbarrelEvent FRazerChromaEvent
---@field LooseShootEvent FRazerChromaEvent
---@field DamageEvents TArray<FRazerChromaDamageSettings>
---@field ActivePDAEvent FRazerChromaEvent
---@field ActiveInventoryEvent FRazerChromaEvent
---@field ActiveLootingEvent FRazerChromaEvent
---@field ActiveItemSelectorEvent FRazerChromaEvent
---@field ActiveAttachSelectorEvent FRazerChromaEvent
---@field ActivePauseEvent FRazerChromaEvent
---@field ActiveCreditsEvent FRazerChromaEvent
---@field ActiveSleepEvent FRazerChromaEvent
---@field OverweightEvent FRazerChromaEvent
---@field SprintEvent FRazerChromaEvent
---@field DeathEvent FRazerChromaEvent
---@field IdleEvent FRazerChromaEvent
---@field ReloadEvent FRazerChromaEvent
---@field NoAmmoEvent FRazerChromaEvent
---@field WeaponJammedEvent FRazerChromaEvent
---@field AudioLogEvent FRazerChromaEvent
---@field HoldBreathEvent FRazerChromaEvent
---@field VitalsEvents TMap<EVitalType, FRazerChromaVitalsSettings>
---@field CinematicEvents TMap<FGameplayTag, FRazerChromaEvent>
local URazerChromaSettings = {}



---@class URazerChromaSubsystem : UGameInstanceSubsystem
---@field EventTracker URazerChromaEventTracker
---@field CinematicEventTracker URazerChromaCinematicEventTracker
local URazerChromaSubsystem = {}



---@class URazerSensaEventTracker : UObject
---@field Subsystem URazerSensaSubsystem
local URazerSensaEventTracker = {}



---@class URazerSensaSettings : UDeveloperSettings
---@field PlayerKnockdownEvent FRazerSensaEvent
---@field ObjectHitEvent FRazerSensaEvent
---@field HeadDamageEvent FRazerSensaEvent
---@field ControllerPsyPunchEvent FRazerSensaEvent
---@field FaustPsyPunchEvent FRazerSensaEvent
---@field DamageEvents TArray<FRazerSensaDamageSettings>
---@field StunEvent FRazerSensaEvent
---@field PsyFieldEvent FRazerSensaEvent
local URazerSensaSettings = {}



---@class URazerSensaSubsystem : UGameInstanceSubsystem
---@field EventTracker URazerSensaEventTracker
local URazerSensaSubsystem = {}



---@class URegionToEpicIDConfig : UDeveloperSettings
---@field RegionToEpicMap TMap<ERegion, int32>
local URegionToEpicIDConfig = {}



---@class URemoveNeedEffect : UContextualActionEffect
---@field ContextualActionNeedForRemove EContextualActionNeeds
local URemoveNeedEffect = {}



---@class URepairPriceWidget : UWidgetBase
---@field Price UTextBlock
local URepairPriceWidget = {}



---@class UResetToDefaultSettings : UMenuButtonActionBase
local UResetToDefaultSettings = {}


---@class URestoreBackupPopup : UPopupBase
---@field ScrollBox UScrollBox
---@field ListScrollFiller USizeBox
---@field VisibleSlotsNum int32
---@field GamepadScrollSpeed float
---@field RestoreBackupSlotClass TSubclassOf<URestoreBackupSlot>
---@field CachedSlots TArray<URestoreBackupSlot>
---@field FocusedSlot UMenuButtonBase
---@field PressedSlot UMenuButtonBase
local URestoreBackupPopup = {}



---@class URestoreBackupSlot : UMenuButtonBase
---@field SlotImage UImage
---@field Name UTextWidget
---@field Description UTextWidget
---@field DateTime UTextWidget
---@field WithModsIndicator UOverlay
---@field DateTimeFormat FString
---@field SaveIcons TArray<TSoftObjectPtr<UTexture2D>>
---@field TypeToSID TMap<EGrammaticalNumberType, FString>
---@field NewGameSlotSID FString
---@field BackupIndexSID FString
local URestoreBackupSlot = {}



---@class UResumeAction : UMenuButtonActionBase
local UResumeAction = {}


---@class UReuniteWithLairResolverFactory : UNeedsResolverFactory
local UReuniteWithLairResolverFactory = {}


---@class URichPresenceSubsystem : ULocalPlayerSubsystem
local URichPresenceSubsystem = {}


---@class URichTextBlockWidgetDecorator : URichTextBlockDecorator
---@field ChachedWidgetsCreatedByDecorator TArray<UUserWidget>
---@field WidgetSet UDataTable
local URichTextBlockWidgetDecorator = {}



---@class URichTextWidget : URichTextBlock
---@field bEnableStyleManager boolean
local URichTextWidget = {}



---@class URightClickMenuItemWidget : UUserWidget
---@field ButtonClick UButton
---@field Label UTextWidget
---@field UnhoveredBackground UImage
---@field HoveredBackground UImage
---@field TextColorHovered FLinearColor
---@field TextColorUnhovered FLinearColor
---@field MenuItemWidgetClass TSubclassOf<UUserWidget>
local URightClickMenuItemWidget = {}

function URightClickMenuItemWidget:OnButtonUnHovered() end
function URightClickMenuItemWidget:OnButtonHovered() end
function URightClickMenuItemWidget:OnButtonClick() end


---@class URightClickMenuWidget : UUserWidget
---@field Menu UVerticalBox
---@field Left_NoTile UImage
---@field Right_NoTile UImage
---@field MenuItemWidgetClass TSubclassOf<UUserWidget>
---@field RadiationMark UWidgetAnimation
---@field NoTileBordersElementsNum int32
local URightClickMenuWidget = {}

function URightClickMenuWidget:OnNoItemClick() end
---@param Data FRightClickMenuItemData
---@param bInHover boolean
function URightClickMenuWidget:OnItemHover(Data, bInHover) end
---@param Data FRightClickMenuItemData
function URightClickMenuWidget:OnItemClicked(Data) end


---@class URootMotionModifier_WarpWithScale : URootMotionModifier_SkewWarp
---@field ScaleWarpTargetName FName
local URootMotionModifier_WarpWithScale = {}



---@class US2AdaptiveTriggersSubsystem : ULocalPlayerSubsystem
---@field AdaptiveTriggersSubsystem UGSCAdaptiveTriggersSubsystem
---@field IntensityPresetToValue TMap<EAdaptiveTriggersPreset, float>
local US2AdaptiveTriggersSubsystem = {}



---@class US2DeadZoneTriggersDataAsset : UDataAsset
---@field PrototypeToDeadZoneParams TMap<FPrototypeSID, FDeadZoneSettings>
local US2DeadZoneTriggersDataAsset = {}



---@class US2DeadZoneTriggersSettings : UDeveloperSettings
---@field DataAssets TMap<EGSCInputGamepadType, TSoftObjectPtr<US2DeadZoneTriggersDataAsset>>
local US2DeadZoneTriggersSettings = {}



---@class US2DeadZoneTriggersSubsystem : ULocalPlayerSubsystem
---@field DataAssets TMap<EGSCInputGamepadType, US2DeadZoneTriggersDataAsset>
local US2DeadZoneTriggersSubsystem = {}



---@class US2GameFeaturesProjectPolicies : UDefaultGameFeaturesProjectPolicies
local US2GameFeaturesProjectPolicies = {}


---@class US2InputModiferDynamicDeadZone : UInputModifier
local US2InputModiferDynamicDeadZone = {}


---@class US2LightBarSubsystem : ULocalPlayerSubsystem
---@field LightBarSubsystem UGSCLightBarSubsystem
---@field LightningStrikeActiveTime float
---@field ArtifactDetectorPingActiveTime float
local US2LightBarSubsystem = {}



---@class US2TargetMeleeSectorComponent : UTargetMeleeSectorComponent
local US2TargetMeleeSectorComponent = {}


---@class US2UnitModelFactory : UObject
local US2UnitModelFactory = {}


---@class USIDBasedAdaptiveTriggersState : UBaseAdaptiveTriggersState
---@field PrototypeToEffect TMap<FPrototypeSID, UGSCAdaptiveTriggersMode>
---@field FallbackEffect UGSCAdaptiveTriggersMode
local USIDBasedAdaptiveTriggersState = {}



---@class USIDBasedLightBarState : ULightBarStateBase
---@field PrototypeToEffect TMap<FPrototypeSID, UGSCLightBarColorEffectBase>
---@field FallbackLightBarColorEffect UGSCLightBarColorEffectBase
local USIDBasedLightBarState = {}



---@class USafeZoneApply : UMenuButtonActionBase
local USafeZoneApply = {}


---@class USafeZoneButton : UWidgetBase
local USafeZoneButton = {}


---@class USafeZoneReset : UMenuButtonActionBase
local USafeZoneReset = {}


---@class USafeZoneWidget : UMenuSubViewBase
---@field Speed float
---@field MinScale float
---@field MaxScale float
---@field MinValue float
---@field MaxValue float
---@field MaxX float
---@field MaxY float
---@field DefaultScale double
---@field ValueX float
---@field LeftTopCorner UImageWidget
---@field RightTopCorner UImageWidget
---@field LeftDownCorner UImageWidget
---@field RightDownCorner UImageWidget
---@field Border UImageWidget
local USafeZoneWidget = {}

function USafeZoneWidget:HandleEditSafeZoneMoveBordersIncreaseWidth() end
function USafeZoneWidget:HandleEditSafeZoneMoveBordersIncreaseHeight() end
function USafeZoneWidget:HandleEditSafeZoneMoveBordersDecreaseWidth() end
function USafeZoneWidget:HandleEditSafeZoneMoveBordersDecreaseHeight() end


---@class USaveButtonStateDefiner : UMenuButtonStateDefiner
local USaveButtonStateDefiner = {}


---@class USaveGameAction : USaveLoadActionBase
local USaveGameAction = {}


---@class USaveLoadActionBase : UMenuButtonActionBase
local USaveLoadActionBase = {}


---@class USaveLoadIO : UObject
local USaveLoadIO = {}


---@class USaveLoadManager : UBaseTickableManager
---@field SaveLoadIO USaveLoadIO
---@field DLCUserFriendlyNames TMap<FName, FString>
local USaveLoadManager = {}



---@class USaveLoadNotificationBase : UWidgetBase
---@field FadeInAnimation UWidgetAnimation
---@field FadeOutAnimation UWidgetAnimation
---@field BlinkingAnimation UWidgetAnimation
---@field Title UTextWidget
---@field Description UTextWidget
---@field SizeBox USizeBox
---@field Icon UImage
---@field SingleLineDescWidth float
---@field TwoLineDescWidth float
---@field ThreeLineDescWidth float
---@field TimerRate float
---@field FloppyDisk UTexture2D
---@field BrokenFloppyDisk UTexture2D
local USaveLoadNotificationBase = {}



---@class USaveLoadNotificationManager : UBaseManager
---@field SaveLoadNotificationView USaveLoadNotificationView
local USaveLoadNotificationManager = {}



---@class USaveLoadNotificationView : UViewBaseExtended
---@field SaveLoadNotificationOverlay UOverlay
---@field SaveLoadNotificationViewZOrder int32
---@field DefaultNotifyPadding FMargin
---@field ActiveSaveLoadNotificationWidget USaveLoadNotificationBase
local USaveLoadNotificationView = {}



---@class USaveScreenSubView : UMenuSubViewBase
---@field SaveButtonActionPrototype USaveLoadActionBase
---@field SaveButtonStyleClass TSubclassOf<UMenuButtonBase>
---@field SaveButtonShortcuts TArray<FShortcutData>
---@field NewSaveButtonActionPrototype USaveLoadActionBase
---@field NewSaveButtonStyleClass TSubclassOf<UMenuButtonBase>
---@field BlockedButtonStyleClass TSubclassOf<UMenuButtonBase>
---@field NewSaveButtonShortcuts TArray<FShortcutData>
---@field SaveTypesToShow TSet<ESaveType>
---@field bLoadPage boolean
---@field BlockedSaveButtonAction UMenuButtonActionBase
---@field SaveButtonAction UMenuButtonActionBase
---@field NavigationPanel UMenuNavigationPanelBase
local USaveScreenSubView = {}

---@param InButtonIndex int32
function USaveScreenSubView:OnNavigationButtonPressed(InButtonIndex) end


---@class USaveSlotButton : UMenuButtonBase
---@field Thumbnail UImage
---@field Background UImage
---@field CompatibilityImage UImage
---@field SaveName UEditableTextBox
---@field DateTime UTextWidget
---@field GameDuration UTextWidget
---@field SaveTypeText UTextWidget
---@field LocationName UTextWidget
---@field WithModsIndicator UOverlay
---@field RenameStateShortcuts TArray<FShortcutData>
---@field DateTimeFormat FString
---@field GameDurationTimeFormat FString
---@field CompatibleSaveColor FLinearColor
---@field PartiallyCompatibleSaveColor FLinearColor
---@field NonCompatibleSaveColor FLinearColor
---@field SaveIcons TArray<TSoftObjectPtr<UTexture2D>>
---@field CorruptedSaveThumbnail TSoftObjectPtr<UTexture2D>
local USaveSlotButton = {}



---@class USavesBackupSubsystem : UGameInstanceSubsystem
---@field MaxBackupsCount int32
local USavesBackupSubsystem = {}



---@class UScarBossComponent : UActorComponent
---@field Phases TArray<FScarPhaseData>
---@field StunMeshGenerator FPrototypeSID
local UScarBossComponent = {}



---@class UScenarioManager : UBaseTickableManager
---@field PlaySoundQuestNodeListeners TArray<UPlaySoundQuestNodeListener>
local UScenarioManager = {}



---@class UScreenshotModeButton : UUserWidget
---@field HintInputController UHintInputController
---@field StatusRichText URichTextWidget
---@field DisabledAnim UWidgetAnimation
---@field ModeOnSID FString
---@field ModeOffSID FString
local UScreenshotModeButton = {}



---@class UScreenshotModeIPU : UInputProcessingUnit
local UScreenshotModeIPU = {}


---@class USearchpointDetectorComponent : UPassiveDetectorComponent
local USearchpointDetectorComponent = {}


---@class USecuritySettings : UDeveloperSettings
---@field Watermark FString
---@field bDisplayWatermark boolean
local USecuritySettings = {}



---@class USelectExpeditionModeOption : UMenuButtonActionBase
---@field bSelect boolean
local USelectExpeditionModeOption = {}



---@class USelectNextOption : UMenuButtonActionBase
local USelectNextOption = {}


---@class USelectPreviousOption : UMenuButtonActionBase
local USelectPreviousOption = {}


---@class USelectedAnswerMark : UWidgetBase
---@field Hint UUserWidget
---@field LockSwitcher UImage
---@field Background UImage
---@field TimerContainer UOverlay
local USelectedAnswerMark = {}



---@class USequenceComponent : UObject
---@field PreBlendCinematicComponent UPreBlendCinematicComponent
local USequenceComponent = {}

function USequenceComponent:OnSequenceStarted() end
function USequenceComponent:OnSequenceFinished() end


---@class USetCampaign : UGotoViewAction
local USetCampaign = {}


---@class USetCampaignWithoutDifficulty : UStartGameAction
---@field DifficultyPrototypeSID FString
local USetCampaignWithoutDifficulty = {}



---@class USetDifficulty : UStartGameAction
---@field DifficultySID FString
local USetDifficulty = {}



---@class USetDifficultyWithWarning : USetDifficulty
---@field WarningSID FString
local USetDifficultyWithWarning = {}



---@class USettingElement : UWidgetBase
---@field bShouldHideOnShipping boolean
---@field bShouldHideOnPresentation boolean
---@field HoveredTextStyle FName
---@field TextStyle FName
---@field Background UImage
---@field HoveredBackground UTexture2D
---@field UnhoveredBackground UTexture2D
---@field HoveredArrow FButtonStyle
---@field UnHoveredArrow FButtonStyle
---@field HoveredSlider FProgressBarStyle
---@field UnHoveredSlider FProgressBarStyle
---@field HoveredThumbSlider FSliderStyle
---@field UnHoveredThumbSlider FSliderStyle
---@field NameText UTextWidget
---@field ValueText UTextWidget
---@field LeftButton UButton
---@field RightButton UButton
---@field LeftButtonImage UButton
---@field RightButtonImage UButton
---@field ProgressBar UProgressBar
---@field Slider USlider
---@field NameLocSID FString
---@field DescriptionLocSID FString
---@field WidgetDependencies TArray<USettingElement>
---@field InputTypeToDisplayButton EInputTypeForButtons
---@field ExclusiveGamepadType EGSCInputGamepadType
---@field SupportedPlatforms int32
---@field bIsSpecialButton boolean
---@field Settings USettingsMenuSubView
local USettingElement = {}

function USettingElement:OnRightButtonClicked() end
function USettingElement:OnLeftButtonClicked() end
---@return boolean
function USettingElement:GetIsEnabledElement() end


---@class USettingElementBindedInput : USettingElementInput
local USettingElementBindedInput = {}


---@class USettingElementButton : USettingElement
---@field NestingWindowIndex ENestingIndex
local USettingElementButton = {}

function USettingElementButton:ChangeLegendOnUnhovered() end
function USettingElementButton:ChangeLegendOnHovered() end


---@class USettingElementInput : USettingElement
---@field LeftHintImage UHintImageKeyboard
---@field RightHintImage UHintImageKeyboard
---@field MappingContext EMappingContext
---@field PopupDescription FString
---@field PopupTitle FString
---@field PopupApplyHintSID FString
---@field PopupCancelHintSID FString
local USettingElementInput = {}



---@class USettingElementOnOff : USettingElement
---@field bDisableDependenciesWhenValueIs boolean
local USettingElementOnOff = {}



---@class USettingElementSwitcher : USettingElement
---@field ValuesToLocSID TMap<int32, FString>
---@field AvailableValues TArray<int32>
---@field Value int32
---@field bLocalizeValues boolean
---@field DisableDependenciesWhenValueIs int32
---@field DisableDependenciesValues TArray<int32>
---@field bUpdateDescriptionOnValueChange boolean
---@field ValuesToDescriptionSID TMap<int32, FString>
---@field bReverseValues boolean
local USettingElementSwitcher = {}

function USettingElementSwitcher:SortValues() end


---@class USettingElementValueLocSwitcher : USettingElement
---@field Values TArray<FValueLocalisationPair>
---@field Index int32
local USettingElementValueLocSwitcher = {}



---@class USettingsCategory : UWidgetBase
---@field CategoryNameSID FString
---@field CategoryNameText UTextWidget
local USettingsCategory = {}



---@class USettingsElementPercent : USettingElement
---@field Value float
---@field MaxValue float
---@field MinValue float
---@field Step float
---@field bShowPercentSign boolean
---@field bShowAsInteger boolean
---@field ReplacedValue FFloatValueLocalisationPair
local USettingsElementPercent = {}

---@param InValue float
---@param bForce boolean
function USettingsElementPercent:SetValue(InValue, bForce) end


---@class USettingsElementRefreshRateSwitcher : USettingElement
local USettingsElementRefreshRateSwitcher = {}


---@class USettingsElementResolutionSwitcher : USettingElement
local USettingsElementResolutionSwitcher = {}


---@class USettingsManager : UBaseManager
---@field MainVolumeRTPCParameter UAkRtpc
---@field MusicVolumeRTPCParameter UAkRtpc
---@field EffectsVolumeRTPCParameter UAkRtpc
---@field DialogueVolumeRTPCParameter UAkRtpc
---@field MuteAllRTPCParameter UAkRtpc
---@field DisableCopyrightedMusicRTPCParameter UAkRtpc
---@field FullAkEffectShareSet UAkEffectShareSet
---@field MediumAkEffectShareSet UAkEffectShareSet
---@field NarrowAkEffectShareSet UAkEffectShareSet
local USettingsManager = {}



---@class USettingsMenuSubView : UMenuSubViewBase
---@field SettingsView USettingsView
---@field ElementButtonHoveredMenuButtonModel UMenuButtonModel
---@field SubCategoryMenuButtonModel UMenuButtonModel
---@field GraphicsMenuButtonModel UMenuButtonModel
local USettingsMenuSubView = {}



---@class USettingsNavigationButton : UButtonBase
---@field SelectLine UImage
---@field ButtonText UTextWidget
---@field bEnableLocalisation boolean
---@field ButtonLocalizationSID FString
---@field DisplayText FText
---@field bEnableSelectAnimation boolean
---@field bEnableByDefault boolean
---@field ButtonIndex int32
---@field SetStyleIdHover FName
---@field SetStyleIdUnHover FName
---@field bShouldHideOnPresentation boolean
---@field Category ESettingCategoryType
---@field bEnablePopupOnSlotSwitch boolean
local USettingsNavigationButton = {}



---@class USettingsNavigationPanel : UWidgetBase
---@field SlotContainer UPanelWidget
---@field NavPanelScroll UScrollBox
local USettingsNavigationPanel = {}



---@class USettingsPage : UWidgetBase
---@field OptionsContainer UScrollBox
---@field Category ESettingCategoryType
local USettingsPage = {}



---@class USettingsView : UViewBaseExtended
---@field NavigationPanel USettingsNavigationPanel
---@field NavigationPanelMapping USettingsNavigationPanel
---@field NavPanelSwitcher UWidgetSwitcher
---@field CategorySwitcher UWidgetSwitcher
---@field NestingSwitcher UWidgetSwitcher
---@field SettingName UTextWidget
---@field SettingDescription UTextWidget
---@field ImageSwitcher UWidgetSwitcher
---@field SettingsVisualizationBox USizeBox
---@field CurveVisualization USplineGraphWidget
---@field CurveVisualizationBox USizeBox
---@field SettingsVisualization ULocalizedImage
---@field SettingsVisualizationBoxAlternativeLayout USizeBox
---@field SettingsVisualizationAlternativeLayout ULocalizedImage
---@field DescriptionLine UImage
---@field KeyboardMapping USettingsPage
---@field SavePopupTitleSID FString
---@field SavePopupDescSID FString
---@field SavePopupButtonSID FString
---@field ExitPopupTitleSID FString
---@field ExitPopupDescSID FString
---@field ExitPopupButtonOkSID FString
---@field ExitPopupButtonNoSID FString
---@field ResetPopupTitleSID FString
---@field ResetPopupDescSID FString
---@field ResetPopupButtonOkSID FString
---@field ResetPopupButtonNoSID FString
---@field ExitToSettingsPopupTitleSID FString
---@field NeedRestartPopupDescSID FString
local USettingsView = {}



---@class UShippingButtonStateDefiner : UMenuButtonStateDefiner
local UShippingButtonStateDefiner = {}


---@class UShootingWeaponComponent : USceneComponent
---@field WeaponPrototypeSID FPrototypeSID
local UShootingWeaponComponent = {}

---@param OwnerOverride UObject
function UShootingWeaponComponent:ShootWithOwnerOverride(OwnerOverride) end
function UShootingWeaponComponent:Shoot() end


---@class UShotgunRecoilTextureDataAsset : UGunRecoilTextureDataAsset
---@field RecoilPatternBuckKeys TArray<FBuckRecoilKeys>
local UShotgunRecoilTextureDataAsset = {}



---@class UShowBackupPopup : UMenuButtonActionBase
local UShowBackupPopup = {}


---@class UShowOverrideCampaignPopup : UMenuButtonActionBase
---@field DestinationAfterConfirm TSoftClassPtr<UMenuSubViewBase>
---@field TitleSID FString
---@field DescriptionSID FString
---@field AcceptButtonNameSID FString
---@field DeclineButtonNameSID FString
local UShowOverrideCampaignPopup = {}



---@class UShowOverrideCampaignPopupGameStart : UMenuButtonActionBase
---@field DifficultyPrototypeSID FString
---@field TitleSID FString
---@field DescriptionSID FString
---@field AcceptButtonNameSID FString
---@field DeclineButtonNameSID FString
local UShowOverrideCampaignPopupGameStart = {}



---@class UShowPopupAction : UMenuButtonActionBase
---@field TitleSID FString
---@field DescriptionSID FString
---@field AcceptButtonNameSID FString
---@field DeclineButtonNameSID FString
local UShowPopupAction = {}



---@class UShowSafeZoneViewButton : UMenuButtonBase
local UShowSafeZoneViewButton = {}


---@class USignalProcessingSubsystem : UWorldSubsystem
local USignalProcessingSubsystem = {}


---@class USignalReceiverComponent : UGuidActorComponent
---@field OnSignalReceived FSignalReceiverComponentOnSignalReceived
---@field bCanBeUsedInQuests boolean
local USignalReceiverComponent = {}



---@class USignalSenderComponent : UGuidActorComponent
---@field Signals TArray<FSignalToSend>
local USignalSenderComponent = {}

---@param DataObject UObject
function USignalSenderComponent:Send(DataObject) end


---@class USimpleAxisIPU : UInputProcessingUnit
local USimpleAxisIPU = {}


---@class USimpleForceFeedbackProcessor : UForceFeedbackProcessorBase
---@field Feedback UForceFeedbackEffect
local USimpleForceFeedbackProcessor = {}



---@class USingleClickComponent : UInteractionComponent
---@field OnSingleClickInteractFailed FSingleClickComponentOnSingleClickInteractFailed
---@field InteractionData FSingleClickInteractionData
---@field bNeedSendFailedEvent boolean
local USingleClickComponent = {}

---@param bNeedEvent boolean
function USingleClickComponent:SetNeededFailedEvent(bNeedEvent) end
---@return boolean
function USingleClickComponent:CanSendFailedEvent() end


---@class USingleClickIPU : UInputProcessingUnit
local USingleClickIPU = {}


---@class USkipCutsceneIPU : UInputProcessingUnit
local USkipCutsceneIPU = {}


---@class USkipDialogIPU : UInputProcessingUnit
local USkipDialogIPU = {}


---@class USkipHintView : UViewBaseExtended
---@field ButtonHintSkip USizeBox
---@field SkipTextHint URichTextBlock
---@field HoldSkipLocSID FString
---@field PressSkipLocSID FString
---@field SkipFadeAnimation UWidgetAnimation
---@field AnimationSpeed float
---@field HideSkipHintLifeBond float
local USkipHintView = {}



---@class USkipKeyHint : UUserWidget
---@field InputController UHintControllerBase
local USkipKeyHint = {}



---@class USleepView : UViewBaseExtended
---@field FadeAnimation UWidgetAnimation
local USleepView = {}



---@class USmartCoverRenderingComponent : UDebugDrawComponent
local USmartCoverRenderingComponent = {}


---@class USnappingTimeSettingsElement : USettingsElementPercent
---@field TenthsDecimalFormatter UTenthsDecimalFormatter
---@field InfinityFormatter UInfinityFormatter
local USnappingTimeSettingsElement = {}



---@class USoundManager : UBaseManager
---@field AudioScatterer UAudioScattererDataAsset
---@field Landscape TWeakObjectPtr<ALandscape>
---@field InteriorFlagRTPC UAkRtpc
---@field OnAKEventFinished_Proxy UOnAKEventFinished_Proxy
local USoundManager = {}



---@class USoundWaveSpeechComponent : USpeechComponent
---@field AudioComponent UAudioComponent
local USoundWaveSpeechComponent = {}

function USoundWaveSpeechComponent:OnVoicegenFinished() end


---@class USpaceRestrictorsCheats : UCheatManagerExtension
local USpaceRestrictorsCheats = {}

---@param UID int32
function USpaceRestrictorsCheats:XRestrictorsShowResponse(UID) end
function USpaceRestrictorsCheats:XRestrictorsPrint() end
---@param Guid FString
function USpaceRestrictorsCheats:XRestrictorsDeactivate(Guid) end
---@param Guid FString
function USpaceRestrictorsCheats:XRestrictorsActivate(Guid) end


---@class USpeechComponent : UObject
local USpeechComponent = {}


---@class USplineGraphWidget : UUserWidget
---@field SplineLineWidget USplineLineWidget
local USplineGraphWidget = {}



---@class USplineLineWidget : UWidget
---@field SplineData FLineSplineData
---@field WidgetData FLineSplineWidgetData
local USplineLineWidget = {}

---@param PropertyToUpdate ESplineKeyProperty
---@param NewValue float
---@param InIndex int32
function USplineLineWidget:UpdateSplineKey(PropertyToUpdate, NewValue, InIndex) end
---@param InCurve UCurveFloat
function USplineLineWidget:UpdateCurve(InCurve) end


---@class USprintIPU : UBehaviorBasedIPU
local USprintIPU = {}


---@class USquadStrategy : UObject
local USquadStrategy = {}


---@class UStackSplitContextual : UUserWidget
---@field ConfirmHint UHintInputController
---@field ConfirmAllHint UHintInputController
---@field CancelHint UHintInputController
---@field TitleText UTextWidget
---@field SignCaptionPressedColor FLinearColor
---@field SignCaptionDefaultColor FLinearColor
---@field Slider_ItemSplit USlider
---@field SplitTextTest UTextWidget
---@field ItemName UTextWidget
---@field SizeBoxSlider USizeBox
---@field OverlayNumbers UOverlay
---@field OverlaySize UOverlay
---@field SliderImage UImage
---@field MovementCurve UCurveFloat
---@field ConfirmHintType TMap<ESplitStackTypeDirection, FString>
---@field ConfirmAllHintType TMap<ESplitStackTypeDirection, FString>
---@field ArrowLeft UButton
---@field ArrowRight UButton
---@field ArrowRightPlatformSwitcher UPlatformSwitcherBase
---@field ArrowLeftPlatformSwitcher UPlatformSwitcherBase
---@field ShowAnim UWidgetAnimation
---@field MainOverlay UOverlay
---@field ActiveBarColor FLinearColor
---@field NonActiveBarColor FLinearColor
local UStackSplitContextual = {}

function UStackSplitContextual:PressChangeAmmount() end
---@param Value float
function UStackSplitContextual:OnSplitValueChanged(Value) end
function UStackSplitContextual:OnSplitButtonClicked() end
function UStackSplitContextual:OnPlusButtonReleased() end
function UStackSplitContextual:OnPlusButtonPressed() end
function UStackSplitContextual:OnPlusButtonClicked() end
function UStackSplitContextual:OnMinusButtonReleased() end
function UStackSplitContextual:OnMinusButtonPressed() end
function UStackSplitContextual:OnMinusButtonClicked() end
function UStackSplitContextual:OnHoldTimerTriggered() end
function UStackSplitContextual:OnDropAllButtonClicked() end
function UStackSplitContextual:OnCancelButtonClicked() end


---@class UStackSplitContexualTrade : UStackSplitContextual
---@field SellLocSID FString
---@field SellAllLocSID FString
---@field BuyLocSID FString
---@field BuyAllLocSID FString
---@field ReturnLocSID FString
---@field ReturnAllLocSID FString
---@field SellTitleLocSID FString
---@field BuyTitleLocSID FString
---@field ReturnTitleLocSID FString
local UStackSplitContexualTrade = {}



---@class UStackSplittingWidget : UWidgetBase
---@field TextBlock_AmountToDrop UTextBlock
---@field Slider_ItemSplit USlider
---@field TextBlock_FullAmount UTextBlock
---@field Button_Cancel UButton
---@field Button_Split UButton
---@field TextBlock_Split UTextBlock
---@field ItemImage UImageWidget
---@field HeaderText UTextBlock
---@field ItemName UTextBlock
local UStackSplittingWidget = {}

---@param Value float
function UStackSplittingWidget:OnSplitValueChanged(Value) end
function UStackSplittingWidget:OnSplitButtonClicked() end
function UStackSplittingWidget:OnCancelButtonClicked() end


---@class UStalker2GameEngine : UGameEngine
local UStalker2GameEngine = {}


---@class UStalkerCommonModOperationTrackerWidget : UModioCommonModOperationTrackerWidget
local UStalkerCommonModOperationTrackerWidget = {}


---@class UStalkerDownloadModsPopup : UPopupBase
---@field ModDownloadEntryClass TSubclassOf<UStalkerModDownloadEntry>
---@field ScrollBox UScrollBox
---@field ModListScrollFiller USizeBox
---@field Prompt UTextWidget
---@field NumVisibleMods int32
---@field GamepadScrollSpeed float
local UStalkerDownloadModsPopup = {}



---@class UStalkerModDownloadEntry : UUserWidget
---@field ModioModOperationTrackerClass TSubclassOf<UModioModOperationTrackerUserWidget>
---@field SteamModOperationTrackerClass TSubclassOf<USteamModOperationTrackerUserWidget>
---@field GenericModOperationTrackerClass TSubclassOf<UUserWidget>
---@field ImageSwitcher UWidgetSwitcher
---@field ModImage UImage
---@field ModName UTextWidget
---@field VersionBox UHorizontalBox
---@field VersionInSaveBox UHorizontalBox
---@field VersionInSave UTextWidget
---@field VersionSeparator UTextWidget
---@field InstalledVersionBox UHorizontalBox
---@field InstalledVersion UTextWidget
---@field ProgressSwitcher UWidgetSwitcher
---@field StatusIconSwitcher UWidgetSwitcher
---@field StatusText UTextWidget
---@field ProgressTrackerSlot UNamedSlot
---@field DefaultStateAnim UWidgetAnimation
---@field ErrorStateAnim UWidgetAnimation
local UStalkerModDownloadEntry = {}



---@class UStandInWithVATAnimationConfig : UVATAnimationsConfig
---@field BoundSphereTestRadius float
---@field BoundsScreenSizeToEnableStandIn float
---@field BoundsScreenSizeOffsetToDsiableStandIn float
---@field BoundSphereTestOffset FVector
---@field StandInMesh UStaticMesh
local UStandInWithVATAnimationConfig = {}



---@class UStartCSVProfiler : UMenuButtonActionBase
local UStartCSVProfiler = {}


---@class UStartGameAction : UMenuButtonActionBase
local UStartGameAction = {}


---@class UStatPanel : UChildViewBase
---@field VitalsOverlay UOverlay
---@field StatWeight UStatSlot
---@field StatSleep UStatSlot
---@field StatHunger UStatSlot
---@field StatBleeding UStatSlot
---@field StatEnergeticTolerance UStatSlot
---@field StatEnergeticOveruse UStatSlot
---@field HPProgress UProgressBar
---@field HPProgressDark UProgressBar
---@field HPProgressWhite UProgressBar
---@field Stamina UProgressBar
---@field RadiationProgress UImage
---@field BlinkingStaminaAnim UWidgetAnimation
---@field BlinkingHPAnim UWidgetAnimation
---@field VitalsOverlayHideAnim UWidgetAnimation
---@field VitalsOverlayShowAnim UWidgetAnimation
---@field SettingsAsset UStatPanelDataAsset
---@field ColorWeight FLinearColor
---@field ColorOverWeight FLinearColor
---@field HeavyIconColor FLinearColor
---@field MediumIconColor FLinearColor
---@field LightIconColor FLinearColor
local UStatPanel = {}

function UStatPanel:UpdateAllStats() end


---@class UStatPanelDataAsset : UDataAsset
---@field HealthBarAnimationRate EAnimationRate
---@field HealthBarReduceTime float
---@field WhiteBarReduceTime float
---@field WhiteBarReduceDelay float
---@field HealthBarCriticalLevel float
---@field HealthBarCriticalSpeed float
---@field HealthBarFadeOut float
---@field HealthBarFadeIn float
---@field StatPanelHideDelay float
---@field StaminaBarCriticalLevel float
---@field StaminaBarCriticalSpeed float
---@field RadBarGrowSpeed float
---@field RadBarRestoreSpeed float
---@field RadBarProgressParameterName FName
---@field BleedingFadeOut float
---@field BleedingFadeIn float
---@field OverloadFadeOut float
---@field OverloadFadeIn float
---@field HungerFadeOut float
---@field HungerFadeIn float
---@field SleepinessFadeOut float
---@field SleepinessFadeIn float
---@field EnergeticToleranceFadeOut float
---@field EnergeticToleranceFadeIn float
---@field EnergeticOveruseFadeOut float
---@field EnergeticOveruseFadeIn float
local UStatPanelDataAsset = {}



---@class UStatPanelDebug : UChildViewBase
---@field ProgressHP UProgressBar
---@field ProgressRadiation UProgressBar
---@field ProgressStamina UProgressBar
---@field ProgressPsy UProgressBar
---@field HPText UTextBlock
---@field RadiationText UTextBlock
---@field StaminaText UTextBlock
---@field PsyText UTextBlock
local UStatPanelDebug = {}

function UStatPanelDebug:UpdateAllStats() end


---@class UStatSlot : UWidgetBase
---@field Icon UImage
---@field Shadow UImage
---@field size FVector2D
---@field bShouldShowProgress boolean
---@field IconTexture UTexture2D
---@field WeakStateOpacityPercent float
---@field BlinkingAnimSpeed float
---@field CurrState EStatSlotStates
---@field TextureID FName
---@field ShowAnim UWidgetAnimation
---@field HideAnim UWidgetAnimation
---@field BlinkingAnim UWidgetAnimation
local UStatSlot = {}



---@class UStaticEnvironmentNiagaraComponent : UEnvironmentNiagaraComponent
---@field PrototypeName FName
---@field ParticleType EStaticParticleType
local UStaticEnvironmentNiagaraComponent = {}



---@class UStatisticIPU : UInputProcessingUnit
local UStatisticIPU = {}


---@class UStealthKillComponent : UActorComponent
---@field OwnerPlayer APC
---@field StealthKillSnapCurve UCurveFloat
local UStealthKillComponent = {}



---@class USteamModOperationTrackerUserWidget : UUserWidget
---@field ModOperationProgressBar UProgressBar
---@field CachedSteamWorkshopSubsystem USteamWorkshopSubsystem
local USteamModOperationTrackerUserWidget = {}



---@class USteamWorkshopSubsystem : UModSubsystemBase
local USteamWorkshopSubsystem = {}


---@class UStopCSVProfiler : UMenuButtonActionBase
local UStopCSVProfiler = {}


---@class UStoreButtonStateDefiner : UMenuButtonStateDefiner
---@field ExcludeSubsystems TArray<FName>
local UStoreButtonStateDefiner = {}

---@return TArray<FName>
function UStoreButtonStateDefiner:GetSubsystemOptions() end


---@class UStreamingDistanceOverrideSubsystem : UWorldSubsystem
---@field RegisteredSDOVolumeStates TArray<FStreamingDistanceOverrideVolumeState>
local UStreamingDistanceOverrideSubsystem = {}



---@class UStrelokBossComponent : UActorComponent
local UStrelokBossComponent = {}

---@param bAbilityUsed boolean
function UStrelokBossComponent:OnDashAbilityUsed(bAbilityUsed) end


---@class USubtitleView : UViewBaseExtended
---@field DebugLenSpeaker UDebugTextWidgetBase
---@field DebugLenSubtitle UDebugTextWidgetBase
---@field DebugRowSpeaker UDebugTextWidgetBase
---@field DebugRowSubtitle UDebugTextWidgetBase
---@field SpeakerDialogText UTextWidget
---@field TwoPoint UTextWidget
---@field NameBox UHorizontalBox
---@field SubtitileBorder UBorder
---@field SubtitileContainer USizeBox
---@field TextDialog UTextWidget
---@field CharToShow int32
---@field SpeedCharToShow float
---@field SubtitleNames TMap<ESubtitlesSize, FName>
---@field SpeakerSubtitleNames TMap<ESubtitlesSize, FName>
---@field AnimationSpeed float
---@field HideSkipHintLifeBond float
---@field BackgroundTexture TSoftObjectPtr<UTexture2D>
local USubtitleView = {}



---@class USummonAbilityEventData : UGSCGameplayEventData
local USummonAbilityEventData = {}

---@return boolean
function USummonAbilityEventData:ShouldSpawnEffects() end
---@return TArray<FVector>
function USummonAbilityEventData:GetSummonLocations() end


---@class USummonStateComponent : UActorComponent
local USummonStateComponent = {}


---@class USwapWeaponIPU : UInputProcessingUnit
local USwapWeaponIPU = {}


---@class USwitchWeaponIPU : UInputProcessingUnit
local USwitchWeaponIPU = {}


---@class USystemNotificationItem : UWidgetBase
---@field bWasVoiceNotePlayed boolean
---@field MoveUpAnim UWidgetAnimation
---@field MoveFromDownAnim UWidgetAnimation
---@field HideAnim UWidgetAnimation
---@field AppearAnim UWidgetAnimation
---@field Title URichTextWidget
---@field Description UTextBlock
---@field Hint UHintInputController
---@field Icon UImage
---@field AudiologSwitcher UWidgetSwitcher
---@field VoiceHorizontalBox UHorizontalBox
---@field AudiologProgressBar UProgressBar
---@field AudiologDuration UTextBlock
---@field AudiologCurrentDuration UTextBlock
---@field BackgroundBody UImage
---@field BackgroundTop UImage
---@field BackgroundDown UImage
---@field AppearanceLayer UBorder
---@field AppearanceLine UBorder
---@field General FLinearColor
---@field green FLinearColor
---@field red FLinearColor
---@field RegularHeight int32
---@field HeightWithHint int32
---@field NotificationModel FNotificationModel
---@field Play FText
---@field Stop FText
---@field OneLineNotificationAlignment int32
---@field HintSIDs TMap<EHintType, FString>
---@field InactiveHintTransparency float
---@field PauseAudioLogHintSID FString
local USystemNotificationItem = {}

function USystemNotificationItem:SetModel() end


---@class USystemNotificationWidget : UWidgetBase
---@field VerticalBox UVerticalBox
---@field NotificationIcons TMap<ESystemNotificationIconType, TSoftObjectPtr<UTexture2D>>
---@field SystemNotificationItemClass TSubclassOf<USystemNotificationItem>
---@field SystemNotificationsMax int32
---@field ItemLifespanByIndex TArray<float>
---@field Received FString
---@field Lost FString
---@field Coordinates FString
---@field NewNote FString
---@field NewStash FString
---@field NewRegionName FString
---@field NewBlueprint FString
---@field MoneyText FString
---@field EncyclopediaUpdated FString
---@field TitleFormatForItems FText
---@field TitleFormat FText
---@field QueueDelay float
---@field TimerRate float
---@field MoveUpAnimMultiplier float
---@field AppearAnimMultiplier float
---@field HideAnimMultiplier float
---@field WorldMapStashZoom int32
---@field MaxTitleLen int32
---@field EndText FString
local USystemNotificationWidget = {}

function USystemNotificationWidget:ProceedInput() end
---@param Model FNotificationModel
function USystemNotificationWidget:OnSystemNotificationActionCompleted(Model) end
function USystemNotificationWidget:NotificationClickHandler() end
function USystemNotificationWidget:InputCancel() end
function USystemNotificationWidget:CenterMapOnLocation() end


---@class UTacticalFlashlightComponent : UFlashlightComponent
local UTacticalFlashlightComponent = {}


---@class UTaskIcon : UWidgetBase
---@field DesiredSize FVector2f
---@field IconSize USizeBox
---@field SelectedMarker UImage
---@field TaskMarker UImage
---@field MainQuestColorStyleID FName
---@field SecondaryQuestColorStyleID FName
local UTaskIcon = {}



---@class UTaskListMenuWidget : UWidgetBase
---@field WidgetSize FVector2f
---@field WidgetSizeBox USizeBox
---@field MainTasksTitle UHorizontalBox
---@field SecondaryTaskTitle UHorizontalBox
---@field MainTasks UVerticalBox
---@field SecondaryTasks UVerticalBox
---@field MainTasksBox UVerticalBox
---@field SecondaryTasksBox UVerticalBox
---@field QuestMenuWidgetClass TSubclassOf<UQuestMenuWidget>
---@field QuestSlotPadding FMargin
local UTaskListMenuWidget = {}



---@class UTaskMenuWidget : UWidgetBase
---@field TaskIcon UTaskIcon
---@field TaskText URichTextBlock
---@field OptionalPostfixSID FString
---@field bOptional boolean
---@field bOptionalControlsState boolean
---@field bSecondaryState boolean
---@field RegularTaskTextStyleID FName
---@field OptionalTaskTextStyleID FName
---@field OptionalTaskPostfixStyleID FName
local UTaskMenuWidget = {}



---@class UTeleportManager : UBaseManager
local UTeleportManager = {}


---@class UTenthsDecimalFormatter : UObject
local UTenthsDecimalFormatter = {}


---@class UTermsOfUsePopup : UPopupBase
---@field PrivacyPolicyButton UHyperlinkButton
---@field TermsOfUseButton UHyperlinkButton
local UTermsOfUsePopup = {}

function UTermsOfUsePopup:HandleTermsOfUseHovered() end
function UTermsOfUsePopup:HandlePrivacyPolicyHovered() end


---@class UTextWidget : ULocalizationWidget
---@field DefaultWrapText float
---@field DefaultText FText
---@field bUseWrappingFromStyle boolean
---@field bEnableStyleManager boolean
---@field TextSettings FTextSettings
---@field bEnableScroll boolean
---@field CommonTextObj UCommonTextBlock
---@field TextScaleSettings FSlotScaleSettings
local UTextWidget = {}

---@param InText FText
function UTextWidget:SetText(InText) end
---@return FText
function UTextWidget:GetText() end


---@class UTextureTools : UActorComponent
local UTextureTools = {}


---@class UThreatIndicator : UChildViewBase
---@field ThreatsOverlay UOverlay
---@field ThreatIndicatorShowDistance float
---@field ThreatPointerCap int32
---@field ThreatPointerSettings FThreatPointerSettings
---@field ThreatsUpdateInterval float
---@field ThreatPointerWidgetClass TSubclassOf<UThreatPointer>
---@field ActiveThreatPointers TArray<UThreatPointer>
local UThreatIndicator = {}



---@class UThreatPointer : UWidgetBase
---@field AlertAnimation UWidgetAnimation
---@field ThreatLevelVisualizer UImage
---@field CircleSize USizeBox
local UThreatPointer = {}



---@class UTickAggregationManager : UBaseTickableManager
---@field AgentsCollection FAgentCollection
---@field AIEntityCollection FAIEntityCollection
---@field ArtifactsCollection FArtifactCollection
---@field AnomaliesCollection FAnomalyCollection
---@field AITickComponentsCollection FAITickComponentCollection
---@field DestructibleCollection FDestructibleObjectCollection
---@field WetnessComponentCollection FWetnessComponentCollection
---@field HeadFlashlightComponentCollection FHeadFlashlightComponentCollection
---@field ItemContainersCollection FItemContainerModelCollection
---@field AkRoomComponentsCollection FAkRoomCollection
---@field AkComponentsCollection FAkComponentCollection
---@field AkLateReverbComponentsCollection FAkLateReverbCollection
---@field AkSurfaceReflectorSetsCollection FAkSurfaceReflectorSetCollection
---@field AgentModelCollection FAgentModelCollection
---@field AnomalyModelCollection FAnomalyModelCollection
---@field DestructibleModelCollection FDestructibleModelCollection
---@field ContextualActionModelCollection FContextualActionModelCollection
---@field QuestNodeCollection FQuestNodeCollection
---@field HitDamageCollection FHitDamageCollection
---@field ExplosionEffectCollection FExplosionEffectCollection
local UTickAggregationManager = {}



---@class UTickBudgetSettings : UDeveloperSettings
---@field TimeBudget FTimeBudget
---@field InitialCollectionSize FInitialCollectionSize
---@field NavigationBudget FNavigationBudget
local UTickBudgetSettings = {}



---@class UTilingGridBack : UUserWidget
---@field FullSizeBox USizeBox
---@field VisibleSize FVector2D
---@field BorderSize float
local UTilingGridBack = {}



---@class UTimeManager : UBaseManager
---@field bIsPaused boolean
---@field CurrentDate FDateTime
---@field WeatherDate FDateTime
---@field GameTimeSecondsDouble double
---@field WeatherTimeSeconds double
---@field GameTimeSeconds double
---@field RealTime float
---@field LastTickDeltaTimeNormalized float
---@field CustomDeltaTime float
---@field SpeedFactor float
---@field WeatherSpeedFactor float
---@field FrameRate float
---@field TickCounter int64
---@field FixedFPS int32
---@field GameHours int32
---@field GameMinutes int32
---@field GameSecondsClamped float
---@field bDay boolean
---@field StartDate FDateTime
---@field UnixTime int64
---@field LastUnixTimeUpdateTick int64
---@field WeatherTimeCoefficientCurve UCurveFloat
local UTimeManager = {}



---@class UTimedLoadingScreenWidget : UBaseLoadingScreenWidget
---@field LoadingIndicator UThrobber
---@field ContentImage UImage
---@field FadeTime float
local UTimedLoadingScreenWidget = {}



---@class UTimeoutSpeechComponent : USpeechComponent
local UTimeoutSpeechComponent = {}


---@class UToggleButton : ULockableComponent
---@field CurrentValue float
---@field bShouldConsumeItemOnOpen boolean
---@field bUseInBothSides boolean
---@field ToggleButtonHandleMesh UStaticMeshComponent
---@field ToggleButtonCurve UCurveFloat
---@field ToggleButtonCurveReverse UCurveFloat
local UToggleButton = {}

function UToggleButton:ChangeToggleButtonPosition() end


---@class UToggleHeldItemIPU : UInputProcessingUnit
local UToggleHeldItemIPU = {}


---@class UToggleScreenshotMode : UMenuButtonActionBase
local UToggleScreenshotMode = {}


---@class UTooltipRecord : UWidgetBase
---@field FieldNameSID FString
---@field FieldName UTextWidget
---@field FieldValue UTextWidget
local UTooltipRecord = {}



---@class UTopazScannerComponent : UGuidActorComponent
---@field OnTopazStateChanged FTopazScannerComponentOnTopazStateChanged
---@field InitialState ETopazScannerState
---@field ScanningTime float
local UTopazScannerComponent = {}

---@return float
function UTopazScannerComponent:GetStateStartTimestamp() end
---@return ETopazScannerState
function UTopazScannerComponent:GetCurrentState() end
function UTopazScannerComponent:ChangeState() end


---@class UTopazSingleClickComponent : USingleClickComponent
---@field InteractionAngle float
---@field ActivationAnimCollection UInteractableAnimCollection
---@field CollectAnimCollection UInteractableAnimCollection
---@field bCustomInteractText boolean
---@field OwnerScanner ATopazScanner
local UTopazSingleClickComponent = {}



---@class UTouchComponent : UActorComponent
local UTouchComponent = {}


---@class UTradeView : UInventoryNew
---@field TraderGridWidget UCustomGrid
---@field SellGridWidget UCustomGrid
---@field BuyGridWidget UCustomGrid
---@field TradeConfirmInfoText UTextWidget
---@field TradeResultMoney UTextWidget
---@field TradeResultWeight UTextWidget
---@field TradeResultWeightUnits UTextWidget
---@field TraderButtonSwitcher UPlatformSwitcher
---@field ButtonHintConfirmTrade UHintInputController
---@field ButtonHintCancelTrade UHintInputController
---@field TradeResultMoneyDefaultStyle FName
---@field TradeResultMoneySuccessfulStyle FName
---@field TradeResultMoneyRejectStyle FName
---@field HintBuy UHintInputController
---@field HintSell UHintInputController
---@field HintReturn UHintInputController
local UTradeView = {}

function UTradeView:SellOrBuyReturnItemAction() end
function UTradeView:OnConfirmTrade() end
function UTradeView:OnCancelTrade() end


---@class UTraderEquipmentSlot : UEquipmentSlot
---@field CantBuyHighlight FLinearColor
---@field DefaultHighlightColor FLinearColor
local UTraderEquipmentSlot = {}



---@class UTraderGridSlot : UCustomGridSlot
---@field CantBuyHighlight FLinearColor
---@field DefaultHighlightColor FLinearColor
local UTraderGridSlot = {}



---@class UTriggerManager : UBaseTickableManager
local UTriggerManager = {}


---@class UTriggerStateActionBlockerCondition : UActionBlockerConditionBase
---@field TriggerState EPlayerTriggerState
local UTriggerStateActionBlockerCondition = {}



---@class UTriplanarDecalComponent : UDecalComponent
---@field NumberOfTraces int32
---@field HeightMap UTexture2D
local UTriplanarDecalComponent = {}



---@class UTutorialAutonomic : UTutorialBase
---@field TextBackgroundBorder UBorder
---@field PaddingWithHint FMargin
---@field PaddingWithoutHint FMargin
local UTutorialAutonomic = {}



---@class UTutorialBase : UViewBaseExtended
---@field Text URichTextBlock
---@field TutorialOverlay UOverlay
---@field HintFont FString
---@field DurationInSeconds float
local UTutorialBase = {}



---@class UTutorialIPU : UInputProcessingUnit
local UTutorialIPU = {}


---@class UTutorialPage : UPDAPage
---@field TutorialDetails UPDATutorialDetails
---@field ButtonAll UPDATutorialButton
---@field ButtonNavigation UPDATutorialButton
---@field ButtonFight UPDATutorialButton
---@field ButtonSurvival UPDATutorialButton
---@field ButtonEarning UPDATutorialButton
---@field TutorialPanel UPDATutorialPanel
---@field DefaultOpenFilter int32
---@field TutorialSlotListScrollTime float
---@field BackgroundSettings TMap<EPDATutorialCategory, FBackgroundSettings>
local UTutorialPage = {}

function UTutorialPage:UIPDANavigatioTutorialUp() end
function UTutorialPage:UIPDANavigatioTutorialDown() end
function UTutorialPage:UIPDANavigationUp() end
function UTutorialPage:UIPDANavigationRight() end
function UTutorialPage:UIPDANavigationMouseUp() end
function UTutorialPage:UIPDANavigationMouseDown() end
function UTutorialPage:UIPDANavigationLeft() end
function UTutorialPage:UIPDANavigationDown() end
function UTutorialPage:UIPDANavigationButtonRelease() end
---@param bEmpty boolean
function UTutorialPage:ShowDetails(bEmpty) end
---@param bBlock boolean
function UTutorialPage:ShowBlockListNavigation(bBlock) end
---@param ButtonId FName
function UTutorialPage:ClickButtonMenu(ButtonId) end


---@class UTutorialReference : UTutorialBase
---@field TitleBox UVerticalBox
---@field TitleLineBox UVerticalBox
---@field LineWithIconBox UVerticalBox
---@field TitleTutorText URichTextBlock
local UTutorialReference = {}



---@class UTutorialSplash : UTutorialBase
---@field TitleTutorText URichTextBlock
local UTutorialSplash = {}



---@class UTwoSideProgressBar : UAbstractProgressBar
---@field RightSlider USlider
---@field LeftSlider USlider
---@field ProgressLine UImage
local UTwoSideProgressBar = {}



---@class UUIBaseManager : UBaseManager
---@field AllWidgets TMap<EWidgetNameEx, TWeakObjectPtr<UViewBase>>
---@field OpenViews TArray<UViewBase>
---@field OpenViewsBuffer TArray<UViewBase>
---@field WaterElementWidget UWaterElement
---@field LastAudioEvent UAkAudioEvent
local UUIBaseManager = {}



---@class UUIDActorComponent : UGuidActorComponent
local UUIDActorComponent = {}


---@class UUIMainMenuManager : UUIBaseManager
local UUIMainMenuManager = {}


---@class UUIManagerEx : UUIBaseManager
---@field PlayerParametersMPC UMaterialParameterCollectionInstance
local UUIManagerEx = {}

---@param InStorageItemContainerUID FItemContainerUID
function UUIManagerEx:OnOpenLootMenu(InStorageItemContainerUID) end


---@class UUISettingsWidget : USettingsPage
---@field Subtitle USettingElementOnOff
---@field SubtitleSize USettingElementSwitcher
---@field BackgroundOpacity USettingsElementPercent
---@field HUDOpacity USettingsElementPercent
---@field SubtitleName USettingElementOnOff
---@field CrosshairType USettingElementSwitcher
---@field HUD USettingElementOnOff
---@field ThreatIndicator USettingElementOnOff
---@field Crosshair USettingElementOnOff
---@field CrosshairColor USettingElementOnOff
---@field QuestNotification USettingElementOnOff
---@field CompassVisibility USettingElementSwitcher
---@field AmmoCounterVisibility USettingElementSwitcher
---@field SystemNotification USettingElementOnOff
---@field QuickSlotVisibility USettingElementSwitcher
---@field VitalsVisibility USettingElementSwitcher
---@field InteractDots USettingElementOnOff
local UUISettingsWidget = {}



---@class UUIStyleManager : UObject
---@field PathToPlatformIconDT FString
---@field PathToIconDT FString
---@field PathToCommonFontDT FString
---@field PathToCommonStailDT FString
---@field PathToProgresBarStailDT FString
---@field PathToNPCRelationColorsDT FString
---@field PathToNPCRelationColorsMarkerDT FString
---@field PathToFactionIconsDT FString
---@field PathToPCDefaultInputIconsDT FString
---@field PathToPCDisabledInputIconsDT FString
---@field GamepadToInputIconsOverride TMap<EGSCInputGamepadType, FGSC_WidgetInputIconsOverride>
---@field bShoudLoadTabe boolean
---@field bLoadDataTableInConfig boolean
local UUIStyleManager = {}



---@class UUpdatePopup : UPopupBase
---@field ContentBackground UImage
---@field NavPanel UUpdatePopupNavPanel
---@field ContentContainer UUpdatePopupContainer
---@field ScrollMultiplier float
---@field ContentTitleFont FSlateFontInfo
---@field ContentTitleColor FSlateColor
---@field ContentDescriptionFont FSlateFontInfo
---@field ContentDescriptionColor FSlateColor
local UUpdatePopup = {}

---@param InTabIndex int32
function UUpdatePopup:LoadTabData(InTabIndex) end
function UUpdatePopup:ChangeSelectedTab() end


---@class UUpdatePopupContainer : UUserWidget
---@field ContentSwitcher UWidgetSwitcher
---@field ContentTitleFont FSlateFontInfo
---@field ContentTitleColor FSlateColor
---@field ContentDescriptionFont FSlateFontInfo
---@field ContentDescriptionColor FSlateColor
---@field ScrollerPadding FMargin
---@field ContentPadding FMargin
---@field ScrollMultiplier float
---@field CurrentScroller UScrollBox
---@field TextureSize FVector2D
local UUpdatePopupContainer = {}

---@param InTabIndex int32
function UUpdatePopupContainer:SwitchTab(InTabIndex) end
---@param Direction FVector2D
function UUpdatePopupContainer:Navigation(Direction) end
---@param SID FString
function UUpdatePopupContainer:LoadTabsData(SID) end


---@class UUpdatePopupNavPanel : UNavigationPanel
---@field UpdatePopupTabClass TSubclassOf<UUpdatePopupTab>
local UUpdatePopupNavPanel = {}

---@param InButtonId FName
function UUpdatePopupNavPanel:EventOnButtonClicked(InButtonId) end


---@class UUpdatePopupTab : UButtonBase
---@field Background UImage
---@field ButtonHighlight UImage
---@field ButtonTextTitle UTextWidget
---@field ButtonTextDescription UTextWidget
---@field Desaturator URetainerBox
local UUpdatePopupTab = {}



---@class UUpdateUIHintIPU : UInputProcessingUnit
local UUpdateUIHintIPU = {}


---@class UUpgradeCompensationAsset : UDataAsset
---@field PerDifficultyMap TMap<EGameDifficulty, uint32>
local UUpgradeCompensationAsset = {}



---@class UUpgradeEffectWidget : UWidgetBase
---@field EffectIcon UImage
---@field EffectText UTextBlock
---@field PositiveEffectValueColor FLinearColor
---@field NegativeEffectValueColor FLinearColor
---@field NeutralEffectValueColor FLinearColor
local UUpgradeEffectWidget = {}



---@class UUpgradeItemTooltipWidget : UUserWidget
---@field TitleText UTextBlock
---@field DescriptionText UTextBlock
---@field MainVerticalBox UVerticalBox
---@field ContentVerticalBox UVerticalBox
---@field BlockingText URichTextWidget
---@field BottomLineImage UImage
---@field MiddleLineImage UImage
---@field UpgradeTooltipStateText UUpgradeTooltipStateText
---@field InappropriateTechnician UUpgradeTooltipTechnicianProblem
---@field BlueprintRequiredFactory UUpgradeTooltipBlueprintRequiredFactory
---@field RequiredUpgradesL10n FString
---@field BlockingUpgradesL10n FString
---@field UpgradesBlueprintL10n FString
---@field UnableToInstallL10n FString
---@field NoUpgradesL10n FString
---@field OrL10n FString
---@field DashString FString
---@field UpgradeEffectWidgetClass TSubclassOf<UUpgradeEffectWidget>
---@field bAddFirstLineToErrorText boolean
---@field EffectWidgets TArray<UUpgradeEffectWidget>
---@field LastUpgradePrototypeSID FString
local UUpgradeItemTooltipWidget = {}



---@class UUpgradeMenuWidget : UWidgetBase
---@field Sections TMap<EUpgradeTargetPartType, UUpgradeSection>
---@field SectionWidgetsArray TArray<UUpgradeSection>
---@field BlackFade FLinearColor
---@field ConfirmWarningPopupL10n FString
---@field ConfirmRepairAllPopupL10n FString
---@field UpgradeTooltipWidgetClass TSubclassOf<UUserWidget>
---@field RepairButton UHintInputController
---@field RepairPrice URepairPriceWidget
---@field RepairEquippedButton UHintInputController
---@field RepairEquippedPrice URepairPriceWidget
---@field HideInformationButton UHintInputController
---@field RemoveAttachmentButton UHintInputController
---@field InSelectInstallAttachmentButton UHintInputController
---@field CurrentSlot UUpgradeSlot
---@field PriceWidget UUpgradePriceWidget
---@field ItemNameText UTextWidget
---@field PlayerMoneyText UTextWidget
---@field UpgradedItemIcon ULayeredItemImage
---@field CanvasPanel UCanvasPanel
---@field ItemTooltip UItemsStatsUpgrades
---@field MenuBorder UBorder
---@field UpgradeTooltipWidget UUpgradeItemTooltipWidget
---@field ConfirmPopupContainer UOverlay
---@field ConfirmUpgradePopup UConfirmUpgradePopup
---@field IconDurability UImageWidget
---@field PlayerMoneyBox UHorizontalBox
---@field SlotsSwitcher UWidgetSwitcher
---@field ArtifactsSlotsAmount UTextWidget
---@field TensileStrength float
---@field RepairButtonL10N FString
---@field ConfirmPurchaseUpgradePopupL10n FString
---@field PriceStyle FString
---@field CurrencyImageId FString
---@field LastActiveSection UUpgradeSection
---@field bShowInfoOnClick boolean
---@field bPriceWidgetEnabled boolean
---@field SlotsForArtifactsAmountIncreased FName
---@field SlotsForArtifactsAmountDecreased FName
---@field SlotsForArtifactsAmountDefault FName
---@field LastHoveredSection UUpgradeSection
---@field SectionsCanvas UCanvasPanel
---@field BlackWeaponFade UImage
---@field WeaponUpgradeLayoutEditorTools UWeaponUpgradeLayoutEditorTools
local UUpgradeMenuWidget = {}

function UUpgradeMenuWidget:ShowSections() end
---@param Alpha float
---@param bIsShowing boolean
function UUpgradeMenuWidget:OnWeaponFadeProgress(Alpha, bIsShowing) end
function UUpgradeMenuWidget:OnUpgradeMouseExit() end
---@param UpgradeID FString
function UUpgradeMenuWidget:OnUpgradeMouseEnter(UpgradeID) end
---@param UpgradeID FString
---@param InCurrentSlot UUpgradeSlot
function UUpgradeMenuWidget:OnUpgradeClick(UpgradeID, InCurrentSlot) end
---@param Alpha float
---@param bIsShowing boolean
function UUpgradeMenuWidget:OnSectionFadeProgress(Alpha, bIsShowing) end
---@param Section UUpgradeSection
function UUpgradeMenuWidget:OnSectionClicked(Section) end
function UUpgradeMenuWidget:OnRevertLastUpgrade() end
function UUpgradeMenuWidget:OnRepairEquipped() end
function UUpgradeMenuWidget:OnRepair() end
---@param InGeometry FGeometry
---@param InMouseEvent FPointerEvent
---@return FEventReply
function UUpgradeMenuWidget:OnMouseBlackFadeDown(InGeometry, InMouseEvent) end
---@param UpgradeID FString
---@param InCurrentSlot UUpgradeSlot
function UUpgradeMenuWidget:OnApplyUpgrade(UpgradeID, InCurrentSlot) end
function UUpgradeMenuWidget:LogSectionPositions() end
function UUpgradeMenuWidget:LoadPrototypeEditor() end
function UUpgradeMenuWidget:LoadAttaches() end
function UUpgradeMenuWidget:HideSections() end
---@param Texture UTexture2D
---@param AttachIndex int32
function UUpgradeMenuWidget:DrawAttaches(Texture, AttachIndex) end
function UUpgradeMenuWidget:ClearAttaches() end
function UUpgradeMenuWidget:ChangeUpgradeModule() end


---@class UUpgradePage : UPDAPage
---@field UpgradePanel UPDAUpgradePanel
---@field ButtonAll UPDAUpgradesButton
---@field ButtonWeapon UPDAUpgradesButton
---@field ButtonArmor UPDAUpgradesButton
---@field ButtonHelmet UPDAUpgradesButton
---@field UpgradeMenu UUpgradeMenuWidget
---@field HintNavLeft UHintInputController
---@field HintNavRight UHintInputController
---@field HideInformation UHintInputController
---@field RepairButton UHintInputController
---@field RepairEquippedButton UHintInputController
---@field RemoveAttachment UHintInputController
---@field SelectInstalAttachment UHintInputController
---@field ToggleModuleHint UHintInputController
---@field ButtonHintExit UHintInputController
---@field NavigationHint UHintInputController
---@field UpgradeSwitcher UWidgetSwitcher
---@field RepairPrice URepairPriceWidget
---@field RepairEquippedPrice URepairPriceWidget
---@field PanelCategoryOverlay UOverlay
---@field SelectInput FName
---@field UpgradesIndex int32
---@field EmptyScreenIndex int32
---@field GreyValue float
---@field ExitTextHintl10nSID FString
---@field BackTextHintl10nSID FString
---@field RemoveAttachl10nSID FString
---@field InstallAttachl10nSID FString
---@field SelectAttachl10nSID FString
---@field MenuButtons TArray<UPDAUpgradesButton>
---@field HintHoldTime float
local UUpgradePage = {}

function UUpgradePage:UpdatePanel() end
function UUpgradePage:UnbindUpgradesNavigation() end
function UUpgradePage:UnbindConfirmPopup() end
function UUpgradePage:UIPDAUpgradesTreeNavigationUp() end
function UUpgradePage:UIPDAUpgradesTreeNavigationSelect() end
function UUpgradePage:UIPDAUpgradesTreeNavigationRight() end
function UUpgradePage:UIPDAUpgradesTreeNavigationLeft() end
function UUpgradePage:UIPDAUpgradesTreeNavigationDown() end
function UUpgradePage:UIPDAUpgradesSelect() end
function UUpgradePage:UIPDANavigationUp() end
function UUpgradePage:UIPDANavigationRight() end
function UUpgradePage:UIPDANavigationLeft() end
function UUpgradePage:UIPDANavigationDown() end
function UUpgradePage:UIPDANavigationButtonRelease() end
---@param bInVisible boolean
---@param bState boolean
function UUpgradePage:ShowModuleHint(bInVisible, bState) end
function UUpgradePage:RepairEquipped() end
function UUpgradePage:Repair() end
function UUpgradePage:Remove() end
function UUpgradePage:Hide() end
---@param InBind boolean
function UUpgradePage:HandleConfirmPopupBindings(InBind) end
function UUpgradePage:ExitImplementation() end
---@param ButtonId FName
function UUpgradePage:ClickButtonMenu(ButtonId) end
function UUpgradePage:ClearInput() end
function UUpgradePage:BindUpgradesNavigation() end
function UUpgradePage:BindConfirmPopup() end


---@class UUpgradePriceWidget : UWidgetBase
---@field Price UTextBlock
---@field Weight UTextBlock
---@field Description UTextBlock
---@field KgL10nSID FString
---@field DescriptionL10nSID FString
local UUpgradePriceWidget = {}



---@class UUpgradeSection : UWidgetBase
---@field OnSectionClicked FUpgradeSectionOnSectionClicked
---@field bIsEnabledSection boolean
---@field TargetPart EUpgradeTargetPartType
---@field UpgradesLineDirection ELineDirection
---@field ModulesLineDirection ELineDirection
---@field DotHoverSize FVector2D
---@field DotNormalSize FVector2D
---@field OnAnimationProgress FUpgradeSectionOnAnimationProgress
---@field ModulesVerticalBoxes TArray<UVerticalBox>
---@field UpgradesVerticalBoxes TArray<UVerticalBox>
---@field ConnectionLineUpgrade UImage
---@field UpgradesPanel UVerticalBox
---@field ConnectionLineModule UImage
---@field ModulesPanel UVerticalBox
---@field NewUpgradeNotification UTextBlock
---@field UpgradesTextBlock UTextBlock
---@field ModulesTextBlock UTextBlock
---@field Dot UImage
---@field DotButton UButton
---@field SlotWidgetClass TSubclassOf<UUpgradeSlot>
---@field SettingsAsset UUpgradesSettings
---@field Slots TArray<UUpgradeSlot>
---@field UpgradeL10n FText
---@field ModulesL10n FText
---@field NewNotificationL10n FText
---@field LastHighlightedSlot UUpgradeSlot
local UUpgradeSection = {}

function UUpgradeSection:ToggleSection() end
function UUpgradeSection:SectionUnhovered() end
function UUpgradeSection:SectionHovered() end
function UUpgradeSection:SectionClicked() end
function UUpgradeSection:RebuildSections() end
---@param ClickedSection UUpgradeSection
function UUpgradeSection:OnSectionClicked__DelegateSignature(ClickedSection) end
---@param Alpha float
---@param bShowing boolean
function UUpgradeSection:OnAnimationProgress__DelegateSignature(Alpha, bShowing) end


---@class UUpgradeSlot : UWidgetBase
---@field UpgradeImage UImage
---@field TopConnectionLine UImage
---@field MiddleConnectionLine UImage
---@field DownConnectionLine UImage
---@field Locked UImage
---@field Blueprint UImage
---@field Highlighted UImage
---@field Mod UImage
---@field Border UImage
---@field Discount UImage
---@field UpgradeButton UButton
---@field FadeImage UImage
---@field LastUpgradeOverlay UOverlay
---@field SettingsAsset UUpgradesSettings
---@field Data FUpgradeSlotData
local UUpgradeSlot = {}

function UUpgradeSlot:Unhighlight() end
---@param UgradeId FString
---@param InCurrentSlot UUpgradeSlot
function UUpgradeSlot:OnUpgradeClick__DelegateSignature(UgradeId, InCurrentSlot) end
function UUpgradeSlot:OnUpgradeButtonClick() end
function UUpgradeSlot:OnItemMouseLeave__DelegateSignature() end
---@param UgradeId FString
function UUpgradeSlot:OnItemMouseEnter__DelegateSignature(UgradeId) end
function UUpgradeSlot:Highlight() end


---@class UUpgradeTooltipBlueprintRequired : UUserWidget
---@field BlueprintImage UImageWidget
---@field BlueprintText UTextWidget
---@field BlueprintRequiredL10NString FString
local UUpgradeTooltipBlueprintRequired = {}



---@class UUpgradeTooltipBlueprintRequiredFactory : UUserWidget
---@field BlueprintRequiredVerticalBox UVerticalBox
---@field RequiredItemsBlockTitleText UTextBlock
---@field BlueprintRequiredWidgetClass TSubclassOf<UUpgradeTooltipBlueprintRequired>
---@field RequiredItemsL10n FString
local UUpgradeTooltipBlueprintRequiredFactory = {}



---@class UUpgradeTooltipStateText : UUserWidget
---@field UpgradeStateText UTextBlock
---@field TooltipTextColors TMap<EUpgradeTooltipState, FColor>
---@field TooltipStateTexts TMap<EUpgradeTooltipState, FString>
local UUpgradeTooltipStateText = {}



---@class UUpgradeTooltipTechnicianProblem : UUserWidget
---@field ErrorImage UImageWidget
---@field ErrorText UTextWidget
---@field TooltipTechnicianProblemTexts TMap<EUpgradeTooltipTechnicianProblem, FString>
local UUpgradeTooltipTechnicianProblem = {}



---@class UUpgradesIPU : UInputProcessingUnit
local UUpgradesIPU = {}


---@class UUpgradesMouseIPU : UInputProcessingUnit
local UUpgradesMouseIPU = {}


---@class UUpgradesSettings : UDataAsset
---@field UpgradeColorMap TMap<EUpgradeAvailability, FSlateColor>
---@field Purchased FSlateColor
---@field bLocked FSlateColor
---@field Available FSlateColor
---@field PurchasedModuleOn FSlateColor
---@field PurchasedModuleOff FSlateColor
---@field Unavailable FSlateColor
---@field LastUpdated FSlateColor
---@field PreInstalled FSlateColor
---@field ClosedNotEmptySection FSlateColor
---@field EmptySection FSlateColor
---@field OpenedSection FSlateColor
---@field HorizontalMaxNumber int32
---@field VerticalMaxNumber int32
---@field SectionAnimationDuration float
local UUpgradesSettings = {}



---@class UUpgradesWidget : UInventoryNew
local UUpgradesWidget = {}


---@class UUpscalingElementOnOff : USettingElementOnOff
---@field UpscalingMethodValue EPerformanceBoostUpscalingMethod
local UUpscalingElementOnOff = {}



---@class UUpscalingElementPercent : USettingsElementPercent
---@field UpscalingMethodValue EPerformanceBoostUpscalingMethod
local UUpscalingElementPercent = {}



---@class UUpscalingElementSwitcher : USettingElementSwitcher
---@field UpscalingMethodValue EPerformanceBoostUpscalingMethod
local UUpscalingElementSwitcher = {}



---@class UUserMarkerCounter : UWidgetBase
---@field CounterText UTextWidget
---@field CounterFormat FString
local UUserMarkerCounter = {}

---@param NewAmount int32
function UUserMarkerCounter:UpdateMarkerCounterWidget(NewAmount) end


---@class UUserMarkerSelector : UChildViewBase
---@field ButtonOverlay UOverlay
---@field Background UImage
---@field MarkerCounter UUserMarkerCounter
---@field TopButton UUserMarkerSelectorButton
---@field RightButton UUserMarkerSelectorButton
---@field LeftButton UUserMarkerSelectorButton
---@field BottomButton UUserMarkerSelectorButton
---@field SizeBox USizeBox
---@field ShowAnimation UWidgetAnimation
---@field ToGamepadCursor UWidgetAnimation
---@field bIsCursor boolean
---@field ShowAnimationSpeedMultiplier float
---@field HideAnimationSpeedMultiplier float
---@field CursorSelectorTransitionSpeedMultiplier float
---@field size FVector2D
---@field HoveredButton UUserMarkerSelectorButton
local UUserMarkerSelector = {}

---@param MarkType EMarkerType
---@param Coordinates FVector
function UUserMarkerSelector:ReleasedButton(MarkType, Coordinates) end
---@param InHoveredButton UUserMarkerSelectorButton
function UUserMarkerSelector:HoverButton(InHoveredButton) end


---@class UUserMarkerSelectorButton : UWidgetBase
---@field MarkerType EMarkerType
---@field MarkerPosition EMarkerPosition
---@field HoverColorStyleID FName
---@field DisableHoverColorStyleID FName
---@field NotHoverColorStyleID FName
---@field ButtonElement UButton
---@field MarkerImage UImage
---@field Background UImage
---@field RotationOverlay UOverlay
---@field HoverOptionAnimation UWidgetAnimation
---@field SelectAnimation UWidgetAnimation
---@field SelectAnimationSpeedMultiplier float
---@field HoverAnimationSpeedMultiplier float
---@field HideHoverAnimationSpeedMultiplier float
---@field HighlightDirectionParameterName FName
---@field BackgroundImageParameterName FName
---@field StartColorParameterName FName
---@field FinishColorParameterName FName
---@field HoverColorParameterName FName
local UUserMarkerSelectorButton = {}

function UUserMarkerSelectorButton:OnReleasedButtonElement() end
function UUserMarkerSelectorButton:OnHoveredButtonElement() end


---@class UUserSettingActionBlockerCondition : UActionBlockerConditionBase
---@field UserSettingType EUserSettingsType
local UUserSettingActionBlockerCondition = {}



---@class UUserWaterElement : UWidgetBase
---@field WaterMarks UOverlay
local UUserWaterElement = {}



---@class UUserWaterElementText : UWidgetBase
---@field WaterMarkText UTextBlock
---@field WaterElementMovement UWidgetAnimation
---@field AnimationSpeed float
local UUserWaterElementText = {}



---@class UVATAnimationsConfig : UPrimaryDataAsset
---@field MaterialNextAnimPropertyName FName
---@field MaterialNextAnimLastFramePropertyName FName
---@field MaterialPrevAnimPropertyName FName
---@field MaterialAnimBlendingPropertyName FName
---@field Animations TArray<FVATAnimation>
local UVATAnimationsConfig = {}



---@class UVehicleSoundPlacement : USceneComponent
---@field VehiclePullSound UAkAudioEvent
---@field VehicleReleaseSound UAkAudioEvent
local UVehicleSoundPlacement = {}



---@class UVictoryBPFunctionLibrary : UBlueprintFunctionLibrary
local UVictoryBPFunctionLibrary = {}

---@param ChildWidget UWidget
---@param PossibleParent UWidget
---@return boolean
function UVictoryBPFunctionLibrary:WidgetIsChildOf(ChildWidget, PossibleParent) end
---@param ChildWidget UWidget
---@param WidgetClass TSubclassOf<UUserWidget>
---@return UUserWidget
function UVictoryBPFunctionLibrary:WidgetGetParentOfClass(ChildWidget, WidgetClass) end
---@param ThePC APlayerController
---@param PosX float
---@param PosY float
---@return boolean
function UVictoryBPFunctionLibrary:Viewport__GetCenterOfViewport(ThePC, PosX, PosY) end
---@param SoundClassObject USoundClass
---@param NewVolume float
---@return boolean
function UVictoryBPFunctionLibrary:VictorySoundVolumeChange(SoundClassObject, NewVolume) end
---@param ToRemove FVictoryInputAxis
function UVictoryBPFunctionLibrary:VictoryRemoveAxisKeyBind(ToRemove) end
---@param ToRemove FVictoryInput
function UVictoryBPFunctionLibrary:VictoryRemoveActionKeyBind(ToRemove) end
---@param Original FVictoryInputAxis
---@param NewBinding FVictoryInputAxis
---@return boolean
function UVictoryBPFunctionLibrary:VictoryReBindAxisKey(Original, NewBinding) end
---@param Original FVictoryInput
---@param NewBinding FVictoryInput
---@return boolean
function UVictoryBPFunctionLibrary:VictoryReBindActionKey(Original, NewBinding) end
---@return FString
function UVictoryBPFunctionLibrary:VictoryPaths__ScreenShotsDir() end
---@return FString
function UVictoryBPFunctionLibrary:VictoryPaths__SavedDir() end
---@param KeyEvent FKeyEvent
---@return FVictoryInputAxis
function UVictoryBPFunctionLibrary:VictoryGetVictoryInputAxis(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FVictoryInput
function UVictoryBPFunctionLibrary:VictoryGetVictoryInput(KeyEvent) end
---@param Bindings TArray<FVictoryInputAxis>
function UVictoryBPFunctionLibrary:VictoryGetAllAxisKeyBindings(Bindings) end
---@param Key FKey
---@param ActionBindings TArray<FVictoryInput>
---@param AxisBindings TArray<FVictoryInputAxis>
function UVictoryBPFunctionLibrary:VictoryGetAllAxisAndActionMappingsForKey(Key, ActionBindings, AxisBindings) end
---@param Bindings TArray<FVictoryInput>
function UVictoryBPFunctionLibrary:VictoryGetAllActionKeyBindings(Bindings) end
---@param OriginalFileName FString
---@param NewName FString
---@param NewAbsoluteFolderPath FString
---@param HighResolution boolean
---@return boolean
function UVictoryBPFunctionLibrary:ScreenShots_Rename_Move_Most_Recent(OriginalFileName, NewName, NewAbsoluteFolderPath, HighResolution) end
---@param FileNames TArray<FString>
function UVictoryBPFunctionLibrary:SaveGameObject_GetAllSaveSlotFileNames(FileNames) end
---@param VictoryInputs TArray<FVictoryInput>
---@param Filename FString
function UVictoryBPFunctionLibrary:SaveConfigToFile(VictoryInputs, Filename) end
---@param WorldContextObject UObject
---@param WidgetClass TSubclassOf<UUserWidget>
function UVictoryBPFunctionLibrary:RemoveAllWidgetsOfClass(WorldContextObject, WidgetClass) end
---@param Value float
---@param InRangeA float
---@param InRangeB float
---@param OutRangeA float
---@param OutRangeB float
---@return float
function UVictoryBPFunctionLibrary:MapRangeClamped(Value, InRangeA, InRangeB, OutRangeA, OutRangeB) end
---@param ObjectClass UClass
---@param Path FName
---@param IsValid boolean
---@return UObject
function UVictoryBPFunctionLibrary:LoadObjectFromAssetPath(ObjectClass, Path, IsValid) end
---@param WorldContextObject UObject
---@param WidgetClass TSubclassOf<UUserWidget>
---@return boolean
function UVictoryBPFunctionLibrary:IsWidgetOfClassInViewport(WorldContextObject, WidgetClass) end
---@param Obj UObject
---@return FName
function UVictoryBPFunctionLibrary:GetObjectPath(Obj) end
---@param WorldContextObject UObject
---@param WidgetClass TSubclassOf<UUserWidget>
---@param TopLevelOnly boolean
---@return UUserWidget
function UVictoryBPFunctionLibrary:GetFirstWidgetOfClass(WorldContextObject, WidgetClass, TopLevelOnly) end
---@param WorldContextObject UObject
---@param WidgetClass TSubclassOf<UUserWidget>
---@param FoundWidgets TArray<UUserWidget>
---@param TopLevelOnly boolean
function UVictoryBPFunctionLibrary:GetAllWidgetsOfClass(WorldContextObject, WidgetClass, FoundWidgets, TopLevelOnly) end


---@class UVideoLoadingScreenWidget : UTimedLoadingScreenWidget
---@field BinkMediaPlayer UBinkMediaPlayer
local UVideoLoadingScreenWidget = {}

function UVideoLoadingScreenWidget:EndVideo() end


---@class UViewBase : UWidgetBase
---@field ViewOpenSettings FViewOpenSettings
---@field WidgetName EWidgetNameEx
local UViewBase = {}

function UViewBase:UIClose() end
function UViewBase:PreCloseUpdateView() end


---@class UViewBaseExtended : UViewBase
local UViewBaseExtended = {}


---@class UVoiceModulatorControllerSubsystem : UWorldSubsystem
local UVoiceModulatorControllerSubsystem = {}


---@class UVoiceoverSpeechComponent : USpeechComponent
---@field AkVoiceoverSpeakerComponent UAkComponent
local UVoiceoverSpeechComponent = {}

---@param CallbackType EAkCallbackType
---@param CallbackInfo UAkCallbackInfo
function UVoiceoverSpeechComponent:OnAKEventFinished(CallbackType, CallbackInfo) end


---@class UWLCylinderShapeComponent : UDebugDrawComponent
local UWLCylinderShapeComponent = {}


---@class UWalkIPU : UBehaviorBasedIPU
local UWalkIPU = {}


---@class UWanderingLightInstanceSpline : USplineComponent
local UWanderingLightInstanceSpline = {}


---@class UWaterComponent : UActorComponent
---@field bAffectedByRain boolean
---@field RegularWaterMaterial UMaterialInterface
local UWaterComponent = {}

---@param OverlappedComponent AActor
---@param OtherActor AActor
function UWaterComponent:OnEndOverlap(OverlappedComponent, OtherActor) end
---@param OverlappedComponent AActor
---@param OtherActor AActor
function UWaterComponent:OnBeginOverlap(OverlappedComponent, OtherActor) end


---@class UWaterContactController : UActorComponent
---@field ActiveWaterBodies TArray<UWaterComponent>
local UWaterContactController = {}

---@return FVector
function UWaterContactController:ProjectOwnerPositionOnWaterSurface() end
---@return FWaterSurfaceObstructionResult
function UWaterContactController:IsPathToWaterSurfaceObstructed() end


---@class UWaterElement : UWidgetBase
---@field TextBlock UTextBlock
local UWaterElement = {}



---@class UWaterManager : UBaseManager
local UWaterManager = {}


---@class UWaterTraceComponent : UActorComponent
---@field PreviousLocation FVector
local UWaterTraceComponent = {}



---@class UWeaponAttachAnimCollection : UObject
---@field AttachAnimations FComplexAttachAnimations
local UWeaponAttachAnimCollection = {}



---@class UWeaponUpgradeLayoutEditorTools : UObject
---@field bSetSectionPositions boolean
---@field ItemSID FString
---@field AttachPrototypesNames TArray<FString>
local UWeaponUpgradeLayoutEditorTools = {}



---@class UWeatherConsoleCommands : UCheatManagerExtension
local UWeatherConsoleCommands = {}

function UWeatherConsoleCommands:XResumeCloudShadowsMovement() end
function UWeatherConsoleCommands:XPauseCloudShadowsMovement() end


---@class UWeatherParameterNamesDataAsset : UDataAsset
---@field AtmosphereBrightness FName
---@field EmissiveBrightness FName
---@field ZenithColor FName
---@field MoonRainbowIntensity FName
---@field HorizonColor FName
---@field CloudMapBias FName
---@field CloudMapDensity FName
---@field NoiseFlowMapAMultiplier FName
---@field NoiseFlowMapABias FName
---@field NoiseFlowMapADetail FName
---@field NoiseFlowMapABottomNoise FName
---@field NoiseFlowMapBBias FName
---@field NoiseFlowMapBDetail FName
---@field NoiseFlowMapBScale FName
---@field BillowyStormyCloudsHeight FName
---@field DensityVariationScale FName
---@field DensityVariationPower FName
---@field DensityVariationOutFirst FName
---@field DensityVariationOutSecond FName
---@field DensityVariationDarkMinDensity FName
---@field CloudBaseCapMaskRadius FName
---@field CloudBaseSpeedMultiplier FName
---@field CloudBaseECX FName
---@field CloudBasePreExponentialDensity FName
---@field CloudBaseAlbedo FName
---@field CloudBaseSecondAlbedo FName
---@field EmissionParamPositionIntensity FName
---@field EmissionParamColor FName
---@field PhaseBlend FName
---@field PhaseG FName
---@field PhaseGSecond FName
---@field MultiScatteringContribution FName
---@field MultiScatteringOcclusion FName
---@field MultiScatteringOcclusionPower FName
---@field MultiScatteringEccentricity FName
---@field CloudMaskRadius FName
---@field MoonOpacity FName
---@field MoonLatitude FName
---@field MoonLongitude FName
---@field SunShadowAmount FName
---@field SkyAtmColorPower FName
---@field WindIntensity FName
---@field WindDirection FName
---@field FoliageWindDirection FName
---@field FoliageWindIntensity FName
---@field PreviousFoliageWindDirection FName
---@field PreviousFoliageWindIntensity FName
---@field RainActivate FName
---@field TimeOfDay FName
---@field Wetness FName
---@field WaterWindNormalMultiplier FName
---@field RainWindDirection FName
---@field RainWindStrength FName
---@field RainSpawnRate FName
---@field LightningSpawnRate FName
---@field LightningColor FName
---@field StormSpawnRate FName
---@field CloudShift FName
---@field WaterShift FName
---@field CloudSpeedMult FName
local UWeatherParameterNamesDataAsset = {}



---@class UWeatherPresetDataAsset : UDataAsset
---@field WeatherState FWeatherState
local UWeatherPresetDataAsset = {}



---@class UWeatherSelectionPostProcessData : UDataAsset
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field Settings FPostProcessSettings
local UWeatherSelectionPostProcessData = {}



---@class UWeightBar : UWidgetBase
---@field BackgroundImage UImage
---@field HighlightImage UImage
---@field DifferenceImage UImage
---@field TrianglePointer UImage
---@field BarOverlay UOverlay
---@field CurrentWeightText UTextWidget
---@field MaxWeightText UTextWidget
---@field CurrentWeightTextPosition float
---@field TrianglePosition float
---@field BackgroundSegmentColor1 FLinearColor
---@field OneItemDifferenceColor FLinearColor
---@field BackgroundSegmentColor2 FLinearColor
---@field BackgroundSegmentColor3 FLinearColor
---@field OverweightTextColor FLinearColor
---@field NonOverweightTextColor FLinearColor
---@field HighlightSegmentEnd float
---@field HighlightOpacity float
---@field HighlightColor FLinearColor
---@field DifferenceStart float
---@field DifferenceEnd float
---@field DifferencePositiveColor FLinearColor
---@field DifferenceNegativeColor FLinearColor
local UWeightBar = {}



---@class UWetnessComponent : UActorComponent
local UWetnessComponent = {}


---@class UWetnessProximityObserverComponent : UActorComponent
local UWetnessProximityObserverComponent = {}


---@class UWhatsNewAction : UMenuButtonActionBase
local UWhatsNewAction = {}


---@class UWidgetBase : UUserWidget
local UWidgetBase = {}

function UWidgetBase:UpdateWidget() end


---@class UWidgetController : UObject
---@field Widget UUserWidget
local UWidgetController = {}



---@class UWidgetPool : UUserWidget
---@field WidgetInPoolClass TSubclassOf<UUserWidget>
local UWidgetPool = {}

---@return UUserWidget
function UWidgetPool:CreateWidgetByPool() end


---@class UWildlifeBehaviourComponent : UActorComponent
local UWildlifeBehaviourComponent = {}


---@class UWindowDamageComponent : UActorComponent
---@field CheckRate float
---@field PreviousLocation FVector
---@field CheckTimerHandle FTimerHandle
local UWindowDamageComponent = {}



---@class UWorldCompositionAnalyzer : UBaseTickableManager
local UWorldCompositionAnalyzer = {}

function UWorldCompositionAnalyzer:OnLevelLoaded() end


---@class UWorldMap : UWidgetBase
---@field WorldMapSizeBox USizeBox
---@field MarkerStorage UCanvasPanel
---@field ZoneStorage UCanvasPanel
---@field MapContainer UOverlay
---@field PlayerPosition UWidget
---@field AddWorldAngle float
---@field LandmarkOffset FVector2D
---@field OnMapMarkerMarker FWorldMapOnMapMarkerMarker
---@field OnMapMarkerClick FWorldMapOnMapMarkerClick
---@field Markers TArray<UWorldMapMarker>
---@field Landmarks TArray<UWorldMapMarker>
---@field FollowMarker FUID
---@field CurrHoverMarker UWorldMapMarker
local UWorldMap = {}

---@param bInHovered boolean
---@param InHoverMarkerWidget UWorldMapMarker
function UWorldMap:MarkerHover(bInHovered, InHoverMarkerWidget) end
---@param HoverMarkerWidget UWorldMapMarker
function UWorldMap:MarkerClick(HoverMarkerWidget) end


---@class UWorldMapHubMarker : UWorldMapMarker
---@field MiniMarkerMain UImage
---@field MiniMarkerSide UImage
local UWorldMapHubMarker = {}



---@class UWorldMapIPU : UInputProcessingUnit
local UWorldMapIPU = {}


---@class UWorldMapManager : UBaseTickableManager
---@field WorldMapMarkerClass TSubclassOf<UWorldMapMarker>
---@field WorldMapRegionMarkerClass TSubclassOf<UWorldMapMarker>
---@field WorldMapLocationMarkerClass TSubclassOf<UWorldMapMarker>
---@field WorldMapHubMarkerClass TSubclassOf<UWorldMapMarker>
---@field MarkerCompassWidgetClass TSubclassOf<UMarkerCompassWidget>
---@field MarkerIconsDataTable UDataTable
---@field MarkerSettingsAsset UMarkerSettings
---@field WorldMapScene AWorldMapScene
---@field RegionTexture USRLEAsset
---@field TrackedMarkers TMap<ETrackGroup, FUID>
local UWorldMapManager = {}

---@param DataLayer UDataLayerInstance
---@param State EDataLayerRuntimeState
function UWorldMapManager:OnDataLayersUpdated(DataLayer, State) end


---@class UWorldMapMarker : UWidgetBase
---@field OnHoverMarker FWorldMapMarkerOnHoverMarker
---@field OnClickMarker FWorldMapMarkerOnClickMarker
---@field ZoneWidgetClass TSubclassOf<UWorldMapMarkerZone>
---@field MarkerIcon UImage
---@field MarkerSizeBox USizeBox
---@field ClickZone UButton
---@field MarkerAlignment FVector2D
---@field MarkerSize float
---@field bEnableHoverScale boolean
---@field HoverScaleValue float
---@field bEnableMarkerClick boolean
---@field bIsScale boolean
---@field ParentCanvasSlot UCanvasPanelSlot
---@field ZoneWidget UWorldMapMarkerZone
---@field ZoneCanvas UCanvasPanel
local UWorldMapMarker = {}

function UWorldMapMarker:MarkerClick() end


---@class UWorldMapMarkerSelector : UWidgetBase
local UWorldMapMarkerSelector = {}


---@class UWorldMapMarkerZone : UWidgetBase
---@field ZoneMaterial UImage
---@field SizeBox USizeBox
---@field MaterialScaleFieldName FName
---@field MaterialFillOpacityFieldName FName
---@field MaterialColorFieldName FName
---@field ParentCanvasSlot UCanvasPanelSlot
---@field ZoneCanvas UCanvasPanel
local UWorldMapMarkerZone = {}



---@class UWorldMapPage : UPDAPage
---@field WorldMapTooltip UWorldMapTooltip
---@field MapLegend UMapLegend
---@field ZoomContainerBox UWidget
---@field ZoomContainer UWorldMapZoomContainer
---@field ZoomIndicator UZoomIndicator
---@field HintZone USizeBox
---@field ShowMarkerSelectorHintGamepad UHintInputController
---@field MoveToPlayerPositionHint UHintInputController
---@field ShowMarkerSelectorHint UHintInputController
---@field HideMarkerSelectorHint UHintInputController
---@field SetFollowLandmarkHint UHintInputController
---@field SelectMarkerHint UHintInputController
---@field DeleteSelectedLandmarkHint UHintInputController
---@field ButtonToggleTracking UHintInputController
---@field ChooseMarkerHint UHintInputController
---@field ChangeZoomLevelHint UHintInputController
---@field GamepadNavigationHint UHintInputController
---@field ShowLegendHint UHintInputController
---@field ShowGotoJournalTaskHint UHintInputController
---@field ButtonHintExit UHintInputController
---@field DefaultPosition FVector2D
---@field DefaultZoomLVL int32
---@field bShouldOpenDefaultZoomLVL boolean
---@field bEnablePlayerLandmarks boolean
---@field HintZoomSID FString
---@field HintScrollLegendSID FString
---@field HintDisable FName
---@field HintTrack FName
---@field MarkerHoverColors TMap<EMarkerType, FSlateColor>
---@field MarkerUnhoverColors TMap<EMarkerType, FSlateColor>
local UWorldMapPage = {}

function UWorldMapPage:UpdatePlatformInputMode() end
function UWorldMapPage:UIPDAToggleMarkTracking() end
function UWorldMapPage:UIPDAToggleLegend() end
function UWorldMapPage:UIPDAOpenQuestInJournal() end
function UWorldMapPage:UIPDAOpenPlayerMarkerSelector() end
function UWorldMapPage:UIPDANavigationUpReleased() end
function UWorldMapPage:UIPDANavigationUp() end
function UWorldMapPage:UIPDANavigationRightReleased() end
function UWorldMapPage:UIPDANavigationRight() end
function UWorldMapPage:UIPDANavigationLeftReleased() end
function UWorldMapPage:UIPDANavigationLeft() end
function UWorldMapPage:UIPDANavigationDownReleased() end
function UWorldMapPage:UIPDANavigationDown() end
function UWorldMapPage:UIPDAMoveToPlayerPosition() end
function UWorldMapPage:UIPDAMapZoomOut() end
function UWorldMapPage:UIPDAMapZoomIn() end
function UWorldMapPage:UIPDADeletePlayerMarker() end
function UWorldMapPage:UIPDACreateTrackedPlayerMarker() end
---@param LandmarkType EMarkerType
---@param CreateMarkedLocation FVector
function UWorldMapPage:UIPDACreatePlayerMarker(LandmarkType, CreateMarkedLocation) end
function UWorldMapPage:OnPressExit() end
function UWorldMapPage:OnMarkerSelectorShow() end
function UWorldMapPage:OnMarkerSelectorHide() end
function UWorldMapPage:OnLegendUnhover() end
function UWorldMapPage:OnLegendHover() end
---@param bHovered boolean
---@param HoverMarkerWidget UWorldMapMarker
function UWorldMapPage:MarkerHover(bHovered, HoverMarkerWidget) end
---@param HoverMarkerWidget UWorldMapMarker
function UWorldMapPage:MarkerClick(HoverMarkerWidget) end


---@class UWorldMapRegionMarker : UWorldMapMarker
---@field RegionName UTextWidget
local UWorldMapRegionMarker = {}



---@class UWorldMapScrollIPU : UInputProcessingUnit
local UWorldMapScrollIPU = {}


---@class UWorldMapTooltip : UWidgetBase
---@field HeaderBackground UWorldMapTooltipHeader
---@field BodyPlainText UTextWidget
---@field TooltipBodySwitcher UWidgetSwitcher
---@field TooltipFooterSwitcher UWidgetSwitcher
---@field ChildMarkerBox UUniformGridPanel
---@field FactionImage UImage
---@field SubtitleText UTextWidget
---@field TitleText UTextWidget
---@field MarkerImage UImage
---@field QuestStage UTaskMenuWidget
---@field PlayerStorageData UPlayerStorageData
---@field AnomalyDetails UTooltipRecord
---@field BodyMainBox UPanelWidget
---@field FooterMainBox UPanelWidget
---@field DisplayTooltipTitle TMap<EMarkerType, FName>
---@field MainQuestColorStyle FName
---@field SecondaryColorQuestStyle FName
local UWorldMapTooltip = {}

---@param SlateVisibility ESlateVisibility
function UWorldMapTooltip:OnVisibilityChangedCallback(SlateVisibility) end


---@class UWorldMapTooltipHeader : UWidgetBase
---@field TopBackgroundImage UImage
---@field MiddleBackgroundImage UImage
---@field BottomBackgroundImage UImage
---@field TopBackgroundImageColor UImage
---@field MiddleBackgroundImageColor UImage
---@field BottomBackgroundImageColor UImage
---@field TopBackgroundImageBlack UImage
---@field MiddleBackgroundImageBlack UImage
---@field BottomBackgroundImageBlack UImage
---@field DotsImage UImage
local UWorldMapTooltipHeader = {}



---@class UWorldMapZoomContainer : UWidgetBase
---@field MapTexture UImage
---@field WorldMap UWorldMap
---@field GamepadCursor UUserMarkerSelector
---@field CachedTargetMarker TWeakObjectPtr<UWorldMapMarker>
---@field CachedHoveredMarker TWeakObjectPtr<UWorldMapMarker>
local UWorldMapZoomContainer = {}

function UWorldMapZoomContainer:MoveToPlayerLocation() end
function UWorldMapZoomContainer:CenterOnCachedLocation() end


---@class UWoundedHoldComponent : UHoldComponent
local UWoundedHoldComponent = {}


---@class UXboxSaveLoadIO : USaveLoadIO
local UXboxSaveLoadIO = {}


---@class UZoomIndicator : UWidgetBase
---@field ZoomPointer UHorizontalBox
---@field TextCounter UTextWidget
---@field TextPrefix FString
---@field PointerZoomLevelOffset TArray<float>
local UZoomIndicator = {}



