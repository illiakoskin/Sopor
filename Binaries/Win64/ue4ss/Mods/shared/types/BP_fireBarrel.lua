---@meta

---@class ABP_fireBarrel_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Decal UDecalComponent
---@field Sphere UStaticMeshComponent
---@field MainLight UPointLightComponent
---@field SM_Sphere UStaticMeshComponent
---@field ApplyEffect UApplyEffectComponent
---@field BurnTriggerCollider UCapsuleComponent
---@field Ak UAkComponent
---@field StaticEnvironmentNiagara UStaticEnvironmentNiagaraComponent
---@field SM_FireBarrel_01 UStaticMeshComponent
---@field Capsule UCapsuleComponent
---@field SM_emitter UStaticMeshComponent
---@field barrel UStaticMeshComponent
---@field LightIntencity_02_LightInt_Coefficient_02_1554E7AA4117830FD5517D9AF04AA067 float
---@field LightIntencity_02__Direction_1554E7AA4117830FD5517D9AF04AA067 ETimelineDirection::Type
---@field LightIntencity_02 UTimelineComponent
---@field LightIntencity_01_LightInt_Coefficient_01_CB8C3CD240B8131CF51B07AA2042553E float
---@field LightIntencity_01__Direction_CB8C3CD240B8131CF51B07AA2042553E ETimelineDirection::Type
---@field LightIntencity_01 UTimelineComponent
---@field NS UNiagaraComponent
---@field InBarrelLight_Int float
---@field MainLight_Int float
---@field ['Fake Fog Intensity'] double
local ABP_fireBarrel_C = {}

function ABP_fireBarrel_C:UserConstructionScript() end
function ABP_fireBarrel_C:LightIntencity_01__FinishedFunc() end
function ABP_fireBarrel_C:LightIntencity_01__UpdateFunc() end
function ABP_fireBarrel_C:LightIntencity_02__FinishedFunc() end
function ABP_fireBarrel_C:LightIntencity_02__UpdateFunc() end
function ABP_fireBarrel_C:ReceiveBeginPlay() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_fireBarrel_C:BndEvt__BP_fireBarrel_BurnTriggerCollider_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ABP_fireBarrel_C:BndEvt__BP_BonFire_BurnTriggerCollider_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param EntryPoint int32
function ABP_fireBarrel_C:ExecuteUbergraph_BP_fireBarrel(EntryPoint) end


