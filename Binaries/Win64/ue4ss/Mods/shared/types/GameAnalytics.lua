---@meta

---@class FGameAnalyticsCustomEventField
---@field Key FString
---@field Value FString
local FGameAnalyticsCustomEventField = {}



---@class UGameAnalytics : UObject
local UGameAnalytics = {}

---@param CustomDimension FString
function UGameAnalytics:SetCustomDimension03(CustomDimension) end
---@param CustomDimension FString
function UGameAnalytics:SetCustomDimension02(CustomDimension) end
---@param CustomDimension FString
function UGameAnalytics:SetCustomDimension01(CustomDimension) end
function UGameAnalytics:OnQuit() end
---@return boolean
function UGameAnalytics:IsRemoteConfigsReady() end
---@param Key FString
---@param DefaultValue FString
---@return FString
function UGameAnalytics:GetRemoteConfigsValueAsStringWithDefaultValue(Key, DefaultValue) end
---@param Key FString
---@return FString
function UGameAnalytics:GetRemoteConfigsValueAsString(Key) end
---@return FString
function UGameAnalytics:GetRemoteConfigsContentAsString() end
---@return FString
function UGameAnalytics:GetABTestingVariantId() end
---@return FString
function UGameAnalytics:GetABTestingId() end
---@param FlowType EGAResourceFlowType
---@param Currency FString
---@param Amount float
---@param ItemType FString
---@param ItemId FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddResourceEventWithMergeFields(FlowType, Currency, Amount, ItemType, ItemId, CustomFields) end
---@param FlowType EGAResourceFlowType
---@param Currency FString
---@param Amount float
---@param ItemType FString
---@param ItemId FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddResourceEventWithFields(FlowType, Currency, Amount, ItemType, ItemId, CustomFields) end
---@param FlowType EGAResourceFlowType
---@param Currency FString
---@param Amount float
---@param ItemType FString
---@param ItemId FString
function UGameAnalytics:AddResourceEvent(FlowType, Currency, Amount, ItemType, ItemId) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Progression03 FString
---@param Score int32
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoThreeScoreAndMergeFields(ProgressionStatus, Progression01, Progression02, Progression03, Score, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Progression03 FString
---@param Score int32
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoThreeScoreAndFields(ProgressionStatus, Progression01, Progression02, Progression03, Score, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Progression03 FString
---@param Score int32
function UGameAnalytics:AddProgressionEventWithOneTwoThreeAndScore(ProgressionStatus, Progression01, Progression02, Progression03, Score) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Progression03 FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoThreeAndMergeFields(ProgressionStatus, Progression01, Progression02, Progression03, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Progression03 FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoThreeAndFields(ProgressionStatus, Progression01, Progression02, Progression03, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Score int32
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoScoreAndMergeFields(ProgressionStatus, Progression01, Progression02, Score, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Score int32
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoScoreAndFields(ProgressionStatus, Progression01, Progression02, Score, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Progression03 FString
function UGameAnalytics:AddProgressionEventWithOneTwoAndThree(ProgressionStatus, Progression01, Progression02, Progression03) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param Score int32
function UGameAnalytics:AddProgressionEventWithOneTwoAndScore(ProgressionStatus, Progression01, Progression02, Score) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoAndMergeFields(ProgressionStatus, Progression01, Progression02, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneTwoAndFields(ProgressionStatus, Progression01, Progression02, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Score int32
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneScoreAndMergeFields(ProgressionStatus, Progression01, Score, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Score int32
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneScoreAndFields(ProgressionStatus, Progression01, Score, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Progression02 FString
function UGameAnalytics:AddProgressionEventWithOneAndTwo(ProgressionStatus, Progression01, Progression02) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param Score int32
function UGameAnalytics:AddProgressionEventWithOneAndScore(ProgressionStatus, Progression01, Score) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneAndMergeFields(ProgressionStatus, Progression01, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddProgressionEventWithOneAndFields(ProgressionStatus, Progression01, CustomFields) end
---@param ProgressionStatus EGAProgressionStatus
---@param Progression01 FString
function UGameAnalytics:AddProgressionEventWithOne(ProgressionStatus, Progression01) end
---@param Severity EGAErrorSeverity
---@param message FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddErrorEventWithMergeFields(Severity, message, CustomFields) end
---@param Severity EGAErrorSeverity
---@param message FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddErrorEventWithFields(Severity, message, CustomFields) end
---@param Severity EGAErrorSeverity
---@param message FString
function UGameAnalytics:AddErrorEvent(Severity, message) end
---@param EventId FString
---@param Value float
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddDesignEventWithValueAndMergeFields(EventId, Value, CustomFields) end
---@param EventId FString
---@param Value float
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddDesignEventWithValueAndFields(EventId, Value, CustomFields) end
---@param EventId FString
---@param Value float
function UGameAnalytics:AddDesignEventWithValue(EventId, Value) end
---@param EventId FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddDesignEventWithMergeFields(EventId, CustomFields) end
---@param EventId FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddDesignEventWithFields(EventId, CustomFields) end
---@param EventId FString
function UGameAnalytics:AddDesignEvent(EventId) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventWithMergeFields(Currency, Amount, ItemType, ItemId, CartType, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventWithFields(Currency, Amount, ItemType, ItemId, CartType, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param Receipt FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventIOSWithMergeFields(Currency, Amount, ItemType, ItemId, CartType, Receipt, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param Receipt FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventIOSWithFields(Currency, Amount, ItemType, ItemId, CartType, Receipt, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param Receipt FString
function UGameAnalytics:AddBusinessEventIOS(Currency, Amount, ItemType, ItemId, CartType, Receipt) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param Receipt FString
---@param Signature FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventAndroidWithMergeFields(Currency, Amount, ItemType, ItemId, CartType, Receipt, Signature, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param Receipt FString
---@param Signature FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventAndroidWithFields(Currency, Amount, ItemType, ItemId, CartType, Receipt, Signature, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param Receipt FString
---@param Signature FString
function UGameAnalytics:AddBusinessEventAndroid(Currency, Amount, ItemType, ItemId, CartType, Receipt, Signature) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventAndAutoFetchReceiptWithMergeFields(Currency, Amount, ItemType, ItemId, CartType, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddBusinessEventAndAutoFetchReceiptWithFields(Currency, Amount, ItemType, ItemId, CartType, CustomFields) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
function UGameAnalytics:AddBusinessEventAndAutoFetchReceipt(Currency, Amount, ItemType, ItemId, CartType) end
---@param Currency FString
---@param Amount int32
---@param ItemType FString
---@param ItemId FString
---@param CartType FString
function UGameAnalytics:AddBusinessEvent(Currency, Amount, ItemType, ItemId, CartType) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param noAdReason EGAAdError
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddAdEventWithNoAdReasonAndMergeFields(Action, adType, adSdkName, adPlacement, noAdReason, CustomFields) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param noAdReason EGAAdError
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddAdEventWithNoAdReasonAndFields(Action, adType, adSdkName, adPlacement, noAdReason, CustomFields) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param noAdReason EGAAdError
function UGameAnalytics:AddAdEventWithNoAdReason(Action, adType, adSdkName, adPlacement, noAdReason) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddAdEventWithMergeFields(Action, adType, adSdkName, adPlacement, CustomFields) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddAdEventWithFields(Action, adType, adSdkName, adPlacement, CustomFields) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param Duration int64
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddAdEventWithDurationAndMergeFields(Action, adType, adSdkName, adPlacement, Duration, CustomFields) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param Duration int64
---@param CustomFields TArray<FGameAnalyticsCustomEventField>
function UGameAnalytics:AddAdEventWithDurationAndFields(Action, adType, adSdkName, adPlacement, Duration, CustomFields) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
---@param Duration int64
function UGameAnalytics:AddAdEventWithDuration(Action, adType, adSdkName, adPlacement, Duration) end
---@param Action EGAAdAction
---@param adType EGAAdType
---@param adSdkName FString
---@param adPlacement FString
function UGameAnalytics:AddAdEvent(Action, adType, adSdkName, adPlacement) end


