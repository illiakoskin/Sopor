---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field __NameProperty_42 FName
---@field __NameProperty_43 FName
---@field __ArrayProperty_44 TArray<float>
---@field __BlendProfile_45 UBlendProfile
---@field __CurveFloat_46 UCurveFloat
---@field __EnumProperty_47 EAlphaBlendOption
---@field __EnumProperty_48 EBlendListTransitionType
---@field __ArrayProperty_49 TArray<float>
---@field __BoolProperty_50 boolean
---@field __FloatProperty_51 float
---@field __StructProperty_52 FInputScaleBiasClampConstants
---@field __FloatProperty_53 float
---@field __BoolProperty_54 boolean
---@field __EnumProperty_55 EAnimSyncMethod
---@field __ByteProperty_56 EAnimGroupRole::Type
---@field __StructProperty_57 FAnimNodeFunctionRef
---@field __NameProperty_58 FName
---@field __NameProperty_59 FName
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
local FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field __BoolProperty boolean
---@field __BoolProperty_0 boolean
local FAnimBlueprintGeneratedMutableData = {}



---@class UAnimBP_Human_bh_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root_1 FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_BlendListByBool_1 FAnimNode_BlendListByBool
---@field AnimGraphNode_RandomPlayer FAnimNode_RandomPlayer
---@field AnimGraphNode_CopyBone FAnimNode_CopyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Root FAnimNode_Root
---@field IsMoving boolean
---@field IsInDialog boolean
local UAnimBP_Human_bh_C = {}

---@param InPose FPoseLink
---@param IsRelaxed boolean
---@param IsCrouching boolean
---@param IsZombie boolean
---@param IsInDialog boolean
---@param IsMoving boolean
---@param IsAiming boolean
---@param CharacterWeapon FPoseLink
function UAnimBP_Human_bh_C:CharacterWeapon(InPose, IsRelaxed, IsCrouching, IsZombie, IsInDialog, IsMoving, IsAiming, CharacterWeapon) end
---@param AnimGraph FPoseLink
function UAnimBP_Human_bh_C:AnimGraph(AnimGraph) end
---@param EntryPoint int32
function UAnimBP_Human_bh_C:ExecuteUbergraph_AnimBP_Human_bh(EntryPoint) end


