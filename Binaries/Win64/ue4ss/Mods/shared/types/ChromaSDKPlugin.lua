---@meta

---@class FChromaSDKAppInfoType
---@field Title FString
---@field Description FString
---@field Author_Name FString
---@field Author_Contact FString
---@field SupportedDevice int32
---@field Category int32
local FChromaSDKAppInfoType = {}



---@class FChromaSDKColorFrame1D
---@field Colors TArray<FLinearColor>
local FChromaSDKColorFrame1D = {}



---@class FChromaSDKColorFrame2D
---@field Colors TArray<FChromaSDKColors>
local FChromaSDKColorFrame2D = {}



---@class FChromaSDKColors
---@field Colors TArray<FLinearColor>
local FChromaSDKColors = {}



---@class FChromaSDKDeviceFrameIndex
---@field FrameIndex TArray<int32>
local FChromaSDKDeviceFrameIndex = {}



---@class FChromaSDKDeviceInfoType
---@field DeviceType EChromaSDKCoreDeviceTypeEnum::Type
---@field Connected int32
local FChromaSDKDeviceInfoType = {}



---@class FChromaSDKEffectResult
---@field Result int32
---@field EffectId FChromaSDKGuid
local FChromaSDKEffectResult = {}



---@class FChromaSDKGuid
local FChromaSDKGuid = {}


---@class FChromaSDKScene
---@field Effects TArray<FChromaSDKSceneEffect>
local FChromaSDKScene = {}



---@class FChromaSDKSceneEffect
---@field Animation FString
---@field State boolean
---@field PrimaryColor int32
---@field SecondaryColor int32
---@field Speed int32
---@field Blend EChromaSDKSceneBlend::Type
---@field Mode EChromaSDKSceneMode::Type
---@field FrameIndex FChromaSDKDeviceFrameIndex
local FChromaSDKSceneEffect = {}



---@class UChromaSDKPluginBPLibrary : UBlueprintFunctionLibrary
local UChromaSDKPluginBPLibrary = {}

