---@meta

---@class ABP_mod_stairs_01_C : AVerticalLadder
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FoldedBottomSupportMesh UStaticMeshComponent
---@field FoldedTopSupportMesh UStaticMeshComponent
---@field UnhideLadderReceiver USignalReceiverComponent
---@field HideLadderReceiver USignalReceiverComponent
---@field UnblockLadderTopReceiver USignalReceiverComponent
---@field BlockLadderTopReceiver USignalReceiverComponent
---@field EnableFoldedLadderReceiver USignalReceiverComponent
---@field FoldedMesh UHierarchicalInstancedStaticMeshComponent
---@field ProtectMesh UHierarchicalInstancedStaticMeshComponent
---@field SupportMesh UHierarchicalInstancedStaticMeshComponent
---@field FirstMesh UStaticMeshComponent
---@field LastMesh UStaticMeshComponent
---@field MainMesh UHierarchicalInstancedStaticMeshComponent
---@field ['Height - Meters'] int32
---@field Stairs_Type S2_ladder_type::Type
---@field StairsSubType int32
---@field Stairs_MainMesh UStaticMesh
---@field Stairs_FirstMesh UStaticMesh
---@field Stairs_LastMesh UStaticMesh
---@field RelativeAddToNextMesh_Height double
---@field WithSupportMesh_addLoc FVector
---@field SupportMesh_Mesh UStaticMesh
---@field WithProtectMesh_addLoc FVector
---@field ProtectMesh_Mesh UStaticMesh
---@field StairsType_FirstMesh int32
---@field StairsType_LastMesh int32
---@field StairsType_ProtectMesh int32
---@field StairsType_SupportMesh int32
---@field WithProtectMesh_StepHeight double
---@field MainMeshPosAdjust FVector
---@field RandomDestructScale double
---@field Stairs_MainMesh_des TArray<UStaticMesh>
---@field Stairs_FirstMesh_des TArray<UStaticMesh>
---@field Stairs_LastMesh_des TArray<UStaticMesh>
---@field SupportMesh_Mesh_des TArray<UStaticMesh>
---@field ProtectMesh_Mesh_des TArray<UStaticMesh>
---@field ProtectMesh_Mesh_des_using TArray<UStaticMeshComponent>
---@field RelativeAddToNextMesh_Height_ProtectMesh double
---@field OnfoldAkComponent UAkComponent
---@field ['Ladder Material'] S2_ladder_material::Type
---@field ['Out Instance Transform Location'] FVector
---@field NewVar FVector
---@field MaterialWood UMaterialInterface
---@field MaterialMetal UMaterialInterface
---@field MaterialMetalCollector UMaterialInterface
---@field YellowMaterial TSoftObjectPtr<UMaterialInterface>
---@field DefaultMaterial TSoftObjectPtr<UMaterialInterface>
local ABP_mod_stairs_01_C = {}

function ABP_mod_stairs_01_C:UserConstructionScript() end
---@param CollisionType ECollisionEnabled::Type
function ABP_mod_stairs_01_C:ProtectMeshLock(CollisionType) end
---@param DataObject UObject
function ABP_mod_stairs_01_C:BndEvt__BP_mod_stairs_01_EnableFoldedLadderReceiver_K2Node_ComponentBoundEvent_0_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_mod_stairs_01_C:BndEvt__BP_mod_stairs_01_BlockLadderTopReceiver_K2Node_ComponentBoundEvent_1_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_mod_stairs_01_C:BndEvt__BP_mod_stairs_01_UnblockLadderTopReceiver_K2Node_ComponentBoundEvent_2_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_mod_stairs_01_C:BndEvt__BP_mod_stairs_01_LadderComponent_K2Node_ComponentBoundEvent_3_OnUnfoldingStarted__DelegateSignature() end
function ABP_mod_stairs_01_C:BndEvt__BP_mod_stairs_01_LadderComponent_K2Node_ComponentBoundEvent_4_OnUnfoldingEnded__DelegateSignature() end
---@param DataObject UObject
function ABP_mod_stairs_01_C:BndEvt__BP_mod_stairs_01_HideLadderReceiver_K2Node_ComponentBoundEvent_5_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_mod_stairs_01_C:BndEvt__BP_mod_stairs_01_UnhideLadderReceiver_K2Node_ComponentBoundEvent_6_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_mod_stairs_01_C:ReceiveBeginPlay() end
---@param CallbackType EAkCallbackType
---@param CallbackInfo UAkCallbackInfo
function ABP_mod_stairs_01_C:OnUnfoldSoundEnded(CallbackType, CallbackInfo) end
---@param bInteractPaint boolean
function ABP_mod_stairs_01_C:OnPaintSettingsChanged(bInteractPaint) end
---@param EntryPoint int32
function ABP_mod_stairs_01_C:ExecuteUbergraph_BP_mod_stairs_01(EntryPoint) end


