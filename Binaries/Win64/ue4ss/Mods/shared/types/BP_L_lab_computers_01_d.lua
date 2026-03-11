---@meta

---@class ABP_L_lab_computers_01_d_C : ABP_Light_Param_C
---@field SpotLight USpotLightComponent
---@field Glow UStaticMeshComponent
---@field SM_lab_computers_01_d UStaticMeshComponent
---@field LightMaterial UMaterialInstanceDynamic
---@field ['Attenuation Radius'] double
---@field ['Outer Cone Angle'] double
---@field ['Light Falloff Exponent'] double
local ABP_L_lab_computers_01_d_C = {}

function ABP_L_lab_computers_01_d_C:CreateDynamicMaterialInstance() end
function ABP_L_lab_computers_01_d_C:SetMaterialEnableTrue() end
function ABP_L_lab_computers_01_d_C:SetMaterialEnableFalse() end
function ABP_L_lab_computers_01_d_C:PlayFlickeringSound() end
function ABP_L_lab_computers_01_d_C:PlayOffSound() end
function ABP_L_lab_computers_01_d_C:PlayOnSound() end
function ABP_L_lab_computers_01_d_C:UserConstructionScript() end