---@param AnimationName FString
---@param flag boolean
function UChromaSDKPluginBPLibrary:UsePreloadingName(AnimationName, flag) end
---@param animationId int32
---@param flag boolean
function UChromaSDKPluginBPLibrary:UsePreloading(animationId, flag) end
---@param flag boolean
function UChromaSDKPluginBPLibrary:UseIdleAnimations(flag) end
---@param Device EChromaSDKDeviceEnum::Type
---@param flag boolean
function UChromaSDKPluginBPLibrary:UseIdleAnimation(Device, flag) end
---@param Toggle boolean
function UChromaSDKPluginBPLibrary:UseForwardChromaEvents(Toggle) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:UnloadAnimationName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:UnloadAnimation(animationId) end
---@param AnimationName FString
---@param numberOfFrames int32
function UChromaSDKPluginBPLibrary:TrimStartFramesName(AnimationName, numberOfFrames) end
---@param animationId int32
---@param numberOfFrames int32
function UChromaSDKPluginBPLibrary:TrimStartFrames(animationId, numberOfFrames) end
---@param AnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:TrimFrameName(AnimationName, frameId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:TrimFrame(animationId, frameId) end
---@param AnimationName FString
---@param lastFrameId int32
function UChromaSDKPluginBPLibrary:TrimEndFramesName(AnimationName, lastFrameId) end
---@param animationId int32
---@param lastFrameId int32
function UChromaSDKPluginBPLibrary:TrimEndFrames(animationId, lastFrameId) end
---@param colorParam int32
---@return FLinearColor
function UChromaSDKPluginBPLibrary:ToLinearColor(colorParam) end
---@param colorParam FLinearColor
---@return int32
function UChromaSDKPluginBPLibrary:ToBGR(colorParam) end
---@return boolean
function UChromaSDKPluginBPLibrary:SupportsStreaming() end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:SubtractNonZeroAllKeys(sourceAnimationId, targetAnimationId, frameId) end
function UChromaSDKPluginBPLibrary:StreamWatchEnd() end
---@param streamId FString
---@param Timestamp int32
function UChromaSDKPluginBPLibrary:StreamWatch(streamId, Timestamp) end
---@param streamFocus FString
---@return boolean
function UChromaSDKPluginBPLibrary:StreamSetFocus(streamFocus) end
---@param shortcode FString
---@return boolean
function UChromaSDKPluginBPLibrary:StreamReleaseShortcode(shortcode) end
---@param Status EChromaSDKStreamStatusEnum::Type
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetStatusString(Status) end
---@return EChromaSDKStreamStatusEnum::Type
function UChromaSDKPluginBPLibrary:StreamGetStatus() end
---@param shortcode FString
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetKey(shortcode) end
---@param shortcode FString
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetId(shortcode) end
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetFocus() end
---@param Platform FString
---@param Title FString
---@return FString
function UChromaSDKPluginBPLibrary:StreamGetAuthShortcode(Platform, Title) end
function UChromaSDKPluginBPLibrary:StreamBroadcastEnd() end
---@param streamId FString
---@param streamKey FString
function UChromaSDKPluginBPLibrary:StreamBroadcast(streamId, streamKey) end
---@param Device EChromaSDKDeviceEnum::Type
function UChromaSDKPluginBPLibrary:StopAnimationType(Device) end
---@param animationNames TArray<FString>
function UChromaSDKPluginBPLibrary:StopAnimations(animationNames) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:StopAnimationComposite(AnimationName) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:StopAnimation(AnimationName) end
function UChromaSDKPluginBPLibrary:StopAll() end
---@param Color FLinearColor
function UChromaSDKPluginBPLibrary:SetStaticColorAll(Color) end
---@param Device EChromaSDKDeviceEnum::Type
---@param Color FLinearColor
function UChromaSDKPluginBPLibrary:SetStaticColor(Device, Color) end
---@param led EChromaSDKMouseLed::Type
---@param colorParam FLinearColor
---@param Colors TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:SetMouseLedColor(led, colorParam, Colors) end
---@param AnimationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColorName(AnimationName, FrameIndex, Keys, colorParam) end
---@param AnimationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColorAllFramesName(AnimationName, Keys, colorParam) end
---@param animationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColorAllFrames(animationId, Keys, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysNonZeroColor(animationId, FrameIndex, Keys, colorParam) end
---@param AnimationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorRGBName(AnimationName, FrameIndex, Keys, red, green, blue) end
---@param animationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorRGB(animationId, FrameIndex, Keys, red, green, blue) end
---@param AnimationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColorName(AnimationName, FrameIndex, Keys, colorParam) end
---@param AnimationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorAllFramesRGBName(AnimationName, Keys, red, green, blue) end
---@param animationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:SetKeysColorAllFramesRGB(animationId, Keys, red, green, blue) end
---@param AnimationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColorAllFramesName(AnimationName, Keys, colorParam) end
---@param animationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColorAllFrames(animationId, Keys, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeysColor(animationId, FrameIndex, Keys, colorParam) end
---@param AnimationName FString
---@param FrameIndex int32
---@param Row int32
---@param Column int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyRowColumnColorName(AnimationName, FrameIndex, Row, Column, colorParam) end
---@param AnimationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColorName(AnimationName, FrameIndex, Key, colorParam) end
---@param AnimationName FString
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColorAllFramesName(AnimationName, Key, colorParam) end
---@param animationId int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColorAllFrames(animationId, Key, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyNonZeroColor(animationId, FrameIndex, Key, colorParam) end
---@param AnimationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColorName(AnimationName, FrameIndex, Key, colorParam) end
---@param AnimationName FString
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColorAllFramesName(AnimationName, Key, colorParam) end
---@param animationId int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColorAllFrames(animationId, Key, colorParam) end
---@param animationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:SetKeyColor(animationId, FrameIndex, Key, colorParam) end
---@param Key EChromaSDKKeyboardKey::Type
---@param colorParam FLinearColor
---@param Colors TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:SetKeyboardKeyColor(Key, colorParam, Colors) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:SetIdleAnimationName(AnimationName) end
---@param Name FString
---@return int32
function UChromaSDKPluginBPLibrary:SetEventName(Name) end
---@param AnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:SetCurrentFrameName(AnimationName, frameId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:SetCurrentFrame(animationId, frameId) end
---@param AnimationName FString
---@param flag boolean
function UChromaSDKPluginBPLibrary:SetChromaCustomFlagName(AnimationName, flag) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:SetChromaCustomColorAllFramesName(AnimationName) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:ReverseAllFramesName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:ReverseAllFrames(animationId) end
---@param AnimationName FString
---@param N int32
function UChromaSDKPluginBPLibrary:ReduceFramesName(AnimationName, N) end
---@param animationId int32
---@param N int32
function UChromaSDKPluginBPLibrary:ReduceFrames(animationId, N) end
---@param AnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:PreviewFrameName(AnimationName, frameId) end
---@param animationId int32
---@param frameId int32
---@return int32
function UChromaSDKPluginBPLibrary:PreviewFrame(animationId, frameId) end
---@param animationNames TArray<FString>
---@param Loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimations(animationNames, Loop) end
---@param AnimationName FString
---@param Loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimationName(AnimationName, Loop) end
---@param AnimationName FString
---@param Loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimationComposite(AnimationName, Loop) end
---@param AnimationName FString
---@param Loop boolean
function UChromaSDKPluginBPLibrary:PlayAnimation(AnimationName, Loop) end
---@param AnimationName FString
---@param Duration float
function UChromaSDKPluginBPLibrary:OverrideFrameDurationName(AnimationName, Duration) end
---@param Data TArray<uint8>
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:OpenAnimationFromMemory(Data, AnimationName) end
---@param AnimationName FString
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColorsName(AnimationName, frameId, red, green, blue) end
---@param AnimationName FString
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColorsAllFramesName(AnimationName, red, green, blue) end
---@param animationId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColorsAllFrames(animationId, red, green, blue) end
---@param animationId int32
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetNonZeroColors(animationId, frameId, red, green, blue) end
---@param AnimationName FString
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetColorsName(AnimationName, frameId, red, green, blue) end
---@param AnimationName FString
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetColorsAllFramesName(AnimationName, red, green, blue) end
---@param animationId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetColorsAllFrames(animationId, red, green, blue) end
---@param animationId int32
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:OffsetColors(animationId, frameId, red, green, blue) end
---@param AnimationName FString
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyTargetColorLerpAllFramesName(AnimationName, colorParam1, colorParam2) end
---@param animationId int32
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyTargetColorLerpAllFrames(animationId, colorParam1, colorParam2) end
---@param AnimationName FString
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyNonZeroTargetColorLerpAllFramesName(AnimationName, colorParam1, colorParam2) end
---@param animationId int32
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyNonZeroTargetColorLerpAllFrames(animationId, colorParam1, colorParam2) end
---@param AnimationName FString
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityRGBName(AnimationName, frameId, red, green, blue) end
---@param animationId int32
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityRGB(animationId, frameId, red, green, blue) end
---@param AnimationName FString
---@param frameId int32
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensityName(AnimationName, frameId, Intensity) end
---@param AnimationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColorName(AnimationName, frameId, colorParam) end
---@param AnimationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColorAllFramesName(AnimationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyIntensityColor(animationId, frameId, colorParam) end
---@param AnimationName FString
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFramesRGBName(AnimationName, red, green, blue) end
---@param animationId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFramesRGB(animationId, red, green, blue) end
---@param AnimationName FString
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFramesName(AnimationName, Intensity) end
---@param animationId int32
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensityAllFrames(animationId, Intensity) end
---@param animationId int32
---@param frameId int32
---@param Intensity float
function UChromaSDKPluginBPLibrary:MultiplyIntensity(animationId, frameId, Intensity) end
---@param AnimationName FString
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyColorLerpAllFramesName(AnimationName, colorParam1, colorParam2) end
---@param animationId int32
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
function UChromaSDKPluginBPLibrary:MultiplyColorLerpAllFrames(animationId, colorParam1, colorParam2) end
---@param AnimationName FString
---@param frameCount int32
---@param Duration float
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:MakeBlankFramesRGBName(AnimationName, frameCount, Duration, red, green, blue) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:MakeBlankFramesRGB(animationId, frameCount, Duration, red, green, blue) end
---@param AnimationName FString
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandomName(AnimationName, frameCount, Duration) end
---@param AnimationName FString
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandomBlackAndWhiteName(AnimationName, frameCount, Duration) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandomBlackAndWhite(animationId, frameCount, Duration) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
function UChromaSDKPluginBPLibrary:MakeBlankFramesRandom(animationId, frameCount, Duration) end
---@param AnimationName FString
---@param frameCount int32
---@param Duration float
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MakeBlankFramesName(AnimationName, frameCount, Duration, colorParam) end
---@param animationId int32
---@param frameCount int32
---@param Duration float
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:MakeBlankFrames(animationId, frameCount, Duration, colorParam) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:LoadAnimationName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:LoadAnimation(animationId) end
---@param From int32
---@param To int32
---@param T float
---@return int32
function UChromaSDKPluginBPLibrary:LerpColorBGR(From, To, T) end
---@param colorParam1 FLinearColor
---@param colorParam2 FLinearColor
---@param T float
---@return FLinearColor
function UChromaSDKPluginBPLibrary:LerpColor(colorParam1, colorParam2, T) end
---@param Start float
---@param End float
---@param amt float
---@return float
function UChromaSDKPluginBPLibrary:Lerp(Start, End, amt) end
---@return boolean
function UChromaSDKPluginBPLibrary:IsPlatformWindows() end
---@return boolean
function UChromaSDKPluginBPLibrary:IsInitialized() end
---@param deviceInfoType FChromaSDKDeviceInfoType
---@return int32
function UChromaSDKPluginBPLibrary:IsConnected(deviceInfoType) end
---@param Device EChromaSDKDeviceEnum::Type
---@return boolean
function UChromaSDKPluginBPLibrary:IsAnimationTypePlaying(Device) end
---@param AnimationName FString
---@return boolean
function UChromaSDKPluginBPLibrary:IsAnimationPlaying(AnimationName) end
---@param Active boolean
---@return int32
function UChromaSDKPluginBPLibrary:IsActive(Active) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:InvertColorsAllFramesName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:InvertColorsAllFrames(animationId) end
---@param AnimationName FString
---@param sourceFrame int32
---@param targetFrame int32
function UChromaSDKPluginBPLibrary:InsertFrameName(AnimationName, sourceFrame, targetFrame) end
---@param animationId int32
---@param sourceFrame int32
---@param targetFrame int32
function UChromaSDKPluginBPLibrary:InsertFrame(animationId, sourceFrame, targetFrame) end
---@param AnimationName FString
---@param frameId int32
---@param Delay int32
function UChromaSDKPluginBPLibrary:InsertDelayName(AnimationName, frameId, Delay) end
---@param animationId int32
---@param frameId int32
---@param Delay int32
function UChromaSDKPluginBPLibrary:InsertDelay(animationId, frameId, Delay) end
---@param AnimationName FString
---@return float
function UChromaSDKPluginBPLibrary:GetTotalDurationName(AnimationName) end
---@param animationId int32
---@return float
function UChromaSDKPluginBPLibrary:GetTotalDuration(animationId) end
---@param red int32
---@param green int32
---@param blue int32
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetRGB(red, green, blue) end
---@param Index int32
---@return int32
function UChromaSDKPluginBPLibrary:GetPlayingAnimationId(Index) end
---@return int32
function UChromaSDKPluginBPLibrary:GetPlayingAnimationCount() end
---@param led EChromaSDKMouseLed::Type
---@param Colors TArray<FChromaSDKColors>
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetMouseLedColor(led, Colors) end
---@param Device EChromaSDKDevice2DEnum::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetMaxRow(Device) end
---@param Device EChromaSDKDevice1DEnum::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetMaxLeds(Device) end
---@param Device EChromaSDKDevice2DEnum::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetMaxColumn(Device) end
---@param AnimationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetKeyColorName(AnimationName, FrameIndex, Key) end
---@param animationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetKeyColor(animationId, FrameIndex, Key) end
---@param Key EChromaSDKKeyboardKey::Type
---@return int32
function UChromaSDKPluginBPLibrary:GetKeyboardRzKey(Key) end
---@param Key FKey
---@return EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:GetKeyboardRazerKey(Key) end
---@param Key EChromaSDKKeyboardKey::Type
---@param Colors TArray<FChromaSDKColors>
---@return FLinearColor
function UChromaSDKPluginBPLibrary:GetKeyboardKeyColor(Key, Colors) end
---@param AnimationName FString
---@param frameId int32
---@return float
function UChromaSDKPluginBPLibrary:GetFrameDurationName(AnimationName, frameId) end
---@param animationId int32
---@param frameId int32
---@return float
function UChromaSDKPluginBPLibrary:GetFrameDuration(animationId, frameId) end
---@param AnimationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetFrameCountName(AnimationName) end
---@param animationId int32
---@return int32
function UChromaSDKPluginBPLibrary:GetFrameCount(animationId) end
---@param AnimationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetCurrentFrameName(AnimationName) end
---@param animationId int32
---@return int32
function UChromaSDKPluginBPLibrary:GetCurrentFrame(animationId) end
---@param red int32
---@param green int32
---@param blue int32
---@return int32
function UChromaSDKPluginBPLibrary:GetBGRInt(red, green, blue) end
---@param animationId int32
---@return FString
function UChromaSDKPluginBPLibrary:GetAnimationName(animationId) end
---@param Index int32
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimationIdByIndex(Index) end
---@param AnimationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimationId(AnimationName) end
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimationCount() end
---@param AnimationName FString
---@return int32
function UChromaSDKPluginBPLibrary:GetAnimation(AnimationName) end
---@param AnimationName FString
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorRGBName(AnimationName, frameId, red, green, blue) end
---@param animationId int32
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorRGB(animationId, frameId, red, green, blue) end
---@param AnimationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColorName(AnimationName, frameId, colorParam) end
---@param AnimationName FString
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorAllFramesRGBName(AnimationName, red, green, blue) end
---@param animationId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillZeroColorAllFramesRGB(animationId, red, green, blue) end
---@param AnimationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColorAllFramesName(AnimationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillZeroColor(animationId, frameId, colorParam) end
---@param AnimationName FString
---@param redThreshold int32
---@param greenThreshold int32
---@param blueThreshold int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillThresholdRGBColorsAllFramesRGBName(AnimationName, redThreshold, greenThreshold, blueThreshold, red, green, blue) end
---@param animationId int32
---@param redThreshold int32
---@param greenThreshold int32
---@param blueThreshold int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillThresholdRGBColorsAllFramesRGB(animationId, redThreshold, greenThreshold, blueThreshold, red, green, blue) end
---@param AnimationName FString
---@param frameId int32
---@param Threshold int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsRGBName(AnimationName, frameId, Threshold, red, green, blue) end
---@param animationId int32
---@param frameId int32
---@param Threshold int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsRGB(animationId, frameId, Threshold, red, green, blue) end
---@param AnimationName FString
---@param minThreshold int32
---@param minRed int32
---@param minGreen int32
---@param minBlue int32
---@param maxThreshold int32
---@param maxRed int32
---@param maxGreen int32
---@param maxBlue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsMinMaxAllFramesRGBName(AnimationName, minThreshold, minRed, minGreen, minBlue, maxThreshold, maxRed, maxGreen, maxBlue) end
---@param animationId int32
---@param minThreshold int32
---@param minRed int32
---@param minGreen int32
---@param minBlue int32
---@param maxThreshold int32
---@param maxRed int32
---@param maxGreen int32
---@param maxBlue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsMinMaxAllFramesRGB(animationId, minThreshold, minRed, minGreen, minBlue, maxThreshold, maxRed, maxGreen, maxBlue) end
---@param AnimationName FString
---@param Threshold int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFramesRGBName(AnimationName, Threshold, red, green, blue) end
---@param animationId int32
---@param Threshold int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFramesRGB(animationId, Threshold, red, green, blue) end
---@param AnimationName FString
---@param Threshold int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFramesName(AnimationName, Threshold, colorParam) end
---@param animationId int32
---@param Threshold int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillThresholdColorsAllFrames(animationId, Threshold, colorParam) end
---@param AnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsName(AnimationName, frameId) end
---@param AnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhiteName(AnimationName, frameId) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhiteAllFramesName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhiteAllFrames(animationId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsBlackAndWhite(animationId, frameId) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:FillRandomColorsAllFramesName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:FillRandomColorsAllFrames(animationId) end
---@param animationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:FillRandomColors(animationId, frameId) end
---@param AnimationName FString
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorRGBName(AnimationName, frameId, red, green, blue) end
---@param animationId int32
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorRGB(animationId, frameId, red, green, blue) end
---@param AnimationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColorName(AnimationName, frameId, colorParam) end
---@param AnimationName FString
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFramesRGBName(AnimationName, red, green, blue) end
---@param animationId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFramesRGB(animationId, red, green, blue) end
---@param AnimationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFramesName(AnimationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillNonZeroColor(animationId, frameId, colorParam) end
---@param AnimationName FString
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillColorRGBName(AnimationName, frameId, red, green, blue) end
---@param animationId int32
---@param frameId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillColorRGB(animationId, frameId, red, green, blue) end
---@param AnimationName FString
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColorName(AnimationName, frameId, colorParam) end
---@param AnimationName FString
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillColorAllFramesRGBName(AnimationName, red, green, blue) end
---@param animationId int32
---@param red int32
---@param green int32
---@param blue int32
function UChromaSDKPluginBPLibrary:FillColorAllFramesRGB(animationId, red, green, blue) end
---@param AnimationName FString
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColorAllFramesName(AnimationName, colorParam) end
---@param animationId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColorAllFrames(animationId, colorParam) end
---@param animationId int32
---@param frameId int32
---@param colorParam FLinearColor
function UChromaSDKPluginBPLibrary:FillColor(animationId, frameId, colorParam) end
---@param AnimationName FString
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeStartFramesName(AnimationName, fade) end
---@param animationId int32
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeStartFrames(animationId, fade) end
---@param AnimationName FString
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeEndFramesName(AnimationName, fade) end
---@param animationId int32
---@param fade int32
function UChromaSDKPluginBPLibrary:FadeEndFrames(animationId, fade) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:DuplicateMirrorFramesName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:DuplicateMirrorFrames(animationId) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:DuplicateFramesName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:DuplicateFrames(animationId) end
---@param AnimationName FString
---@param frameCount int32
function UChromaSDKPluginBPLibrary:DuplicateFirstFrameName(AnimationName, frameCount) end
---@param animationId int32
---@param frameCount int32
function UChromaSDKPluginBPLibrary:DuplicateFirstFrame(animationId, frameCount) end
---@param Device EChromaSDKDevice2DEnum::Type
---@return TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:CreateRandomColorsBlackAndWhite2D(Device) end
---@param Device EChromaSDKDevice1DEnum::Type
---@return TArray<FLinearColor>
function UChromaSDKPluginBPLibrary:CreateRandomColorsBlackAndWhite1D(Device) end
---@param Device EChromaSDKDevice2DEnum::Type
---@return TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:CreateRandomColors2D(Device) end
---@param Device EChromaSDKDevice1DEnum::Type
---@return TArray<FLinearColor>
function UChromaSDKPluginBPLibrary:CreateRandomColors1D(Device) end
---@param Device EChromaSDKDevice2DEnum::Type
---@return TArray<FChromaSDKColors>
function UChromaSDKPluginBPLibrary:CreateColors2D(Device) end
---@param Device EChromaSDKDevice1DEnum::Type
---@return TArray<FLinearColor>
function UChromaSDKPluginBPLibrary:CreateColors1D(Device) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroTargetAllKeys(sourceAnimationId, targetAnimationId, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColorName(sourceAnimationName, targetAnimationName, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColorAllFramesName(sourceAnimationName, targetAnimationName, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColorAllFrames(sourceAnimationId, targetAnimationId, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyNonZeroKeysColor(sourceAnimationId, targetAnimationId, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyNonZeroKeyColorName(sourceAnimationName, targetAnimationName, FrameIndex, Key) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyNonZeroKeyColor(sourceAnimationId, targetAnimationId, FrameIndex, Key) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysOffsetName(sourceAnimationName, targetAnimationName, frameId, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysOffset(sourceAnimationId, targetAnimationId, frameId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyNonZeroAllKeys(sourceAnimationId, targetAnimationId, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColorName(sourceAnimationName, targetAnimationName, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColorAllFramesName(sourceAnimationName, targetAnimationName, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColorAllFrames(sourceAnimationId, targetAnimationId, Keys) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Keys TArray<EChromaSDKKeyboardKey::Type>
function UChromaSDKPluginBPLibrary:CopyKeysColor(sourceAnimationId, targetAnimationId, FrameIndex, Keys) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyKeyColorName(sourceAnimationName, targetAnimationName, FrameIndex, Key) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param FrameIndex int32
---@param Key EChromaSDKKeyboardKey::Type
function UChromaSDKPluginBPLibrary:CopyKeyColor(sourceAnimationId, targetAnimationId, FrameIndex, Key) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyAnimationName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyAnimation(sourceAnimationId, targetAnimationName) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:CopyAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:CopyAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:CopyAllKeys(sourceAnimationId, targetAnimationId, frameId) end
---@param AnimationName FString
function UChromaSDKPluginBPLibrary:CloseAnimationName(AnimationName) end
---@param animationId int32
function UChromaSDKPluginBPLibrary:CloseAnimation(animationId) end
function UChromaSDKPluginBPLibrary:CloseAll() end
---@param Device EChromaSDKDeviceEnum::Type
function UChromaSDKPluginBPLibrary:ClearAnimationType(Device) end
function UChromaSDKPluginBPLibrary:ClearAll() end
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKUnInit() end
---@param EffectId FChromaSDKGuid
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKSetEffect(EffectId) end
---@param appInfo FChromaSDKAppInfoType
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKInitSDK(appInfo) end
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKInit() end
---@param EffectId FChromaSDKGuid
---@return int32
function UChromaSDKPluginBPLibrary:ChromaSDKDeleteEffect(EffectId) end
---@param Device EChromaSDKDeviceEnum::Type
---@param colorParam FLinearColor
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectStatic(Device, colorParam) end
---@param Device EChromaSDKDeviceEnum::Type
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectNone(Device) end
---@param Colors TArray<FChromaSDKColors>
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectKeyboardCustom2D(Colors) end
---@param Device EChromaSDKDevice2DEnum::Type
---@param Colors TArray<FChromaSDKColors>
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectCustom2D(Device, Colors) end
---@param Device EChromaSDKDevice1DEnum::Type
---@param Colors TArray<FLinearColor>
---@return FChromaSDKEffectResult
function UChromaSDKPluginBPLibrary:ChromaSDKCreateEffectCustom1D(Device, Colors) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:AppendAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:AppendAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:AddNonZeroTargetAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param frameId int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysName(sourceAnimationName, targetAnimationName, frameId) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFramesOffsetName(sourceAnimationName, targetAnimationName, Offset) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param Offset int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFramesOffset(sourceAnimationId, targetAnimationId, Offset) end
---@param sourceAnimationName FString
---@param targetAnimationName FString
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFramesName(sourceAnimationName, targetAnimationName) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeysAllFrames(sourceAnimationId, targetAnimationId) end
---@param sourceAnimationId int32
---@param targetAnimationId int32
---@param frameId int32
function UChromaSDKPluginBPLibrary:AddNonZeroAllKeys(sourceAnimationId, targetAnimationId, frameId) end


