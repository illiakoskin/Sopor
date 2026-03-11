---@meta

---@class FModioApiKey
---@field ApiKey FString
local FModioApiKey = {}



---@class FModioAuthenticationParams
---@field AuthToken FString
---@field UserEmail FString
---@field bUserHasAcceptedTerms boolean
---@field ExtendedParameters TMap<FString, FString>
local FModioAuthenticationParams = {}



---@class FModioCreateModFileParams
---@field PathToModRootDirectory FString
local FModioCreateModFileParams = {}



---@class FModioCreateModParams
---@field PathToLogoFile FString
---@field Name FString
---@field Summary FString
local FModioCreateModParams = {}



---@class FModioEditModParams
local FModioEditModParams = {}


---@class FModioEmailAddress
local FModioEmailAddress = {}


---@class FModioEmailAuthCode
local FModioEmailAuthCode = {}


---@class FModioEntitlementParams
---@field ExtendedParameters TMap<FString, FString>
local FModioEntitlementParams = {}



---@class FModioErrorCode
local FModioErrorCode = {}


---@class FModioFileMetadata
---@field MetadataId FModioFileMetadataID
---@field ModId FModioModID
---@field DateAdded FDateTime
---@field CurrentVirusScanStatus EModioVirusScanStatus
---@field CurrentVirusStatus EModioVirusStatus
---@field Filesize int64
---@field Filename FString
---@field Version FString
---@field Changelog FString
---@field MetadataBlob FString
local FModioFileMetadata = {}



---@class FModioFileMetadataID
local FModioFileMetadataID = {}


---@class FModioFilterParams
local FModioFilterParams = {}


---@class FModioGameID
---@field GameId int64
local FModioGameID = {}



---@class FModioGameInfo
---@field GameId FModioGameID
---@field DateAdded FDateTime
---@field DateUpdated FDateTime
---@field DateLive FDateTime
---@field UgcName FString
---@field Icon FModioIcon
---@field Logo FModioLogo
---@field HeaderImage FModioHeaderImage
---@field Name FString
---@field Summary FString
---@field Instructions FString
---@field InstructionsUrl FString
---@field ProfileUrl FString
---@field Theme FModioTheme
---@field Stats FModioGameStats
---@field OtherUrls TArray<FModioOtherUrl>
---@field Platforms TArray<EModioModfilePlatform>
---@field GameMonetizationOptions EGameMonetizationFlags
---@field VirtualTokenName FString
---@field PlatformSupport TArray<FModioGamePlatform>
local FModioGameInfo = {}



---@class FModioGamePlatform
---@field Platform EModioModfilePlatform
---@field Locked boolean
---@field Moderated boolean
local FModioGamePlatform = {}



---@class FModioGameStats
---@field GameId FModioGameID
---@field ModCountTotal int64
---@field ModDownloadsToday int64
---@field ModDownloadsTotal int64
---@field ModDownloadsDailyAverage int64
---@field ModSubscribersTotal int64
---@field DateExpires int64
local FModioGameStats = {}



---@class FModioHeaderImage
---@field Filename FString
---@field Original FString
local FModioHeaderImage = {}



---@class FModioIcon
---@field Filename FString
---@field Original FString
---@field Thumb64x64 FString
---@field Thumb128x128 FString
---@field Thumb256x256 FString
local FModioIcon = {}



---@class FModioImageWrapper
---@field ImagePath FString
local FModioImageWrapper = {}



---@class FModioInitializeOptions
---@field GameId FModioGameID
---@field ApiKey FModioApiKey
---@field GameEnvironment EModioEnvironment
---@field PortalInUse EModioPortal
---@field ExtendedInitializationParameters TMap<FString, FString>
---@field bUseBackgroundThread boolean
local FModioInitializeOptions = {}



---@class FModioLink
---@field Text FString
---@field URL FString
---@field bRequired boolean
local FModioLink = {}



---@class FModioLogo
---@field Filename FString
---@field Original FString
---@field Thumb320x180 FString
---@field Thumb640x360 FString
---@field Thumb1280x720 FString
local FModioLogo = {}



---@class FModioMapPreview
local FModioMapPreview = {}


---@class FModioMetadata
---@field Key FString
---@field Value FString
local FModioMetadata = {}



---@class FModioModCollectionEntry
local FModioModCollectionEntry = {}


---@class FModioModCreationHandle
local FModioModCreationHandle = {}


---@class FModioModDependency
---@field ModId FModioModID
---@field ModName FString
local FModioModDependency = {}



---@class FModioModDependencyList
---@field PagedResult FModioPagedResult
---@field InternalList TArray<FModioModDependency>
local FModioModDependencyList = {}



---@class FModioModID
local FModioModID = {}


---@class FModioModInfo
---@field ModId FModioModID
---@field Supported boolean
---@field ProfileName FString
---@field ProfileSummary FString
---@field ProfileDescription FString
---@field ProfileDescriptionPlaintext FString
---@field ProfileUrl FString
---@field ProfileSubmittedBy FModioUser
---@field ProfileDateAdded FDateTime
---@field ProfileDateUpdated FDateTime
---@field ProfileDateLive FDateTime
---@field ProfileMaturityOption EModioMaturityFlags
---@field bVisible boolean
---@field Visibility EModioObjectVisibilityFlags
---@field MetadataBlob FString
---@field FileInfo FModioFileMetadata
---@field MetadataKvp TArray<FModioMetadata>
---@field Tags TArray<FModioModTag>
---@field NumGalleryImages int32
---@field YoutubeURLs FModioYoutubeURLList
---@field SketchfabURLs FModioSketchfabURLList
---@field Stats FModioModStats
---@field ModStatus EModioModServerSideStatus
---@field Price int32
local FModioModInfo = {}



