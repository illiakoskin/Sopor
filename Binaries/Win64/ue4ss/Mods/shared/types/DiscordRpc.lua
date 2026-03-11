---@meta

---@class FDiscordRichPresence
---@field State FString
---@field details FString
---@field startTimestamp int32
---@field endTimestamp int32
---@field largeImageKey FString
---@field largeImageText FString
---@field smallImageKey FString
---@field smallImageText FString
---@field partyId FString
---@field partySize int32
---@field partyMax int32
---@field matchSecret FString
---@field joinSecret FString
---@field spectateSecret FString
---@field Instance boolean
local FDiscordRichPresence = {}



---@class FDiscordUserData
---@field userId FString
---@field username FString
---@field discriminator FString
---@field avatar FString
local FDiscordUserData = {}



---@class UDiscordRpc : UObject
---@field IsConnected boolean
---@field OnConnected FDiscordRpcOnConnected
---@field OnDisconnected FDiscordRpcOnDisconnected
---@field OnErrored FDiscordRpcOnErrored
---@field OnJoin FDiscordRpcOnJoin
---@field OnSpectate FDiscordRpcOnSpectate
---@field OnJoinRequest FDiscordRpcOnJoinRequest
---@field RichPresence FDiscordRichPresence
local UDiscordRpc = {}

function UDiscordRpc:UpdatePresence() end
function UDiscordRpc:Shutdown() end
function UDiscordRpc:RunCallbacks() end
---@param userId FString
---@param Reply int32
function UDiscordRpc:Respond(userId, Reply) end
---@param applicationId FString
---@param autoRegister boolean
---@param optionalSteamId FString
function UDiscordRpc:Initialize(applicationId, autoRegister, optionalSteamId) end
function UDiscordRpc:ClearPresence() end


