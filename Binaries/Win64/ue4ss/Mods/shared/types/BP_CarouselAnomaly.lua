---@meta

---@class ABP_CarouselAnomaly_C : ACarouselAnomaly
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_CarouselAnomaly_C = {}

function ABP_CarouselAnomaly_C:OnActivationStateStarted() end
function ABP_CarouselAnomaly_C:OnIdleStateStarted() end
---@param EntryPoint int32
function ABP_CarouselAnomaly_C:ExecuteUbergraph_BP_CarouselAnomaly(EntryPoint) end