---@class FModioModInfoList
---@field PagedResult FModioPagedResult
---@field InternalList TArray<FModioModInfo>
local FModioModInfoList = {}



---@class FModioModManagementEvent
---@field ID FModioModID
---@field Event EModioModManagementEventType
---@field Status FModioErrorCode
local FModioModManagementEvent = {}



---@class FModioModProgressInfo
---@field ID FModioModID
local FModioModProgressInfo = {}



---@class FModioModStats
---@field PopularityRankPosition int64
---@field PopularityRankTotalMods int64
---@field DownloadsTotal int64
---@field SubscribersTotal int64
---@field RatingTotal int64
---@field RatingPositive int64
---@field RatingNegative int64
---@field RatingPercentagePositive int64
---@field RatingWeightedAggregate float
---@field RatingDisplayText FString
local FModioModStats = {}



---@class FModioModTag
---@field Tag FString
local FModioModTag = {}



---@class FModioModTagInfo
---@field TagGroupName FString
---@field TagGroupValues TArray<FString>
---@field bAllowMultipleSelection boolean
local FModioModTagInfo = {}



---@class FModioModTagOptions
---@field PagedResult FModioPagedResult
---@field InternalList TArray<FModioModTagInfo>
local FModioModTagOptions = {}



---@class FModioOptionalGameInfo
local FModioOptionalGameInfo = {}


---@class FModioOptionalImage
local FModioOptionalImage = {}


---@class FModioOptionalMapPreview
local FModioOptionalMapPreview = {}


---@class FModioOptionalModDependencyList
local FModioOptionalModDependencyList = {}


---@class FModioOptionalModID
local FModioOptionalModID = {}


---@class FModioOptionalModInfo
local FModioOptionalModInfo = {}


---@class FModioOptionalModInfoList
local FModioOptionalModInfoList = {}


---@class FModioOptionalModProgressInfo
local FModioOptionalModProgressInfo = {}


---@class FModioOptionalModTagOptions
local FModioOptionalModTagOptions = {}


---@class FModioOptionalTerms
local FModioOptionalTerms = {}


---@class FModioOptionalTransactionRecord
local FModioOptionalTransactionRecord = {}


---@class FModioOptionalUser
local FModioOptionalUser = {}


---@class FModioOptionalUserList
local FModioOptionalUserList = {}


---@class FModioOtherUrl
---@field Label FString
---@field URL FString
local FModioOtherUrl = {}



---@class FModioPagedResult
---@field PageIndex int32
---@field PageSize int32
---@field PageCount int32
---@field TotalResultCount int32
---@field ResultCount int32
local FModioPagedResult = {}



---@class FModioReportParams
local FModioReportParams = {}


---@class FModioSketchfabURLList
local FModioSketchfabURLList = {}


---@class FModioTerms
---@field AgreeButtonText FString
---@field DisagreeButtonText FString
---@field WebsiteLink FModioLink
---@field TermsLink FModioLink
---@field PrivacyLink FModioLink
---@field ManageLink FModioLink
local FModioTerms = {}



---@class FModioTheme
---@field Primary FString
---@field Dark FString
---@field Light FString
---@field Success FString
---@field Warning FString
---@field Danger FString
local FModioTheme = {}



---@class FModioTransactionRecord
---@field AssociatedMod FModioModID
---@field Price FModioUnsigned64
---@field UpdatedUserWalletBalance FModioUnsigned64
local FModioTransactionRecord = {}



---@class FModioUnsigned64
local FModioUnsigned64 = {}


---@class FModioUser
---@field userId FModioUserID
---@field username FString
---@field DateOnline FDateTime
---@field ProfileUrl FString
---@field DisplayNamePortal FString
local FModioUser = {}



---@class FModioUserID
local FModioUserID = {}


---@class FModioUserList
---@field PagedResult FModioPagedResult
---@field InternalList TArray<FModioUser>
local FModioUserList = {}



---@class FModioValidationError
---@field FieldName FString
---@field ValidationFailureDescription FString
local FModioValidationError = {}



---@class FModioYoutubeURLList
local FModioYoutubeURLList = {}


---@class UModioCommonTypesLibrary : UBlueprintFunctionLibrary
local UModioCommonTypesLibrary = {}

