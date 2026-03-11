---@meta

---@class APhysicsControlActor : AActor
---@field ControlComponent UPhysicsControlComponent
---@field ControlInitializerComponent UPhysicsControlInitializerComponent
local APhysicsControlActor = {}



---@class FInitialBodyModifier
---@field Actor AActor
---@field MeshComponentName FName
---@field BoneName FName
---@field MovementType EPhysicsMovementType
---@field GravityMultiplier float
---@field KinematicTargetPosition FVector
---@field KinematicTargetOrientation FQuat
---@field bUseSkeletalAnimation boolean
local FInitialBodyModifier = {}



---@class FInitialCharacterControls
---@field CharacterActor AActor
---@field SkeletalMeshComponentName FName
---@field LimbSetupData TArray<FPhysicsControlLimbSetupData>
---@field WorldSpaceControlData FPhysicsControlData
---@field WorldSpaceControlSettings FPhysicsControlSettings
---@field bEnableWorldSpaceControls boolean
---@field ParentSpaceControlData FPhysicsControlData
---@field ParentSpaceControlSettings FPhysicsControlSettings
---@field bEnableParentSpaceControls boolean
---@field PhysicsMovementType EPhysicsMovementType
local FInitialCharacterControls = {}



---@class FInitialPhysicsControl
---@field ParentActor AActor
---@field ParentMeshComponentName FName
---@field ParentBoneName FName
---@field ChildActor AActor
---@field ChildMeshComponentName FName
---@field ChildBoneName FName
---@field ControlData FPhysicsControlData
---@field ControlMultiplier FPhysicsControlMultiplier
---@field ControlTarget FPhysicsControlTarget
---@field ControlSettings FPhysicsControlSettings
local FInitialPhysicsControl = {}



---@class FPhysicsControl
---@field ParentMeshComponent UMeshComponent
---@field ParentBoneName FName
---@field ChildMeshComponent UMeshComponent
---@field ChildBoneName FName
---@field ControlData FPhysicsControlData
---@field ControlMultiplier FPhysicsControlMultiplier
---@field ControlTarget FPhysicsControlTarget
---@field ControlSettings FPhysicsControlSettings
local FPhysicsControl = {}



---@class FPhysicsControlData
---@field LinearStrength float
---@field LinearDampingRatio float
---@field LinearExtraDamping float
---@field MaxForce float
---@field AngularStrength float
---@field AngularDampingRatio float
---@field AngularExtraDamping float
---@field MaxTorque float
local FPhysicsControlData = {}



---@class FPhysicsControlLimbBones
local FPhysicsControlLimbBones = {}


---@class FPhysicsControlLimbSetupData
---@field LimbName FName
---@field StartBone FName
---@field bIncludeParentBone boolean
local FPhysicsControlLimbSetupData = {}



---@class FPhysicsControlMultiplier
---@field LinearStrengthMultiplier FVector
---@field LinearDampingRatioMultiplier FVector
---@field LinearExtraDampingMultiplier FVector
---@field MaxForceMultiplier FVector
---@field AngularStrengthMultiplier float
---@field AngularDampingRatioMultiplier float
---@field AngularExtraDampingMultiplier float
---@field MaxTorqueMultiplier float
local FPhysicsControlMultiplier = {}



---@class FPhysicsControlNames
---@field Names TArray<FName>
local FPhysicsControlNames = {}



---@class FPhysicsControlSettings
---@field ControlPoint FVector
---@field bUseSkeletalAnimation boolean
---@field SkeletalAnimationVelocityMultiplier float
---@field bDisableCollision boolean
---@field bAutoDisable boolean
local FPhysicsControlSettings = {}



---@class FPhysicsControlTarget
---@field TargetPosition FVector
---@field TargetVelocity FVector
---@field TargetOrientation FRotator
---@field TargetAngularVelocity FVector
---@field bApplyControlPointToTarget boolean
local FPhysicsControlTarget = {}



---@class UPhysicsControlComponent : USceneComponent
---@field TeleportDistanceThreshold float
---@field TeleportRotationThreshold float
---@field bShowDebugVisualization boolean
---@field VisualizationSizeScale float
---@field bShowDebugControlList boolean
---@field DebugControlDetailFilter FString
---@field bShowDebugBodyModifierList boolean
---@field DebugBodyModifierDetailFilter FString
---@field VelocityPredictionTime float
---@field MaxNumControlsOrModifiersPerName int32
local UPhysicsControlComponent = {}

