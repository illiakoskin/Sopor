---@meta

---@class ABP_Light_Param_C : ABP_Light_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Insects UNiagaraComponent
---@field LightingPresetRadius FDataTableRowHandle
---@field LightingPresetColor FDataTableRowHandle
---@field GlowObjectsMaterialOrigin TMap<UStaticMeshComponent, UMaterialInterface>
---@field GlowObjectsMaterialNew TMap<UStaticMeshComponent, UMaterialInstanceDynamic>
---@field AttenuationRadius float
---@field ShadowBias float
---@field ShadowSlopeBias float
---@field ContactShadowLength float
---@field LightFunctionMaterial UMaterialInterface
---@field InnerConeAngle float
---@field OuterConeAngle float
---@field InnerIntensityMultiplier double
---@field ProjectorH float
---@field ProjctorV float
---@field GlowObjectsMaterialTMP TMap<UStaticMeshComponent, UMaterialInterface>
---@field PresetValue FS_LightPresset
---@field LightBeamsDIM TArray<UMaterialInstanceDynamic>
---@field VFXglassOrigin TMap<UStaticMeshComponent, UMaterialInterface>
---@field VFXglassNew TMap<UStaticMeshComponent, UMaterialInstanceDynamic>
---@field VFXglassStencil_ID int32
---@field NewVar float
local ABP_Light_Param_C = {}

function ABP_Light_Param_C:UserConstructionScript() end
---@param OnOff boolean
function ABP_Light_Param_C:GlassEmissive(OnOff) end
function ABP_Light_Param_C:OnConstruction_Child() end
---@param LightIntensity double
function ABP_Light_Param_C:GlassEmissiveFlick(LightIntensity) end
---@param AttenuationRadius double
---@param ShadowBias double
---@param ShadowSlopeBias double
---@param ContactShadowLength double
---@param LightFunctionMaterial UMaterialInterface
---@param InnerConeAngle double
---@param OuterConeAngle double
---@param InnerIntensityMultiplier double
---@param Light_Falloff_Exponen double
function ABP_Light_Param_C:UpdateLightParameters(AttenuationRadius, ShadowBias, ShadowSlopeBias, ContactShadowLength, LightFunctionMaterial, InnerConeAngle, OuterConeAngle, InnerIntensityMultiplier, Light_Falloff_Exponen) end
---@param Intensity_Decal double
---@param ScaleDecal_Z double
---@param OffsetDecal_Z double
---@param Lenght double
---@param Fix_Rotate_Decal boolean
---@param Turn_OF_Decal boolean
---@param Use_location boolean
function ABP_Light_Param_C:UpdateDecalInnerLightParameters(Intensity_Decal, ScaleDecal_Z, OffsetDecal_Z, Lenght, Fix_Rotate_Decal, Turn_OF_Decal, Use_location) end
---@param EntryPoint int32
function ABP_Light_Param_C:ExecuteUbergraph_BP_Light_Param(EntryPoint) end