---@param Options FModioInitializeOptions
---@param SessionIdentifier FString
---@return FModioInitializeOptions
function UModioCommonTypesLibrary:SetSessionIdentifier(Options, SessionIdentifier) end
---@param Options FModioInitializeOptions
---@param PortalToUse EModioPortal
---@return FModioInitializeOptions
function UModioCommonTypesLibrary:SetPortal(Options, PortalToUse) end
---@param A FModioModID
---@param B FModioModID
---@return boolean
function UModioCommonTypesLibrary:NotEqualTo(A, B) end
---@param GameId int64
---@param ApiKey FString
---@param GameEnvironment EModioEnvironment
---@param PortalInUse EModioPortal
---@return FModioInitializeOptions
function UModioCommonTypesLibrary:MakeInitializeOptions(GameId, ApiKey, GameEnvironment, PortalInUse) end
---@param GameId int64
---@return FModioGameID
function UModioCommonTypesLibrary:MakeGameId(GameId) end
---@param ExtendedParameters TMap<FString, FString>
---@return FModioEntitlementParams
function UModioCommonTypesLibrary:MakeEntitlementParams(ExtendedParameters) end
---@param AuthToken FString
---@param EmailAddress FString
---@param bHasAcceptedTOS boolean
---@return FModioAuthenticationParams
function UModioCommonTypesLibrary:MakeAuthParams(AuthToken, EmailAddress, bHasAcceptedTOS) end
---@param ApiKey FString
---@return FModioApiKey
function UModioCommonTypesLibrary:MakeApiKey(ApiKey) end
---@param In FModioModID
---@return int64
function UModioCommonTypesLibrary:GetRawValueFromModID(In) end
---@param A FModioModID
---@param B FModioModID
---@return boolean
function UModioCommonTypesLibrary:EqualTo(A, B) end
---@param userId FModioUserID
---@return FString
function UModioCommonTypesLibrary:Conv_UserIDToString(userId) end
---@param AuthCode FString
---@return FModioEmailAuthCode
function UModioCommonTypesLibrary:Conv_StringToEmailAuthCode(AuthCode) end
---@param Email FString
---@return FModioEmailAddress
function UModioCommonTypesLibrary:Conv_StringToEmailAddress(Email) end
---@param ModId FModioModID
---@return FString
function UModioCommonTypesLibrary:Conv_ModIDToString(ModId) end
---@param GameId FModioGameID
---@return FString
function UModioCommonTypesLibrary:Conv_GameIDToString(GameId) end
---@param FileMetadataID FModioFileMetadataID
---@return FString
function UModioCommonTypesLibrary:Conv_FileMetadataIDToString(FileMetadataID) end
---@param EmailAuthCode FModioEmailAuthCode
---@return FString
function UModioCommonTypesLibrary:Conv_EmailAuthCodeToString(EmailAuthCode) end
---@param EmailAddress FModioEmailAddress
---@return FString
function UModioCommonTypesLibrary:Conv_EmailAddressToString(EmailAddress) end
---@param ApiKey FModioApiKey
---@return FString
function UModioCommonTypesLibrary:Conv_ApiKeyToString(ApiKey) end


---@class UModioCreateModLibrary : UBlueprintFunctionLibrary
local UModioCreateModLibrary = {}

---@param In FModioCreateModFileParams
---@param Version FString
function UModioCreateModLibrary:SetVersionString(In, Version) end
---@param In FModioCreateModParams
---@param Tags TArray<FString>
function UModioCreateModLibrary:SetTags(In, Tags) end
---@param In FModioCreateModFileParams
---@param Platforms TArray<EModioModfilePlatform>
function UModioCreateModLibrary:SetModfilePlatforms(In, Platforms) end
---@param In FModioCreateModFileParams
---@param MetadataBlob FString
function UModioCreateModLibrary:SetModFileMetadataBlob(In, MetadataBlob) end
---@param In FModioCreateModParams
---@param MetadataBlob FString
function UModioCreateModLibrary:SetMetadataBlob(In, MetadataBlob) end
---@param In FModioCreateModFileParams
---@param bMarkAsActiveRelease boolean
function UModioCreateModLibrary:SetMarkAsActiveRelease(In, bMarkAsActiveRelease) end
---@param In FModioCreateModParams
---@param InitialVisibility boolean
function UModioCreateModLibrary:SetInitialVisibility_DEPRECATED(In, InitialVisibility) end
---@param In FModioCreateModParams
---@param InitialVisibility EModioObjectVisibilityFlags
function UModioCreateModLibrary:SetInitialVisibility(In, InitialVisibility) end
---@param In FModioCreateModParams
---@param HomepageURL FString
function UModioCreateModLibrary:SetHomepageURL(In, HomepageURL) end
---@param In FModioCreateModParams
---@param Description FString
function UModioCreateModLibrary:SetDescription(In, Description) end
---@param In FModioCreateModFileParams
---@param Changelog FString
function UModioCreateModLibrary:SetChangelogString(In, Changelog) end


---@class UModioEditModLibrary : UBlueprintFunctionLibrary
local UModioEditModLibrary = {}

---@param In FModioEditModParams
---@param Visibility boolean
function UModioEditModLibrary:SetVisibility_DEPRECATED(In, Visibility) end
---@param In FModioEditModParams
---@param Visibility EModioObjectVisibilityFlags
function UModioEditModLibrary:SetVisibility(In, Visibility) end
---@param In FModioEditModParams
---@param Tags TArray<FString>
function UModioEditModLibrary:SetTags(In, Tags) end
---@param In FModioEditModParams
---@param Summary FString
function UModioEditModLibrary:SetSummary(In, Summary) end
---@param In FModioEditModParams
---@param NamePath FString
function UModioEditModLibrary:SetNamePath(In, NamePath) end
---@param In FModioEditModParams
---@param Name FString
function UModioEditModLibrary:SetName(In, Name) end
---@param In FModioEditModParams
---@param MetadataBlob FString
function UModioEditModLibrary:SetMetadataBlob(In, MetadataBlob) end
---@param In FModioEditModParams
---@param MaturityFlags EModioMaturityFlags
function UModioEditModLibrary:SetMaturityFlags(In, MaturityFlags) end
---@param In FModioEditModParams
---@param LogoPath FString
function UModioEditModLibrary:SetLogoPath(In, LogoPath) end
---@param In FModioEditModParams
---@param HomepageURL FString
function UModioEditModLibrary:SetHomepageURL(In, HomepageURL) end
---@param In FModioEditModParams
---@param Description FString
function UModioEditModLibrary:SetDescription(In, Description) end


