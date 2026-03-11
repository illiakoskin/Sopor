---@meta

---@class ABP_L_ele_lamp_03_final_C : ABP_Light_Param_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SignalReceiverColorOriginal USignalReceiverComponent
---@field SignalReceiverColorGreen USignalReceiverComponent
---@field PointLight UPointLightComponent
---@field Decal_fake_Inner_light UDecalComponent
---@field Glow UStaticMeshComponent
---@field SM_ele_lamp_03 UStaticMeshComponent
---@field Main_Light USpotLightComponent
---@field SM_ele_lamp_02 UStaticMeshComponent
---@field ['Intensity Decal'] double
---@field ['Scale Decal- Z'] double
---@field ['Attenuation Radius'] double
---@field ['Outer Cone Angle'] double
---@field ['Light Falloff Exponent'] double
---@field ['Offset Decal- Z'] double
---@field ['Turn OF Decal'] boolean
---@field ['Switch to Point Light'] boolean
---@field ['Switch to color'] FLinearColor
local ABP_L_ele_lamp_03_final_C = {}

function ABP_L_ele_lamp_03_final_C:PlayDestroySound() end
function ABP_L_ele_lamp_03_final_C:PlayOffSound() end
function ABP_L_ele_lamp_03_final_C:PlayOnSound() end
function ABP_L_ele_lamp_03_final_C:UserConstructionScript() end
function ABP_L_ele_lamp_03_final_C:ReceiveBeginPlay() end
---@param DataObject UObject
function ABP_L_ele_lamp_03_final_C:BndEvt__BP_L_ele_lamp_03_final_SignalReceiverColorGreen_K2Node_ComponentBoundEvent_2_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param DataObject UObject
function ABP_L_ele_lamp_03_final_C:BndEvt__BP_L_ele_lamp_03_final_SignalReceiverColorRed_K2Node_ComponentBoundEvent_3_SignalReceiverComponentReceiveSignature__DelegateSignature(DataObject) end
---@param EntryPoint int32
function ABP_L_ele_lamp_03_final_C:ExecuteUbergraph_BP_L_ele_lamp_03_final(EntryPoint) end


