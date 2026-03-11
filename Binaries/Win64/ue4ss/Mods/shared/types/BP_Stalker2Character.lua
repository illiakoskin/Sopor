---@meta

---@class ABP_Stalker2Character_C : APC
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpotLight USpotLightComponent
---@field ShadowMesh USkeletalMeshComponent
---@field SpotLight1 USpotLightComponent
---@field InteractionCollision UCapsuleComponent
---@field Camera UCameraComponent
---@field SpringArm USpringArmComponent
---@field AudioGeiger UAudioComponent
---@field GunOffset_0 FVector
---@field BaseTurnRate_0 double
---@field BaseLookUpRate_0 double
---@field ADS_Slowdown double
---@field FOV_Default double
---@field FOV_ADS double
---@field isFPP boolean
---@field IndexZero int32
---@field SwappingWeaponDelay double
---@field FPP_Camera_Default_Location FVector
---@field TPP_SpringArm_Default_Location FVector
---@field ToggleCrouch boolean
---@field ToggleSprint boolean
---@field GrenadeThrowingDelay double
---@field bIsLightOn boolean
---@field startend boolean
---@field CurrentLocation FVector
local ABP_Stalker2Character_C = {}

---@param Key FKey
function ABP_Stalker2Character_C:InpActEvt_Zero_K2Node_InputKeyEvent_0(Key) end
function ABP_Stalker2Character_C:OnJumped() end
---@param EntryPoint int32
function ABP_Stalker2Character_C:ExecuteUbergraph_BP_Stalker2Character(EntryPoint) end