---@class UModioErrorCodeLibrary : UBlueprintFunctionLibrary
local UModioErrorCodeLibrary = {}

---@param Error FModioErrorCode
---@return boolean
function UModioErrorCodeLibrary:IsError(Error) end
---@param Error FModioErrorCode
---@return int32
function UModioErrorCodeLibrary:GetValue(Error) end
---@param Error FModioErrorCode
---@return FString
function UModioErrorCodeLibrary:GetMessage(Error) end


---@class UModioErrorConditionLibrary : UBlueprintFunctionLibrary
local UModioErrorConditionLibrary = {}

---@param ErrorCode FModioErrorCode
---@param Condition EModioErrorCondition
---@return boolean
function UModioErrorConditionLibrary:ErrorCodeMatches(ErrorCode, Condition) end


---@class UModioExampleLibrary : UBlueprintFunctionLibrary
local UModioExampleLibrary = {}

---@param FilterParams FModioFilterParams
---@param Callback FListUserSubscriptionAsyncCallback
function UModioExampleLibrary:ListUserSubscriptionAsync(FilterParams, Callback) end
---@return EModioLogoSize
function UModioExampleLibrary:GetLogoThumbnailSize() end
---@return EModioLogoSize
function UModioExampleLibrary:GetLogoFullSize() end
---@return EModioAvatarSize
function UModioExampleLibrary:GetAvatarThumbnailSize() end


---@class UModioFilterParamsLibrary : UBlueprintFunctionLibrary
local UModioFilterParamsLibrary = {}

---@param Filter FModioFilterParams
---@param NewTags TArray<FString>
---@return FModioFilterParams
function UModioFilterParamsLibrary:WithTags(Filter, NewTags) end
---@param Filter FModioFilterParams
---@param Tag FString
---@return FModioFilterParams
function UModioFilterParamsLibrary:WithTag(Filter, Tag) end
---@param Filter FModioFilterParams
---@param NewTags TArray<FString>
---@return FModioFilterParams
function UModioFilterParamsLibrary:WithoutTags(Filter, NewTags) end
---@param Filter FModioFilterParams
---@param Tag FString
---@return FModioFilterParams
function UModioFilterParamsLibrary:WithoutTag(Filter, Tag) end
---@param Filter FModioFilterParams
---@param ByField EModioSortFieldType
---@param ByDirection EModioSortDirection
---@return FModioFilterParams
function UModioFilterParamsLibrary:SortBy(Filter, ByField, ByDirection) end
---@param Filter FModioFilterParams
---@param PageNumber int64
---@param PageSize int64
---@return FModioFilterParams
function UModioFilterParamsLibrary:PagedResults(Filter, PageNumber, PageSize) end
---@param Filter FModioFilterParams
---@param SearchStrings TArray<FString>
---@return FModioFilterParams
function UModioFilterParamsLibrary:NameContainsStrings(Filter, SearchStrings) end
---@param Filter FModioFilterParams
---@param SearchString FString
---@return FModioFilterParams
function UModioFilterParamsLibrary:NameContains(Filter, SearchString) end
---@param Filter FModioFilterParams
---@param SearchString FString
---@return FModioFilterParams
function UModioFilterParamsLibrary:MetadataLike(Filter, SearchString) end
---@param Filter FModioFilterParams
---@param IDs TArray<FModioModID>
---@return FModioFilterParams
function UModioFilterParamsLibrary:MatchingIDs(Filter, IDs) end
---@param Filter FModioFilterParams
---@param LiveBefore FDateTime
---@return FModioFilterParams
function UModioFilterParamsLibrary:MarkedLiveBefore(Filter, LiveBefore) end
---@param Filter FModioFilterParams
---@param LiveAfter FDateTime
---@return FModioFilterParams
function UModioFilterParamsLibrary:MarkedLiveAfter(Filter, LiveAfter) end
---@param Filter FModioFilterParams
---@param StartIndex int64
---@param ResultCount int64
---@return FModioFilterParams
function UModioFilterParamsLibrary:IndexedResults(Filter, StartIndex, ResultCount) end
---@param Filter FModioFilterParams
---@param IDs TArray<FModioModID>
---@return FModioFilterParams
function UModioFilterParamsLibrary:ExcludingIDs(Filter, IDs) end


---@class UModioImageLibrary : UBlueprintFunctionLibrary
local UModioImageLibrary = {}

