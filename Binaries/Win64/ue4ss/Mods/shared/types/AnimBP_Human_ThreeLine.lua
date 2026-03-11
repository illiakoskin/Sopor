---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field __NameProperty_90 FName
---@field __NameProperty_91 FName
---@field __AnimSequenceBase_92 UAnimSequenceBase
---@field __AnimSequenceBase_93 UAnimSequenceBase
---@field __AnimSequenceBase_94 UAnimSequenceBase
---@field __BlendProfile_95 UBlendProfile
---@field __CurveFloat_96 UCurveFloat
---@field __EnumProperty_97 EAlphaBlendOption
---@field __EnumProperty_98 EBlendListTransitionType
---@field __ArrayProperty_99 TArray<float>
---@field __ByteProperty_100 ESequenceEvalReinit::Type
---@field __BoolProperty_101 boolean
---@field __FloatProperty_102 float
---@field __AnimSequenceBase_103 UAnimSequenceBase
---@field __BoolProperty_104 boolean
---@field __EnumProperty_105 EAnimSyncMethod
---@field __ByteProperty_106 EAnimGroupRole::Type
---@field __StructProperty_107 FAnimNodeFunctionRef
---@field __NameProperty_108 FName
---@field __NameProperty_109 FName
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
local FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field __BoolProperty boolean
---@field __BoolProperty_0 boolean
---@field __BoolProperty_1 boolean
local FAnimBlueprintGeneratedMutableData = {}



---@class UAnimBP_Human_ThreeLine_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root_1 FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequenceEvaluator_3 FAnimNode_SequenceEvaluator
---@field AnimGraphNode_ApplyMeshSpaceAdditive_1 FAnimNode_ApplyMeshSpaceAdditive
---@field AnimGraphNode_ApplyMeshSpaceAdditive FAnimNode_ApplyMeshSpaceAdditive
---@field AnimGraphNode_SequenceEvaluator_2 FAnimNode_SequenceEvaluator
---@field AnimGraphNode_SequenceEvaluator_1 FAnimNode_SequenceEvaluator
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field AnimGraphNode_Root FAnimNode_Root
---@field IsZombie boolean
---@field IsCrouching boolean
---@field IsRelaxed boolean
local UAnimBP_Human_ThreeLine_C = {}

---@param InPose FPoseLink
---@param IsRelaxed boolean
---@param IsCrouching boolean
---@param IsZombie boolean
---@param IsInDialog boolean
---@param IsMoving boolean
---@param IsAiming boolean
---@param CharacterWeapon FPoseLink
function UAnimBP_Human_ThreeLine_C:CharacterWeapon(InPose, IsRelaxed, IsCrouching, IsZombie, IsInDialog, IsMoving, IsAiming, CharacterWeapon) end
---@param AnimGraph FPoseLink
function UAnimBP_Human_ThreeLine_C:AnimGraph(AnimGraph) end
---@param EntryPoint int32
function UAnimBP_Human_ThreeLine_C:ExecuteUbergraph_AnimBP_Human_ThreeLine(EntryPoint) end