---@param DeltaTime float
function UPhysicsControlComponent:UpdateTargetCaches(DeltaTime) end
---@param DeltaTime float
function UPhysicsControlComponent:UpdateControls(DeltaTime) end
---@param Name FName
---@param bUseSkeletalAnimation boolean
---@param SkeletalAnimationVelocityMultiplier float
---@return boolean
function UPhysicsControlComponent:SetControlUseSkeletalAnimation(Name, bUseSkeletalAnimation, SkeletalAnimationVelocityMultiplier) end
---@param Set FName
---@param ControlTarget FPhysicsControlTarget
---@param bEnableControl boolean
function UPhysicsControlComponent:SetControlTargetsInSet(Set, ControlTarget, bEnableControl) end
---@param Names TArray<FName>
---@param ControlTarget FPhysicsControlTarget
---@param bEnableControl boolean
function UPhysicsControlComponent:SetControlTargets(Names, ControlTarget, bEnableControl) end
---@param SetName FName
---@param position FVector
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
function UPhysicsControlComponent:SetControlTargetPositionsInSet(SetName, position, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Names TArray<FName>
---@param Positions TArray<FVector>
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
---@return boolean
function UPhysicsControlComponent:SetControlTargetPositionsFromArray(Names, Positions, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param SetName FName
---@param position FVector
---@param Orientation FRotator
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
function UPhysicsControlComponent:SetControlTargetPositionsAndOrientationsInSet(SetName, position, Orientation, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Names TArray<FName>
---@param Positions TArray<FVector>
---@param Orientations TArray<FRotator>
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
---@return boolean
function UPhysicsControlComponent:SetControlTargetPositionsAndOrientationsFromArray(Names, Positions, Orientations, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Names TArray<FName>
---@param position FVector
---@param Orientation FRotator
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
function UPhysicsControlComponent:SetControlTargetPositionsAndOrientations(Names, position, Orientation, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Names TArray<FName>
---@param position FVector
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
function UPhysicsControlComponent:SetControlTargetPositions(Names, position, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Name FName
---@param position FVector
---@param Orientation FRotator
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
---@return boolean
function UPhysicsControlComponent:SetControlTargetPositionAndOrientation(Name, position, Orientation, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Name FName
---@param position FVector
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
---@return boolean
function UPhysicsControlComponent:SetControlTargetPosition(Name, position, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Name FName
---@param ParentPosition FVector
---@param ParentOrientation FRotator
---@param ChildPosition FVector
---@param ChildOrientation FRotator
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@return boolean
function UPhysicsControlComponent:SetControlTargetPoses(Name, ParentPosition, ParentOrientation, ChildPosition, ChildOrientation, VelocityDeltaTime, bEnableControl) end
---@param SetName FName
---@param Orientation FRotator
---@param AngularVelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
function UPhysicsControlComponent:SetControlTargetOrientationsInSet(SetName, Orientation, AngularVelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Names TArray<FName>
---@param Orientations TArray<FRotator>
---@param VelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
---@return boolean
function UPhysicsControlComponent:SetControlTargetOrientationsFromArray(Names, Orientations, VelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Names TArray<FName>
---@param Orientation FRotator
---@param AngularVelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
function UPhysicsControlComponent:SetControlTargetOrientations(Names, Orientation, AngularVelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Name FName
---@param Orientation FRotator
---@param AngularVelocityDeltaTime float
---@param bEnableControl boolean
---@param bApplyControlPointToTarget boolean
---@return boolean
function UPhysicsControlComponent:SetControlTargetOrientation(Name, Orientation, AngularVelocityDeltaTime, bEnableControl, bApplyControlPointToTarget) end
---@param Name FName
---@param ControlTarget FPhysicsControlTarget
---@param bEnableControl boolean
---@return boolean
function UPhysicsControlComponent:SetControlTarget(Name, ControlTarget, bEnableControl) end
---@param Names TArray<FName>
---@param bUseSkeletalAnimation boolean
---@param SkeletalAnimationVelocityMultiplier float
function UPhysicsControlComponent:SetControlsUseSkeletalAnimation(Names, bUseSkeletalAnimation, SkeletalAnimationVelocityMultiplier) end
---@param Set FName
---@param bUseSkeletalAnimation boolean
---@param SkeletalAnimationVelocityMultiplier float
function UPhysicsControlComponent:SetControlsInSetUseSkeletalAnimation(Set, bUseSkeletalAnimation, SkeletalAnimationVelocityMultiplier) end
---@param Set FName
---@param bEnable boolean
function UPhysicsControlComponent:SetControlsInSetEnabled(Set, bEnable) end
---@param Set FName
---@param bDisableCollision boolean
function UPhysicsControlComponent:SetControlsInSetDisableCollision(Set, bDisableCollision) end
---@param Set FName
---@param bAutoDisable boolean
function UPhysicsControlComponent:SetControlsInSetAutoDisable(Set, bAutoDisable) end
---@param Names TArray<FName>
---@param bEnable boolean
function UPhysicsControlComponent:SetControlsEnabled(Names, bEnable) end
---@param Names TArray<FName>
---@param bDisableCollision boolean
function UPhysicsControlComponent:SetControlsDisableCollision(Names, bDisableCollision) end
---@param Names TArray<FName>
---@param bAutoDisable boolean
function UPhysicsControlComponent:SetControlsAutoDisable(Names, bAutoDisable) end
---@param Name FName
---@param position FVector
---@return boolean
function UPhysicsControlComponent:SetControlPoint(Name, position) end
---@param Set FName
---@param ControlMultiplier FPhysicsControlMultiplier
---@param bEnableControl boolean
function UPhysicsControlComponent:SetControlMultipliersInSet(Set, ControlMultiplier, bEnableControl) end
---@param Names TArray<FName>
---@param ControlMultiplier FPhysicsControlMultiplier
---@param bEnableControl boolean
function UPhysicsControlComponent:SetControlMultipliers(Names, ControlMultiplier, bEnableControl) end
---@param Name FName
---@param ControlMultiplier FPhysicsControlMultiplier
---@param bEnableControl boolean
---@return boolean
function UPhysicsControlComponent:SetControlMultiplier(Name, ControlMultiplier, bEnableControl) end
---@param Name FName
---@param Strength float
---@param DampingRatio float
---@param ExtraDamping float
---@param MaxForce float
---@param bEnableControl boolean
---@return boolean
function UPhysicsControlComponent:SetControlLinearData(Name, Strength, DampingRatio, ExtraDamping, MaxForce, bEnableControl) end
---@param Name FName
---@param bEnable boolean
---@return boolean
function UPhysicsControlComponent:SetControlEnabled(Name, bEnable) end
---@param Name FName
---@param bDisableCollision boolean
---@return boolean
function UPhysicsControlComponent:SetControlDisableCollision(Name, bDisableCollision) end
---@param Set FName
---@param ControlData FPhysicsControlData
---@param bEnableControl boolean
function UPhysicsControlComponent:SetControlDatasInSet(Set, ControlData, bEnableControl) end
---@param Names TArray<FName>
---@param ControlData FPhysicsControlData
---@param bEnableControl boolean
function UPhysicsControlComponent:SetControlDatas(Names, ControlData, bEnableControl) end
---@param Name FName
---@param ControlData FPhysicsControlData
---@param bEnableControl boolean
---@return boolean
function UPhysicsControlComponent:SetControlData(Name, ControlData, bEnableControl) end
---@param Name FName
---@param bAutoDisable boolean
---@return boolean
function UPhysicsControlComponent:SetControlAutoDisable(Name, bAutoDisable) end
---@param Name FName
---@param Strength float
---@param DampingRatio float
---@param ExtraDamping float
---@param MaxTorque float
---@param bEnableControl boolean
---@return boolean
function UPhysicsControlComponent:SetControlAngularData(Name, Strength, DampingRatio, ExtraDamping, MaxTorque, bEnableControl) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@param TM FTransform
---@param Velocity FVector
---@param AngularVelocity FVector
---@return boolean
function UPhysicsControlComponent:SetCachedBoneData(SkeletalMeshComponent, BoneName, TM, Velocity, AngularVelocity) end
---@param Name FName
---@param bUseSkeletalAnimation boolean
---@return boolean
function UPhysicsControlComponent:SetBodyModifierUseSkeletalAnimation(Name, bUseSkeletalAnimation) end
---@param Name FName
---@param bUpdateKinematicFromSimulation boolean
---@return boolean
function UPhysicsControlComponent:SetBodyModifierUpdateKinematicFromSimulation(Name, bUpdateKinematicFromSimulation) end
---@param Names TArray<FName>
---@param bUseSkeletalAnimation boolean
function UPhysicsControlComponent:SetBodyModifiersUseSkeletalAnimation(Names, bUseSkeletalAnimation) end
---@param Names TArray<FName>
---@param bUpdateKinematicFromSimulation boolean
function UPhysicsControlComponent:SetBodyModifiersUpdateKinematicFromSimulation(Names, bUpdateKinematicFromSimulation) end
---@param Names TArray<FName>
---@param PhysicsBlendWeight float
function UPhysicsControlComponent:SetBodyModifiersPhysicsBlendWeight(Names, PhysicsBlendWeight) end
---@param Names TArray<FName>
---@param MovementType EPhysicsMovementType
function UPhysicsControlComponent:SetBodyModifiersMovementType(Names, MovementType) end
---@param Set FName
---@param bUseSkeletalAnimation boolean
function UPhysicsControlComponent:SetBodyModifiersInSetUseSkeletalAnimation(Set, bUseSkeletalAnimation) end
---@param Set FName
---@param bUpdateKinematicFromSimulation boolean
function UPhysicsControlComponent:SetBodyModifiersInSetUpdateKinematicFromSimulation(Set, bUpdateKinematicFromSimulation) end
---@param Set FName
---@param PhysicsBlendWeight float
function UPhysicsControlComponent:SetBodyModifiersInSetPhysicsBlendWeight(Set, PhysicsBlendWeight) end
---@param Set FName
---@param MovementType EPhysicsMovementType
function UPhysicsControlComponent:SetBodyModifiersInSetMovementType(Set, MovementType) end
---@param Set FName
---@param GravityMultiplier float
function UPhysicsControlComponent:SetBodyModifiersInSetGravityMultiplier(Set, GravityMultiplier) end
---@param Set FName
---@param CollisionType ECollisionEnabled::Type
function UPhysicsControlComponent:SetBodyModifiersInSetCollisionType(Set, CollisionType) end
---@param Names TArray<FName>
---@param GravityMultiplier float
function UPhysicsControlComponent:SetBodyModifiersGravityMultiplier(Names, GravityMultiplier) end
---@param Names TArray<FName>
---@param CollisionType ECollisionEnabled::Type
function UPhysicsControlComponent:SetBodyModifiersCollisionType(Names, CollisionType) end
---@param Name FName
---@param PhysicsBlendWeight float
---@return boolean
function UPhysicsControlComponent:SetBodyModifierPhysicsBlendWeight(Name, PhysicsBlendWeight) end
---@param Name FName
---@param MovementType EPhysicsMovementType
---@return boolean
function UPhysicsControlComponent:SetBodyModifierMovementType(Name, MovementType) end
---@param Name FName
---@param KinematicTargetPosition FVector
---@param KinematicTargetOrienation FRotator
---@param bMakeKinematic boolean
---@return boolean
function UPhysicsControlComponent:SetBodyModifierKinematicTarget(Name, KinematicTargetPosition, KinematicTargetOrienation, bMakeKinematic) end
---@param Name FName
---@param GravityMultiplier float
---@return boolean
function UPhysicsControlComponent:SetBodyModifierGravityMultiplier(Name, GravityMultiplier) end
---@param Name FName
---@param CollisionType ECollisionEnabled::Type
---@return boolean
function UPhysicsControlComponent:SetBodyModifierCollisionType(Name, CollisionType) end
---@param Name FName
---@return boolean
function UPhysicsControlComponent:ResetControlPoint(Name) end
---@param Name FName
---@param Behavior EResetToCachedTargetBehavior
---@return boolean
function UPhysicsControlComponent:ResetBodyModifierToCachedBoneTransform(Name, Behavior) end
---@param Names TArray<FName>
---@param Behavior EResetToCachedTargetBehavior
function UPhysicsControlComponent:ResetBodyModifiersToCachedBoneTransforms(Names, Behavior) end
---@param SetName FName
---@param Behavior EResetToCachedTargetBehavior
function UPhysicsControlComponent:ResetBodyModifiersInSetToCachedBoneTransforms(SetName, Behavior) end
---@param Control FName
---@return TArray<FName>
function UPhysicsControlComponent:GetSetsContainingControl(Control) end
---@param Control FName
---@return TArray<FName>
function UPhysicsControlComponent:GetSetsContainingBodyModifier(Control) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param LimbSetupData TArray<FPhysicsControlLimbSetupData>
---@return TMap<FName, FPhysicsControlLimbBones>
function UPhysicsControlComponent:GetLimbBonesFromSkeletalMesh(SkeletalMeshComponent, LimbSetupData) end
---@param Name FName
---@param ControlTarget FPhysicsControlTarget
---@return boolean
function UPhysicsControlComponent:GetControlTarget(Name, ControlTarget) end
---@param Set FName
---@return TArray<FName>
function UPhysicsControlComponent:GetControlNamesInSet(Set) end
---@param Name FName
---@param ControlMultiplier FPhysicsControlMultiplier
---@return boolean
function UPhysicsControlComponent:GetControlMultiplier(Name, ControlMultiplier) end
---@param Name FName
---@return boolean
function UPhysicsControlComponent:GetControlEnabled(Name) end
---@param Name FName
---@param ControlData FPhysicsControlData
---@return boolean
function UPhysicsControlComponent:GetControlData(Name, ControlData) end
---@param Name FName
---@return boolean
function UPhysicsControlComponent:GetControlAutoDisable(Name) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@return FVector
function UPhysicsControlComponent:GetCachedBoneVelocity(SkeletalMeshComponent, BoneName) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneNames TArray<FName>
---@return TArray<FVector>
function UPhysicsControlComponent:GetCachedBoneVelocities(SkeletalMeshComponent, BoneNames) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneNames TArray<FName>
---@return TArray<FTransform>
function UPhysicsControlComponent:GetCachedBoneTransforms(SkeletalMeshComponent, BoneNames) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@return FTransform
function UPhysicsControlComponent:GetCachedBoneTransform(SkeletalMeshComponent, BoneName) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneNames TArray<FName>
---@return TArray<FVector>
function UPhysicsControlComponent:GetCachedBonePositions(SkeletalMeshComponent, BoneNames) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@return FVector
function UPhysicsControlComponent:GetCachedBonePosition(SkeletalMeshComponent, BoneName) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneNames TArray<FName>
---@return TArray<FRotator>
function UPhysicsControlComponent:GetCachedBoneOrientations(SkeletalMeshComponent, BoneNames) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@return FRotator
function UPhysicsControlComponent:GetCachedBoneOrientation(SkeletalMeshComponent, BoneName) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@return FVector
function UPhysicsControlComponent:GetCachedBoneAngularVelocity(SkeletalMeshComponent, BoneName) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneNames TArray<FName>
---@return TArray<FVector>
function UPhysicsControlComponent:GetCachedBoneAngularVelocities(SkeletalMeshComponent, BoneNames) end
---@param Set FName
---@return TArray<FName>
function UPhysicsControlComponent:GetBodyModifierNamesInSet(Set) end
---@return TArray<FName>
function UPhysicsControlComponent:GetAllControlNames() end
---@return TArray<FName>
function UPhysicsControlComponent:GetAllBodyModifierNames() end
---@param Set FName
function UPhysicsControlComponent:DestroyControlsInSet(Set) end
---@param Names TArray<FName>
function UPhysicsControlComponent:DestroyControls(Names) end
---@param Name FName
---@return boolean
function UPhysicsControlComponent:DestroyControl(Name) end
---@param Set FName
function UPhysicsControlComponent:DestroyBodyModifiersInSet(Set) end
---@param Names TArray<FName>
function UPhysicsControlComponent:DestroyBodyModifiers(Names) end
---@param Name FName
---@return boolean
function UPhysicsControlComponent:DestroyBodyModifier(Name) end
---@param Name FName
---@param ParentMeshComponent UMeshComponent
---@param ParentBoneName FName
---@param ChildMeshComponent UMeshComponent
---@param ChildBoneName FName
---@param ControlData FPhysicsControlData
---@param ControlTarget FPhysicsControlTarget
---@param ControlSettings FPhysicsControlSettings
---@param Set FName
---@param bEnabled boolean
---@return boolean
function UPhysicsControlComponent:CreateNamedControl(Name, ParentMeshComponent, ParentBoneName, ChildMeshComponent, ChildBoneName, ControlData, ControlTarget, ControlSettings, Set, bEnabled) end
---@param Name FName
---@param MeshComponent UMeshComponent
---@param BoneName FName
---@param Set FName
---@param MovementType EPhysicsMovementType
---@param CollisionType ECollisionEnabled::Type
---@param GravityMultiplier float
---@param PhysicsBlendWeight float
---@param bUseSkeletalAnimation boolean
---@param bUpdateKinematicFromSimulation boolean
---@return boolean
function UPhysicsControlComponent:CreateNamedBodyModifier(Name, MeshComponent, BoneName, Set, MovementType, CollisionType, GravityMultiplier, PhysicsBlendWeight, bUseSkeletalAnimation, bUpdateKinematicFromSimulation) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@param bIncludeSelf boolean
---@param ControlType EPhysicsControlType
---@param ControlData FPhysicsControlData
---@param ControlSettings FPhysicsControlSettings
---@param Set FName
---@param bEnabled boolean
---@return TArray<FName>
function UPhysicsControlComponent:CreateControlsFromSkeletalMeshBelow(SkeletalMeshComponent, BoneName, bIncludeSelf, ControlType, ControlData, ControlSettings, Set, bEnabled) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@param bIncludeSelf boolean
---@param ConstraintProfile FName
---@param Set FName
---@param bEnabled boolean
---@return TArray<FName>
function UPhysicsControlComponent:CreateControlsFromSkeletalMeshAndConstraintProfileBelow(SkeletalMeshComponent, BoneName, bIncludeSelf, ConstraintProfile, Set, bEnabled) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneNames TArray<FName>
---@param ConstraintProfile FName
---@param Set FName
---@param bEnabled boolean
---@return TArray<FName>
function UPhysicsControlComponent:CreateControlsFromSkeletalMeshAndConstraintProfile(SkeletalMeshComponent, BoneNames, ConstraintProfile, Set, bEnabled) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneNames TArray<FName>
---@param ControlType EPhysicsControlType
---@param ControlData FPhysicsControlData
---@param ControlSettings FPhysicsControlSettings
---@param Set FName
---@param bEnabled boolean
---@return TArray<FName>
function UPhysicsControlComponent:CreateControlsFromSkeletalMesh(SkeletalMeshComponent, BoneNames, ControlType, ControlData, ControlSettings, Set, bEnabled) end
---@param AllControls FPhysicsControlNames
---@param LimbBones TMap<FName, FPhysicsControlLimbBones>
---@param ConstraintProfile FName
---@param bEnabled boolean
---@return TMap<FName, FPhysicsControlNames>
function UPhysicsControlComponent:CreateControlsFromLimbBonesAndConstraintProfile(AllControls, LimbBones, ConstraintProfile, bEnabled) end
---@param AllControls FPhysicsControlNames
---@param LimbBones TMap<FName, FPhysicsControlLimbBones>
---@param ControlType EPhysicsControlType
---@param ControlData FPhysicsControlData
---@param ControlSettings FPhysicsControlSettings
---@param bEnabled boolean
---@return TMap<FName, FPhysicsControlNames>
function UPhysicsControlComponent:CreateControlsFromLimbBones(AllControls, LimbBones, ControlType, ControlData, ControlSettings, bEnabled) end
---@param AllWorldSpaceControls FPhysicsControlNames
---@param LimbWorldSpaceControls TMap<FName, FPhysicsControlNames>
---@param AllParentSpaceControls FPhysicsControlNames
---@param LimbParentSpaceControls TMap<FName, FPhysicsControlNames>
---@param AllBodyModifiers FPhysicsControlNames
---@param LimbBodyModifiers TMap<FName, FPhysicsControlNames>
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param LimbSetupData TArray<FPhysicsControlLimbSetupData>
---@param WorldSpaceControlData FPhysicsControlData
---@param WorldSpaceControlSettings FPhysicsControlSettings
---@param bEnableWorldSpaceControls boolean
---@param ParentSpaceControlData FPhysicsControlData
---@param ParentSpaceControlSettings FPhysicsControlSettings
---@param bEnableParentSpaceControls boolean
---@param PhysicsMovementType EPhysicsMovementType
---@param GravityMultiplier float
---@param PhysicsBlendWeight float
function UPhysicsControlComponent:CreateControlsAndBodyModifiersFromLimbBones(AllWorldSpaceControls, LimbWorldSpaceControls, AllParentSpaceControls, LimbParentSpaceControls, AllBodyModifiers, LimbBodyModifiers, SkeletalMeshComponent, LimbSetupData, WorldSpaceControlData, WorldSpaceControlSettings, bEnableWorldSpaceControls, ParentSpaceControlData, ParentSpaceControlSettings, bEnableParentSpaceControls, PhysicsMovementType, GravityMultiplier, PhysicsBlendWeight) end
---@param ParentMeshComponent UMeshComponent
---@param ParentBoneName FName
---@param ChildMeshComponent UMeshComponent
---@param ChildBoneName FName
---@param ControlData FPhysicsControlData
---@param ControlTarget FPhysicsControlTarget
---@param ControlSettings FPhysicsControlSettings
---@param Set FName
---@param bEnabled boolean
---@return FName
function UPhysicsControlComponent:CreateControl(ParentMeshComponent, ParentBoneName, ChildMeshComponent, ChildBoneName, ControlData, ControlTarget, ControlSettings, Set, bEnabled) end
---@param SkeletalMeshComponent USkeletalMeshComponent
---@param BoneName FName
---@param bIncludeSelf boolean
---@param Set FName
---@param MovementType EPhysicsMovementType
---@param CollisionType ECollisionEnabled::Type
---@param GravityMultiplier float
---@param PhysicsBlendWeight float
---@param bUseSkeletalAnimation boolean
---@param bUpdateKinematicFromSimulation boolean
---@return TArray<FName>
function UPhysicsControlComponent:CreateBodyModifiersFromSkeletalMeshBelow(SkeletalMeshComponent, BoneName, bIncludeSelf, Set, MovementType, CollisionType, GravityMultiplier, PhysicsBlendWeight, bUseSkeletalAnimation, bUpdateKinematicFromSimulation) end
---@param AllBodyModifiers FPhysicsControlNames
---@param LimbBones TMap<FName, FPhysicsControlLimbBones>
---@param MovementType EPhysicsMovementType
---@param CollisionType ECollisionEnabled::Type
---@param GravityMultiplier float
---@param PhysicsBlendWeight float
---@param bUseSkeletalAnimation boolean
---@param bUpdateKinematicFromSimulation boolean
---@return TMap<FName, FPhysicsControlNames>
function UPhysicsControlComponent:CreateBodyModifiersFromLimbBones(AllBodyModifiers, LimbBones, MovementType, CollisionType, GravityMultiplier, PhysicsBlendWeight, bUseSkeletalAnimation, bUpdateKinematicFromSimulation) end
---@param MeshComponent UMeshComponent
---@param BoneName FName
---@param Set FName
---@param MovementType EPhysicsMovementType
---@param CollisionType ECollisionEnabled::Type
---@param GravityMultiplier float
---@param PhysicsBlendWeight float
---@param bUseSkeletalAnimation boolean
---@param bUpdateKinematicFromSimulation boolean
---@return FName
function UPhysicsControlComponent:CreateBodyModifier(MeshComponent, BoneName, Set, MovementType, CollisionType, GravityMultiplier, PhysicsBlendWeight, bUseSkeletalAnimation, bUpdateKinematicFromSimulation) end
---@param NewSet FPhysicsControlNames
---@param Control FName
---@param Set FName
function UPhysicsControlComponent:AddControlToSet(NewSet, Control, Set) end
---@param NewSet FPhysicsControlNames
---@param Controls TArray<FName>
---@param Set FName
function UPhysicsControlComponent:AddControlsToSet(NewSet, Controls, Set) end
---@param NewSet FPhysicsControlNames
---@param BodyModifier FName
---@param Set FName
function UPhysicsControlComponent:AddBodyModifierToSet(NewSet, BodyModifier, Set) end
---@param NewSet FPhysicsControlNames
---@param BodyModifiers TArray<FName>
---@param Set FName
function UPhysicsControlComponent:AddBodyModifiersToSet(NewSet, BodyModifiers, Set) end


---@class UPhysicsControlInitializerComponent : USceneComponent
---@field InitialCharacterControls FInitialCharacterControls
---@field InitialControls TMap<FName, FInitialPhysicsControl>
---@field InitialBodyModifiers TMap<FName, FInitialBodyModifier>
---@field bCreateControlsAtBeginPlay boolean
local UPhysicsControlInitializerComponent = {}

---@param PhysicsControlComponent UPhysicsControlComponent
function UPhysicsControlInitializerComponent:CreateControls(PhysicsControlComponent) end


---@class UPhysicsControlProfileAsset : UObject
---@field PreviewSkeletalMesh TSoftObjectPtr<USkeletalMesh>
---@field TestValue float
local UPhysicsControlProfileAsset = {}

function UPhysicsControlProfileAsset:Log() end


