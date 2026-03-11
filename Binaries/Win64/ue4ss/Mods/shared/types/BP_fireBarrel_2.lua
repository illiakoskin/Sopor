---@meta

---@class ABP_fireBarrel_2_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Decal UDecalComponent
---@field SM_Sphere UStaticMeshComponent
---@field Sphere UStaticMeshComponent
---@field BurnTriggerCollider UCapsuleComponent
---@field ApplyEffect UApplyEffectComponent
---@field MainLight UPointLightComponent
---@field Ak UAkComponent
---@field StaticEnvironmentNiagara UStaticEnvironmentNiagaraComponent
---@field SM_FireBarrel_01 UStaticMeshComponent
---@field Capsule UCapsuleComponent
---@field SM_emitter UStaticMeshComponent
---@field barrel UStaticMeshComponent
---@field Timeline_0_LightInt_Coefficient_02_1453C969424451CB8FBEEB9F9506515C float
---@field Timeline_0__Direction_1453C969424451CB8FBEEB9F9506515C ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Timeline_LightInt_Coefficient_01_916275B14E114003AD69EF9A80DC08FE float
---@field Timeline__Direction_916275B14E114003AD69EF9A80DC08FE ETimelineDirection::Type
---@field Timeline UTimelineComponent
---@field InBarrelLight_Int float
---@field MainLight_Int float
---@field ['Fake Fog Intensity'] double
local ABP_fireBarrel_2_C = {}

function ABP_fireBarrel_2_C:UserConstructionScript() end
function ABP_fireBarrel_2_C:Timeline__FinishedFunc() end
function ABP_fireBarrel_2_C:Timeline__UpdateFunc() end
function ABP_fireBarrel_2_C:Timeline_0__FinishedFunc() end
function ABP_fireBarrel_2_C:Timeline_0__UpdateFunc() end
function ABP_fireBarrel_2_C:ReceiveBeginPlay() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_fireBarrel_2_C:BndEvt__BP_fireBarrel_BurnTriggerCollider_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ABP_fireBarrel_2_C:BndEvt__BP_BonFire_BurnTriggerCollider_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param EntryPoint int32
function ABP_fireBarrel_2_C:ExecuteUbergraph_BP_fireBarrel_2(EntryPoint) end