---@param Image FModioImageWrapper
---@param OnImageLoaded FLoadAsyncOnImageLoaded
function UModioImageLibrary:LoadAsync(Image, OnImageLoaded) end
---@param Image FModioImageWrapper
---@return UTexture2DDynamic
function UModioImageLibrary:GetTexture(Image) end
---@param Image FModioImageWrapper
---@return EModioImageState
function UModioImageLibrary:GetState(Image) end
---@param Logo UTexture
---@param LogoSize EModioLogoSize
---@return FVector2D
function UModioImageLibrary:GetLogoSize(Logo, LogoSize) end
---@param GalleryImage UTexture
---@param GallerySize EModioGallerySize
---@return FVector2D
function UModioImageLibrary:GetGallerySize(GalleryImage, GallerySize) end
---@param avatar UTexture
---@param AvatarSize EModioAvatarSize
---@return FVector2D
function UModioImageLibrary:GetAvatarSize(avatar, AvatarSize) end


---@class UModioModCollectionLibrary : UBlueprintFunctionLibrary
local UModioModCollectionLibrary = {}

---@param Entry FModioModCollectionEntry
---@return FString
function UModioModCollectionLibrary:GetPath(Entry) end
---@param Entry FModioModCollectionEntry
---@return EModioModState
function UModioModCollectionLibrary:GetModState(Entry) end
---@param Entry FModioModCollectionEntry
---@return FModioModInfo
function UModioModCollectionLibrary:GetModProfile(Entry) end
---@param Entry FModioModCollectionEntry
---@return FModioModID
function UModioModCollectionLibrary:GetId(Entry) end


---@class UModioModDependenciesLibrary : UBlueprintFunctionLibrary
local UModioModDependenciesLibrary = {}

---@param ModTags FModioModDependencyList
---@return FModioPagedResult
function UModioModDependenciesLibrary:GetPagedResult(ModTags) end
---@param ModTags FModioModDependencyList
---@return TArray<FModioModDependency>
function UModioModDependenciesLibrary:GetDependencies(ModTags) end


---@class UModioModInfoListLibrary : UBlueprintFunctionLibrary
local UModioModInfoListLibrary = {}

---@param ModInfoList FModioModInfoList
---@return FModioPagedResult
function UModioModInfoListLibrary:GetPagedResult(ModInfoList) end
---@param ModInfoList FModioModInfoList
---@return TArray<FModioModInfo>
function UModioModInfoListLibrary:GetMods(ModInfoList) end


---@class UModioModProgressInfoLibrary : UBlueprintFunctionLibrary
local UModioModProgressInfoLibrary = {}

---@param Info FModioModProgressInfo
---@param State EModioModProgressState
---@return FModioUnsigned64
function UModioModProgressInfoLibrary:GetTotalProgress(Info, State) end
---@param Info FModioModProgressInfo
---@return EModioModProgressState
function UModioModProgressInfoLibrary:GetCurrentState(Info) end
---@param Info FModioModProgressInfo
---@param State EModioModProgressState
---@return FModioUnsigned64
function UModioModProgressInfoLibrary:GetCurrentProgress(Info, State) end


---@class UModioModTagOptionsLibrary : UBlueprintFunctionLibrary
local UModioModTagOptionsLibrary = {}

---@param ModTags FModioModTagOptions
---@return TArray<FModioModTagInfo>
function UModioModTagOptionsLibrary:GetTags(ModTags) end
---@param ModTags FModioModTagOptions
---@return FModioPagedResult
function UModioModTagOptionsLibrary:GetPagedResult(ModTags) end


---@class UModioOptionalLibrary : UBlueprintFunctionLibrary
local UModioOptionalLibrary = {}

---@param OptionalUser FModioOptionalUser
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalUser(OptionalUser) end
---@param OptionalTerms FModioOptionalTerms
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalTerms(OptionalTerms) end
---@param OptionalModTagOptions FModioOptionalModTagOptions
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalModTagOptions(OptionalModTagOptions) end
---@param OptionalModProgressInfo FModioOptionalModProgressInfo
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalModProgressInfo(OptionalModProgressInfo) end
---@param OptionalModInfoList FModioOptionalModInfoList
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalModInfoList(OptionalModInfoList) end
---@param OptionalModInfo FModioOptionalModInfo
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalModInfo(OptionalModInfo) end
---@param OptionalID FModioOptionalModID
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalModID(OptionalID) end
---@param OptionalDependencyList FModioOptionalModDependencyList
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalModDependencyList(OptionalDependencyList) end
---@param OptionalImage FModioOptionalImage
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalImage(OptionalImage) end
---@param OptionalGameInfo FModioOptionalGameInfo
---@return boolean
function UModioOptionalLibrary:IsSet_ModioOptionalGameInfo(OptionalGameInfo) end
---@param OptionalUser FModioOptionalUser
---@param User FModioUser
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalUser(OptionalUser, User) end
---@param OptionalTerms FModioOptionalTerms
---@param Terms FModioTerms
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalTerms(OptionalTerms, Terms) end
---@param OptionalModTagOptions FModioOptionalModTagOptions
---@param ModTagOptions FModioModTagOptions
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalModTagOptions(OptionalModTagOptions, ModTagOptions) end
---@param OptionalModProgressInfo FModioOptionalModProgressInfo
---@param ModProgressInfo FModioModProgressInfo
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalModProgressInfo(OptionalModProgressInfo, ModProgressInfo) end
---@param OptionalModInfoList FModioOptionalModInfoList
---@param ModInfoList FModioModInfoList
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalModInfoList(OptionalModInfoList, ModInfoList) end
---@param OptionalModInfo FModioOptionalModInfo
---@param ModInfo FModioModInfo
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalModInfo(OptionalModInfo, ModInfo) end
---@param OptionalID FModioOptionalModID
---@param ID FModioModID
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalModID(OptionalID, ID) end
---@param OptionalDependencyList FModioOptionalModDependencyList
---@param DependencyList FModioModDependencyList
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalModDependencyList(OptionalDependencyList, DependencyList) end
---@param OptionalImage FModioOptionalImage
---@param Image FModioImageWrapper
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalImage(OptionalImage, Image) end
---@param OptionalGameInfo FModioOptionalGameInfo
---@param GameInfo FModioGameInfo
---@return boolean
function UModioOptionalLibrary:GetValue_ModioOptionalGameInfo(OptionalGameInfo, GameInfo) end


