---@meta

---@class AStandInMeshActor : AActor
---@field StaticMeshComponent UStaticMeshComponent
local AStandInMeshActor = {}



---@class FStandinProxyEntry
---@field StandinActor TLazyObjectPtr<AStandInMeshActor>
---@field StaticMesh UStaticMesh
---@field Material UMaterialInterface
---@field Textures TArray<UTexture2D>
---@field Key FName
local FStandinProxyEntry = {}



---@class UStandinProxyContainer : UObject
---@field Standins TArray<FStandinProxyEntry>
local UStandinProxyContainer = {}



