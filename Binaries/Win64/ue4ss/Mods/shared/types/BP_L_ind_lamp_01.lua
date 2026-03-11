---@meta

---@class ABP_L_ind_lamp_01_C : ABP_Light_Param_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SignalReceiverColorOriginal USignalReceiverComponent
---@field SignalReceiverColorGreen USignalReceiverComponent
---@field PointLight UPointLightComponent
---@field Decal_fake_Inner_light UDecalComponent
---@field Glow UStaticMeshComponent
---@field Main_Light USpotLightComponent
---@field SM_ele_lamp_05 UStaticMeshComponent
---@field SM_ele_lamp_04 UStaticMeshComponent
---@field SM_ele_lamp_03 UStaticMeshComponent
---@field SM_ele_lamp_02 UStaticMeshComponent
---@field ['Attenuation Radius'] double
---@field ['Outer Cone Angle'] double
---@field ['Light Falloff Exponent'] double
---@field ['Intensity Decal'] double
---@field ['Scale Decal- Z'] double
---@field ['Offset Decal- Z'] double
---@field ['Turn OF Decal'] boolean
---@field ['Switch to Point Light'] boolean
---@field ['Switch to color'] FLinearColor
local ABP_L_ind_lamp_01_C = {}

function ABP_L_ind_lamp_01_C:PlayOnSound() end
function ABP_L_ind_lamp_01_C:PlayOffSound() end
function ABP_L_ind_lamp_01_C:UserConstructionScript() end
---@param DataObject UObject
function ABP_L_ind_lamp_01_C:BndEvt__BP_L_ind_lamp_01_SignalReceiverColorGreen_K2Node_ComponentBoundEvent_0_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_L_ind_lamp_01_C:BndEvt__BP_L_ind_lamp_01_SignalReceiverColorRed_K2Node_ComponentBoundEvent_1_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
function ABP_L_ind_lamp_01_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_L_ind_lamp_01_C:ExecuteUbergraph_BP_L_ind_lamp_01(EntryPoint) end


