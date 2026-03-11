---@meta

---@class UTriggerEffectBPLibrary : UBlueprintFunctionLibrary
local UTriggerEffectBPLibrary = {}

---@param PlayerController APlayerController
---@param StartPosition uint8
---@param EndPosition uint8
---@param Strength uint8
---@param TriggerSide ETriggerEffectSide
---@param ControllerType ETriggerEffectControllerType
---@param bUseEffectForThreshold boolean
---@param AnalogThreshold uint8
function UTriggerEffectBPLibrary:TriggerEffectSetWeaponMode(PlayerController, StartPosition, EndPosition, Strength, TriggerSide, ControllerType, bUseEffectForThreshold, AnalogThreshold) end
---@param PlayerController APlayerController
---@param position uint8
---@param Frequency uint8
---@param Amplitude uint8
---@param TriggerSide ETriggerEffectSide
---@param ControllerType ETriggerEffectControllerType
---@param bUseEffectForThreshold boolean
---@param AnalogThreshold uint8
function UTriggerEffectBPLibrary:TriggerEffectSetVibrationMode(PlayerController, position, Frequency, Amplitude, TriggerSide, ControllerType, bUseEffectForThreshold, AnalogThreshold) end
---@param PlayerController APlayerController
---@param StartPosition uint8
---@param EndPosition uint8
---@param StartStrength uint8
---@param EndStrength uint8
---@param TriggerSide ETriggerEffectSide
---@param ControllerType ETriggerEffectControllerType
---@param bUseEffectForThreshold boolean
---@param AnalogThreshold uint8
function UTriggerEffectBPLibrary:TriggerEffectSetSlopeFeedbackMode(PlayerController, StartPosition, EndPosition, StartStrength, EndStrength, TriggerSide, ControllerType, bUseEffectForThreshold, AnalogThreshold) end
---@param PlayerController APlayerController
function UTriggerEffectBPLibrary:TriggerEffectSetOffModeBothControllers(PlayerController) end
---@param PlayerController APlayerController
---@param TriggerSide ETriggerEffectSide
---@param ControllerType ETriggerEffectControllerType
function UTriggerEffectBPLibrary:TriggerEffectSetOffMode(PlayerController, TriggerSide, ControllerType) end
---@param PlayerController APlayerController
---@param Frequency uint8
---@param Amplitudes TArray<uint8>
---@param TriggerSide ETriggerEffectSide
---@param ControllerType ETriggerEffectControllerType
---@param bUseEffectForThreshold boolean
---@param AnalogThreshold uint8
function UTriggerEffectBPLibrary:TriggerEffectSetMultipositionVibrationMode(PlayerController, Frequency, Amplitudes, TriggerSide, ControllerType, bUseEffectForThreshold, AnalogThreshold) end
---@param PlayerController APlayerController
---@param Strengths TArray<uint8>
---@param TriggerSide ETriggerEffectSide
---@param ControllerType ETriggerEffectControllerType
---@param bUseEffectForThreshold boolean
---@param AnalogThreshold uint8
function UTriggerEffectBPLibrary:TriggerEffectSetMultipositionFeedbackMode(PlayerController, Strengths, TriggerSide, ControllerType, bUseEffectForThreshold, AnalogThreshold) end
---@param PlayerController APlayerController
---@param position uint8
---@param Strength uint8
---@param TriggerSide ETriggerEffectSide
---@param ControllerType ETriggerEffectControllerType
---@param bUseEffectForThreshold boolean
---@param AnalogThreshold uint8
function UTriggerEffectBPLibrary:TriggerEffectSetFeedbackMode(PlayerController, position, Strength, TriggerSide, ControllerType, bUseEffectForThreshold, AnalogThreshold) end