---@class UModioPlatformHelpersLibrary : UBlueprintFunctionLibrary
local UModioPlatformHelpersLibrary = {}

---@return EModioPortal
function UModioPlatformHelpersLibrary:GetDefaultPortalForCurrentPlatform() end
---@return EModioAuthenticationProvider
function UModioPlatformHelpersLibrary:GetDefaultAuthProviderForCurrentPlatform() end
---@return EModioPlatformName
function UModioPlatformHelpersLibrary:GetCurrentPlatform() end


---@class UModioPopupBase : UUserWidget
local UModioPopupBase = {}


---@class UModioPopupContainer : UUserWidget
---@field PopupStack TArray<UModioPopupBase>
---@field PopupCache TArray<UModioPopupBase>
local UModioPopupContainer = {}

---@param PopupClass TSubclassOf<UModioPopupBase>
---@return UModioPopupBase
function UModioPopupContainer:PushPopup(PopupClass) end
---@param PopupClass TSubclassOf<UModioPopupBase>
---@return UModioPopupBase
function UModioPopupContainer:PopPopup(PopupClass) end


---@class UModioReportLibrary : UBlueprintFunctionLibrary
local UModioReportLibrary = {}

---@param User FModioUserID
---@param Type EModioReportType
---@param ReportDescription FString
---@param ReporterName FString
---@param ReporterContact FString
---@return FModioReportParams
function UModioReportLibrary:MakeReportForUser(User, Type, ReportDescription, ReporterName, ReporterContact) end
---@param Mod FModioModID
---@param Type EModioReportType
---@param ReportDescription FString
---@param ReporterName FString
---@param ReporterContact FString
---@return FModioReportParams
function UModioReportLibrary:MakeReportForMod(Mod, Type, ReportDescription, ReporterName, ReporterContact) end
---@param Game FModioGameID
---@param Type EModioReportType
---@param ReportDescription FString
---@param ReporterName FString
---@param ReporterContact FString
---@return FModioReportParams
function UModioReportLibrary:MakeReportForGame(Game, Type, ReportDescription, ReporterName, ReporterContact) end


---@class UModioSDKLibrary : UBlueprintFunctionLibrary
local UModioSDKLibrary = {}

---@param inputText FText
---@return FText
function UModioSDKLibrary:RoundNumberString(inputText) end
---@param Dividend int64
---@param Divisor int64
---@return float
function UModioSDKLibrary:Pct_Int64Int64(Dividend, Divisor) end
---@param String FString
---@return boolean
function UModioSDKLibrary:IsValidSecurityCodeFormat(String) end
---@param String FString
---@return boolean
function UModioSDKLibrary:IsValidEmailAddressFormat(String) end
---@param PastDateString FString
---@return FString
function UModioSDKLibrary:GetTimeSpanAsString(PastDateString) end
---@param Number int64
---@return FString
function UModioSDKLibrary:GetShortenedNumberAsString(Number) end
---@param SessionId FString
---@return FModioInitializeOptions
function UModioSDKLibrary:GetProjectInitializeOptionsForSessionId(SessionId) end
---@return FModioInitializeOptions
function UModioSDKLibrary:GetProjectInitializeOptions() end
---@return FModioGameID
function UModioSDKLibrary:GetProjectGameId() end
---@return EModioEnvironment
function UModioSDKLibrary:GetProjectEnvironment() end
---@return FModioApiKey
function UModioSDKLibrary:GetProjectApiKey() end
---@param Filesize int64
---@return EFileSizeUnit
function UModioSDKLibrary:GetDesiredFileSizeUnit(Filesize) end
---@return FString
function UModioSDKLibrary:GetDefaultSessionIdWindows() end
---@param Filesize int64
---@param MinDecimals int32
---@param MaxDecimals int32
---@param Unit EFileSizeUnit
---@param bIncludeUnitName boolean
---@return FText
function UModioSDKLibrary:Filesize_ToString(Filesize, MinDecimals, MaxDecimals, Unit, bIncludeUnitName) end
---@param Value int64
---@param bAlwaysSign boolean
---@param bUseGrouping boolean
---@param MinimumIntegralDigits int32
---@param MaximumIntegralDigits int32
---@return FText
function UModioSDKLibrary:Conv_Int64ToText(Value, bAlwaysSign, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits) end
---@param inInt int64
---@return FString
function UModioSDKLibrary:Conv_Int64ToString(inInt) end


