---@meta

---@class USkinnedDecalInstance : USceneComponent
---@field Index int32
---@field SubUV int32
---@field size float
local USkinnedDecalInstance = {}

function USkinnedDecalInstance:UpdateDecal() end
---@return USkinnedDecalSampler
function USkinnedDecalInstance:GetSampler() end


---@class USkinnedDecalSampler : UActorComponent
---@field Mesh USkeletalMeshComponent
---@field DecalLocations TArray<FVector>
---@field EmptyIndexes TArray<int32>
---@field LayerIndex int32
---@field Association EMaterialParameterAssociation
---@field AdditionalData ESkinnedDecalAdditionalData
---@field Materials TArray<UMaterialInstanceDynamic>
---@field LastDecalIndex int32
---@field MaxDecals int32
---@field MinDecalDistance float
---@field TranslucentBlend boolean
---@field TranslucentBlendMaterial UMaterialInterface
---@field InstanceMap TMap<USkinnedDecalInstance, int32>
---@field TranslucentBlendMaterialDynamic UMaterialInstanceDynamic
---@field RenderMeshes TArray<USkeletalMeshComponent>
---@field DataTarget UTextureRenderTarget2D
local USkinnedDecalSampler = {}

---@param Instance USkinnedDecalInstance
function USkinnedDecalSampler:UpdateInstance(Instance) end
function USkinnedDecalSampler:UpdateAllDecals() end
---@param Location FVector
---@param Rotation FQuat
---@param BoneName FName
---@param size float
---@param SubUV int32
---@param Index int32
---@return int32
function USkinnedDecalSampler:SpawnDecal(Location, Rotation, BoneName, size, SubUV, Index) end
function USkinnedDecalSampler:SetupMaterials() end
---@param MeshComponent USkeletalMeshComponent
---@param Child boolean
function USkinnedDecalSampler:SetMeshComponent(MeshComponent, Child) end
---@param Index int32
function USkinnedDecalSampler:RemoveDecal(Index) end
---@return UTextureRenderTarget2D
function USkinnedDecalSampler:GetDataTarget() end
---@param Source USkinnedDecalSampler
function USkinnedDecalSampler:CloneDecals(Source) end
function USkinnedDecalSampler:ClearAllDecals() end


