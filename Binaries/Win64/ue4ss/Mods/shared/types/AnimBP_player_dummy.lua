---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field __NameProperty_27 FName
---@field __NameProperty_28 FName
---@field __NameProperty_29 FName
---@field __NameProperty_30 FName
---@field __NameProperty_31 FName
---@field __StructProperty_32 FAnimNodeFunctionRef
---@field __ByteProperty_33 ERefPoseType
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
local FAnimBlueprintGeneratedConstantData = {}



---@class UAnimBP_player_dummy_C : UAnimInstancePlayer
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_IdentityPose_1 FAnimNode_RefPose
---@field AnimGraphNode_Root_2 FAnimNode_Root
---@field AnimGraphNode_LinkedInputPose_3 FAnimNode_LinkedInputPose
---@field AnimGraphNode_LinkedInputPose_2 FAnimNode_LinkedInputPose
---@field AnimGraphNode_LinkedInputPose_1 FAnimNode_LinkedInputPose
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_Root_1 FAnimNode_Root
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_IdentityPose FAnimNode_RefPose
local UAnimBP_player_dummy_C = {}

---@param DetectorLayer FPoseLink
function UAnimBP_player_dummy_C:DetectorLayer(DetectorLayer) end
---@param Idle FPoseLink
---@param Moving FPoseLink
---@param Look FPoseLink
---@param Additional FPoseLink
---@param WeaponAnimGraph FPoseLink
function UAnimBP_player_dummy_C:WeaponAnimGraph(Idle, Moving, Look, Additional, WeaponAnimGraph) end
---@param AnimGraph FPoseLink
function UAnimBP_player_dummy_C:AnimGraph(AnimGraph) end
---@param EntryPoint int32
function UAnimBP_player_dummy_C:ExecuteUbergraph_AnimBP_player_dummy(EntryPoint) end