---@class UModioSettings : UObject
---@field GameId int64
---@field ApiKey FString
---@field Environment EModioEnvironment
---@field LogLevel EModioLogLevel
---@field DefaultPortal EModioPortal
---@field bUseBackgroundThread boolean
local UModioSettings = {}



---@class UModioSubsystem : UEngineSubsystem
---@field UserSubscriptionsDefaultValue TMap<FModioModID, FModioModCollectionEntry>
---@field QueryUserInstallationsDefaultValue TMap<FModioModID, FModioModCollectionEntry>
local UModioSubsystem = {}

---@param UnrealLogLevel EModioLogLevel
function UModioSubsystem:SetLogLevel(UnrealLogLevel) end
function UModioSubsystem:RunPendingHandlers() end
---@return TMap<FModioModID, FModioModCollectionEntry>
function UModioSubsystem:QueryUserSubscriptions() end
---@param bIncludeOutdatedMods boolean
---@return TMap<FModioModID, FModioModCollectionEntry>
function UModioSubsystem:QueryUserInstallations(bIncludeOutdatedMods) end
---@return TMap<FModioModID, FModioModCollectionEntry>
function UModioSubsystem:QuerySystemInstallations() end
---@param ModToPrioritize FModioModID
---@return FModioErrorCode
function UModioSubsystem:PrioritizeTransferForMod(ModToPrioritize) end
function UModioSubsystem:KillBackgroundThread() end
---@param Callback FK2_VerifyUserAuthenticationAsyncCallback
function UModioSubsystem:K2_VerifyUserAuthenticationAsync(Callback) end
---@param ModToUnsubscribeFrom FModioModID
---@param OnUnsubscribeComplete FK2_UnsubscribeFromModAsyncOnUnsubscribeComplete
function UModioSubsystem:K2_UnsubscribeFromModAsync(ModToUnsubscribeFrom, OnUnsubscribeComplete) end
---@param userId FModioUserID
---@param Callback FK2_UnmuteUserAsyncCallback
function UModioSubsystem:K2_UnmuteUserAsync(userId, Callback) end
---@param ModToSubscribeTo FModioModID
---@param OnSubscribeComplete FK2_SubscribeToModAsyncOnSubscribeComplete
function UModioSubsystem:K2_SubscribeToModAsync(ModToSubscribeTo, OnSubscribeComplete) end
---@param Mod FModioModID
---@param Params FModioCreateModFileParams
function UModioSubsystem:K2_SubmitNewModFileForMod(Mod, Params) end
---@param Handle FModioModCreationHandle
---@param Params FModioCreateModParams
---@param Callback FK2_SubmitNewModAsyncCallback
function UModioSubsystem:K2_SubmitNewModAsync(Handle, Params, Callback) end
---@param Mod FModioModID
---@param Rating EModioRating
---@param Callback FK2_SubmitModRatingAsyncCallback
function UModioSubsystem:K2_SubmitModRatingAsync(Mod, Rating, Callback) end
---@param Mod FModioModID
---@param Params FModioEditModParams
---@param Callback FK2_SubmitModChangesAsyncCallback
function UModioSubsystem:K2_SubmitModChangesAsync(Mod, Params, Callback) end
---@param OnShutdownComplete FK2_ShutdownAsyncOnShutdownComplete
function UModioSubsystem:K2_ShutdownAsync(OnShutdownComplete) end
---@param Locale EModioLanguage
function UModioSubsystem:K2_SetLanguage(Locale) end
---@param EmailAddress FModioEmailAddress
---@param Callback FK2_RequestEmailAuthCodeAsyncCallback
function UModioSubsystem:K2_RequestEmailAuthCodeAsync(EmailAddress, Callback) end
---@param Report FModioReportParams
---@param Callback FK2_ReportContentAsyncCallback
function UModioSubsystem:K2_ReportContentAsync(Report, Callback) end
---@return FModioOptionalUser
function UModioSubsystem:K2_QueryUserProfile() end
---@return FModioOptionalModProgressInfo
function UModioSubsystem:K2_QueryCurrentModUpdate() end
---@param OnPreviewDone FK2_PreviewExternalUpdatesAsyncOnPreviewDone
function UModioSubsystem:K2_PreviewExternalUpdatesAsync(OnPreviewDone) end
---@param userId FModioUserID
---@param Callback FK2_MuteUserAsyncCallback
function UModioSubsystem:K2_MuteUserAsync(userId, Callback) end
---@param Filter FModioFilterParams
---@param Callback FK2_ListUserCreatedModsAsyncCallback
function UModioSubsystem:K2_ListUserCreatedModsAsync(Filter, Callback) end
---@param Filter FModioFilterParams
---@param Callback FK2_ListAllModsAsyncCallback
function UModioSubsystem:K2_ListAllModsAsync(Filter, Callback) end
---@param InitializeOptions FModioInitializeOptions
---@param OnInitComplete FK2_InitializeAsyncOnInitComplete
function UModioSubsystem:K2_InitializeAsync(InitializeOptions, OnInitComplete) end
---@param AvatarSize EModioAvatarSize
---@param Callback FK2_GetUserMediaAvatarAsyncCallback
function UModioSubsystem:K2_GetUserMediaAvatarAsync(AvatarSize, Callback) end
---@param Callback FK2_GetTermsOfUseAsyncCallback
function UModioSubsystem:K2_GetTermsOfUseAsync(Callback) end
---@param Callback FK2_GetMutedUsersAsyncCallback
function UModioSubsystem:K2_GetMutedUsersAsync(Callback) end
---@param Callback FK2_GetModTagOptionsAsyncCallback
function UModioSubsystem:K2_GetModTagOptionsAsync(Callback) end
---@param ModId FModioModID
---@param LogoSize EModioLogoSize
---@param Callback FK2_GetModMediaLogoAsyncCallback
function UModioSubsystem:K2_GetModMediaLogoAsync(ModId, LogoSize, Callback) end
---@param ModId FModioModID
---@param GallerySize EModioGallerySize
---@param Index int32
---@param Callback FK2_GetModMediaGalleryImageAsyncCallback
function UModioSubsystem:K2_GetModMediaGalleryImageAsync(ModId, GallerySize, Index, Callback) end
---@param ModId FModioModID
---@param AvatarSize EModioAvatarSize
---@param Callback FK2_GetModMediaAvatarAsyncCallback
function UModioSubsystem:K2_GetModMediaAvatarAsync(ModId, AvatarSize, Callback) end
---@param ModId FModioModID
---@param Callback FK2_GetModInfoAsyncCallback
function UModioSubsystem:K2_GetModInfoAsync(ModId, Callback) end
---@param ModId FModioModID
---@param Callback FK2_GetModDependenciesAsyncCallback
function UModioSubsystem:K2_GetModDependenciesAsync(ModId, Callback) end
---@return FModioModCreationHandle
function UModioSubsystem:K2_GetModCreationHandle() end
---@param GameId FModioGameID
---@param Callback FK2_GetGameInfoAsyncCallback
function UModioSubsystem:K2_GetGameInfoAsync(GameId, Callback) end
---@param GameId FModioGameID
---@return FString
function UModioSubsystem:K2_GetDefaultModInstallationDirectory(GameId) end
---@param ModToRemove FModioModID
---@param Callback FK2_ForceUninstallModAsyncCallback
function UModioSubsystem:K2_ForceUninstallModAsync(ModToRemove, Callback) end
---@param OnFetchDone FK2_FetchExternalUpdatesAsyncOnFetchDone
function UModioSubsystem:K2_FetchExternalUpdatesAsync(OnFetchDone) end
---@param Callback FK2_EnableModManagementCallback
---@return FModioErrorCode
function UModioSubsystem:K2_EnableModManagement(Callback) end
---@param Callback FK2_ClearUserDataAsyncCallback
function UModioSubsystem:K2_ClearUserDataAsync(Callback) end
---@param User FModioAuthenticationParams
---@param Provider EModioAuthenticationProvider
---@param Callback FK2_AuthenticateUserExternalAsyncCallback
function UModioSubsystem:K2_AuthenticateUserExternalAsync(User, Provider, Callback) end
---@param AuthenticationCode FModioEmailAuthCode
---@param Callback FK2_AuthenticateUserEmailAsyncCallback
function UModioSubsystem:K2_AuthenticateUserEmailAsync(AuthenticationCode, Callback) end
---@param Mod FModioModID
---@param Callback FK2_ArchiveModAsyncCallback
function UModioSubsystem:K2_ArchiveModAsync(Mod, Callback) end
---@return boolean
function UModioSubsystem:IsUsingBackgroundThread() end
---@return boolean
function UModioSubsystem:IsModManagementBusy() end
---@return TArray<FModioValidationError>
function UModioSubsystem:GetLastValidationError() end
function UModioSubsystem:DisableModManagement() end


