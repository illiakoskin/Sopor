---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field __NameProperty_113 FName
---@field __NameProperty_114 FName
---@field __AnimSequenceBase_115 UAnimSequenceBase
---@field __AnimSequenceBase_116 UAnimSequenceBase
---@field __BlendProfile_117 UBlendProfile
---@field __CurveFloat_118 UCurveFloat
---@field __EnumProperty_119 EAlphaBlendOption
---@field __EnumProperty_120 EBlendListTransitionType
---@field __ArrayProperty_121 TArray<float>
---@field __AnimSequenceBase_122 UAnimSequenceBase
---@field __ByteProperty_123 ESequenceEvalReinit::Type
---@field __BoolProperty_124 boolean
---@field __FloatProperty_125 float
---@field __AnimSequenceBase_126 UAnimSequenceBase
---@field __BoolProperty_127 boolean
---@field __EnumProperty_128 EAnimSyncMethod
---@field __ByteProperty_129 EAnimGroupRole::Type
---@field __StructProperty_130 FAnimNodeFunctionRef
---@field __NameProperty_131 FName
---@field __NameProperty_132 FName
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
local FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field __BoolProperty boolean
---@field __BoolProperty_0 boolean
---@field __BoolProperty_1 boolean
---@field __BoolProperty_2 boolean
local FAnimBlueprintGeneratedMutableData = {}



---@class UAnimBP_Human_AK74_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root_1 FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_BlendListByBool_3 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequenceEvaluator_4 FAnimNode_SequenceEvaluator
---@field AnimGraphNode_ApplyMeshSpaceAdditive_1 FAnimNode_ApplyMeshSpaceAdditive
---@field AnimGraphNode_BlendListByBool_2 FAnimNode_BlendListByBool
---@field AnimGraphNode_ApplyMeshSpaceAdditive FAnimNode_ApplyMeshSpaceAdditive
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_SequenceEvaluator_3 FAnimNode_SequenceEvaluator
---@field AnimGraphNode_SequenceEvaluator_2 FAnimNode_SequenceEvaluator
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequenceEvaluator_1 FAnimNode_SequenceEvaluator
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field AnimGraphNode_Root FAnimNode_Root
---@field IsAiming boolean
---@field IsZombie boolean
---@field IsCrouching boolean
---@field IsRelaxed boolean
local UAnimBP_Human_AK74_C = {}

---@param InPose FPoseLink
---@param IsRelaxed boolean
---@param IsCrouching boolean
---@param IsZombie boolean
---@param IsInDialog boolean
---@param IsMoving boolean
---@param IsAiming boolean
---@param CharacterWeapon FPoseLink
function UAnimBP_Human_AK74_C:CharacterWeapon(InPose, IsRelaxed, IsCrouching, IsZombie, IsInDialog, IsMoving, IsAiming, CharacterWeapon) end
---@param AnimGraph FPoseLink
function UAnimBP_Human_AK74_C:AnimGraph(AnimGraph) end
---@param EntryPoint int32
function UAnimBP_Human_AK74_C:ExecuteUbergraph_AnimBP_Human_AK74(EntryPoint) end