---@class UModioUnsigned64Library : UBlueprintFunctionLibrary
local UModioUnsigned64Library = {}

---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return FModioUnsigned64
function UModioUnsigned64Library:Subtract(LHS, RHS) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return float
function UModioUnsigned64Library:Percentage_Unsigned64(LHS, RHS) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return boolean
function UModioUnsigned64Library:NotEqualTo(LHS, RHS) end
---@param High int32
---@param Low int32
---@return FModioUnsigned64
function UModioUnsigned64Library:MakeFromComponents(High, Low) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return boolean
function UModioUnsigned64Library:LessThan(LHS, RHS) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return boolean
function UModioUnsigned64Library:GreaterThan(LHS, RHS) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return boolean
function UModioUnsigned64Library:EqualTo(LHS, RHS) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return float
function UModioUnsigned64Library:DivideToFloat(LHS, RHS) end
---@param LHS FModioUnsigned64
---@param RHS float
---@return float
function UModioUnsigned64Library:DivideFloat(LHS, RHS) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return FModioUnsigned64
function UModioUnsigned64Library:Divide(LHS, RHS) end
---@param In FModioUnsigned64
---@return float
function UModioUnsigned64Library:Conv_FModioUnsigned64ToFloat(In) end
---@param In FModioUnsigned64
---@param High int32
---@param Low int32
function UModioUnsigned64Library:BreakToComponents(In, High, Low) end
---@param LHS FModioUnsigned64
---@param RHS FModioUnsigned64
---@return FModioUnsigned64
function UModioUnsigned64Library:Add(LHS, RHS) end


