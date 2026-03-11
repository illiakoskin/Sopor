---@meta

---@class FModioCommonAuthParamsSettings
---@field BackInputAction FDataTableRowHandle
---@field SubmitInputAction FDataTableRowHandle
---@field CancelInputAction FDataTableRowHandle
---@field TermsInputAction FDataTableRowHandle
---@field PrivacyInputAction FDataTableRowHandle
local FModioCommonAuthParamsSettings = {}



---@class FModioCommonCodeInputTextBoxInputStyle : FTextBlockStyle
---@field CharacterBorderBrushBase FSlateBrush
---@field CharacterBorderBrushFocused FSlateBrush
---@field CharacterBorderPadding FMargin
---@field FakeCaretBrush FSlateBrush
---@field FakeCaretHorizontalAlignment EHorizontalAlignment
---@field FakeCaretVerticalAlignment EVerticalAlignment
---@field CharacterPadding FMargin
---@field CharacterSpacing FMargin
---@field MinimumCharacterWidth float
local FModioCommonCodeInputTextBoxInputStyle = {}



---@class FModioCommonCollectionParamsSettings
---@field ErrorsLabel FText
---@field InstalledModsLabel FText
---@field InstalledModsDescription FText
---@field DefaultFetchUpdateButtonLabel FText
---@field SearchingFetchUpdateButtonLabel FText
---@field OwnedModsLabel FText
---@field FilterButtonLabel FText
---@field CheckForUpdatesInputAction FDataTableRowHandle
---@field FilterInputAction FDataTableRowHandle
local FModioCommonCollectionParamsSettings = {}



---@class FModioCommonEmailAuthCodeParamsSettings
---@field TitleText FText
---@field DescriptionText FText
---@field ValidationText FText
---@field BackButtonText FText
---@field SubmitButtonText FText
---@field CancelButtonText FText
local FModioCommonEmailAuthCodeParamsSettings = {}



---@class FModioCommonEmailAuthLoadingParamsSettings
---@field TitleText FText
---@field DescriptionText FText
---@field CancelButtonText FText
local FModioCommonEmailAuthLoadingParamsSettings = {}



---@class FModioCommonEmailAuthParamsSettings
---@field TitleText FText
---@field DescriptionText FText
---@field ValidationText FText
---@field EmailTooltipText FText
---@field BackButtonText FText
---@field SubmitButtonText FText
---@field CancelButtonText FText
local FModioCommonEmailAuthParamsSettings = {}



---@class FModioCommonErrorWithRetryParamsSettings
---@field RetryButtonTextLabel FText
---@field RetryInputAction FDataTableRowHandle
local FModioCommonErrorWithRetryParamsSettings = {}



---@class FModioCommonFeaturedParamsSettings
---@field CategoryParams TArray<FModioModCategoryParams>
local FModioCommonFeaturedParamsSettings = {}



---@class FModioCommonFilteredModListParams
---@field PreviousPageLabel FText
---@field NextPageLabel FText
---@field CurrentPageTextFormat FText
---@field TotalPagesTextFormat FText
---@field TotalModsTextFormat FText
---@field TotalSingleModTextFormat FText
---@field PreviousPageInputAction FDataTableRowHandle
---@field NextPageInputAction FDataTableRowHandle
local FModioCommonFilteredModListParams = {}



---@class FModioCommonModBrowserParamsSettings
---@field CollectionViewTabText FText
---@field SearchResultsViewTabText FText
---@field PreviousTabInputAction FDataTableRowHandle
---@field NextTabInputAction FDataTableRowHandle
local FModioCommonModBrowserParamsSettings = {}



---@class FModioCommonModDetailsParamsSettings
---@field SubscribeLabel FText
---@field UnsubscribeLabel FText
---@field CancelLabel FText
---@field RateUpLabel FText
---@field RateDownLabel FText
---@field ReportLabel FText
---@field FileSizeLabel FText
---@field LastUpdatedLabel FText
---@field ReleaseDateLabel FText
---@field SubscribersLabel FText
---@field CreatedByLabel FText
---@field TagsLabel FText
---@field ModDescriptionLabel FText
---@field SimilarModsLabel FText
---@field DownloadingLabel FText
---@field ExtractingLabel FText
---@field SubscribeInputAction FDataTableRowHandle
---@field CancelInputAction FDataTableRowHandle
---@field RateUpInputAction FDataTableRowHandle
---@field RateDownInputAction FDataTableRowHandle
---@field OpenReportInputAction FDataTableRowHandle
local FModioCommonModDetailsParamsSettings = {}



---@class FModioCommonModEntryParamsSettings
---@field SubscribeLabel FText
---@field UnsubscribeLabel FText
---@field CancelLabel FText
---@field EnableLabel FText
---@field DisableLabel FText
---@field ForceUninstallLabel FText
---@field OpenModDetailsLabel FText
---@field OpenReportLabel FText
---@field DownloadingLabel FText
---@field ExtractingLabel FText
---@field QueuedLabel FText
---@field SpeedLabel FText
---@field SizeLabel FText
---@field ErrorLabel FText
---@field InstalledByOthersLabel FText
---@field DeselectionDelay float
---@field SubscribeInputAction FDataTableRowHandle
---@field CancelInputAction FDataTableRowHandle
---@field SwitchEnabledInputAction FDataTableRowHandle
---@field OpenModDetailsInputAction FDataTableRowHandle
---@field ForceUninstallInputAction FDataTableRowHandle
local FModioCommonModEntryParamsSettings = {}



---@class FModioCommonModGalleryParamsSettings
---@field PreviousImageInputAction FDataTableRowHandle
---@field NextImageInputAction FDataTableRowHandle
---@field SubscribeInputAction FDataTableRowHandle
local FModioCommonModGalleryParamsSettings = {}



---@class FModioCommonModOperationTrackerParamsSettings
---@field OverallOperationPercentageLabelText FText
---@field QueuedOperationNumberLabelText FText
---@field SpeedLabelText FText
local FModioCommonModOperationTrackerParamsSettings = {}



---@class FModioCommonQuickAccessParamsSettings
---@field MainGameMenuButtonLabel FText
---@field MyCollectionButtonLabel FText
---@field LogInButtonLabel FText
---@field LogOutButtonLabel FText
---@field MainGameMenuInputAction FDataTableRowHandle
---@field AuthInputAction FDataTableRowHandle
---@field MyCollectionInputAction FDataTableRowHandle
---@field bShowMainGameMenu boolean
local FModioCommonQuickAccessParamsSettings = {}



---@class FModioCommonReportEmailParamsSettings
---@field DescriptionText FText
---@field ValidationText FText
---@field EmailTooltipText FText
---@field BackButtonText FText
---@field SubmitButtonText FText
---@field CancelButtonText FText
local FModioCommonReportEmailParamsSettings = {}



---@class FModioCommonReportMessageParamsSettings
---@field DescriptionText FText
---@field ValidationText FText
---@field MessageLength int32
---@field MessageTooltipText FText
---@field BackButtonText FText
---@field SubmitButtonText FText
---@field CancelButtonText FText
local FModioCommonReportMessageParamsSettings = {}



---@class FModioCommonReportParamsSettings
---@field ProceedInputAction FDataTableRowHandle
---@field BackInputAction FDataTableRowHandle
---@field SubmitInputAction FDataTableRowHandle
---@field CancelInputAction FDataTableRowHandle
local FModioCommonReportParamsSettings = {}



---@class FModioCommonReportReasonParamsSettings
---@field DescriptionText FText
---@field ProceedButtonText FText
---@field CancelButtonText FText
local FModioCommonReportReasonParamsSettings = {}



---@class FModioCommonReportSummaryParamsSettings
---@field DescriptionText FText
---@field ReasonLabelText FText
---@field EmailLabelText FText
---@field DetailsLabelText FText
---@field BackButtonText FText
---@field SubmitButtonText FText
---@field CancelButtonText FText
local FModioCommonReportSummaryParamsSettings = {}



---@class FModioCommonSearchParamsSettings
---@field SearchTabTitle FText
---@field SearchButtonLabel FText
---@field ResetButtonLabel FText
---@field CloseButtonLabel FText
---@field KeywordsLabel FText
---@field CategoriesLabel FText
---@field EditSearchButtonLabel FText
---@field ShowingAllModsLabel FText
---@field CloseInputAction FDataTableRowHandle
---@field SearchInputAction FDataTableRowHandle
---@field ResetInputAction FDataTableRowHandle
---@field EditSearchInputAction FDataTableRowHandle
local FModioCommonSearchParamsSettings = {}



---@class FModioCommonStorageSpaceTrackerParamsSettings
---@field UsedSpaceLabelText FText
---@field FreeSpaceLabelText FText
---@field TotalSpaceLabelText FText
local FModioCommonStorageSpaceTrackerParamsSettings = {}



---@class FModioCommonTabDescriptor
---@field TabId FName
---@field TabText FText
---@field TabButtonType TSubclassOf<UModioCommonTabButtonBase>
---@field TabButtonStyle TSubclassOf<UModioCommonTabButtonStyle>
local FModioCommonTabDescriptor = {}



---@class FModioCommonTermsOfUseParamsSettings
---@field TitleText FText
---@field ContentText FText
---@field SubmitButtonText FText
---@field CancelButtonText FText
---@field TermsButtonText FText
---@field PrivacyButtonText FText
local FModioCommonTermsOfUseParamsSettings = {}



---@class FModioCommonUserProfileWidgetParamsSettings
---@field ProfileButtonLabel FText
---@field ProfileInputAction FDataTableRowHandle
local FModioCommonUserProfileWidgetParamsSettings = {}



---@class IModioCommonModListViewInterface : IInterface
local IModioCommonModListViewInterface = {}

---@param InList FModioModInfoList
---@param bAddToExisting boolean
function IModioCommonModListViewInterface:SetModsFromModInfoList(InList, bAddToExisting) end
---@param inArray TArray<FModioModInfo>
---@param bAddToExisting boolean
function IModioCommonModListViewInterface:SetModsFromModInfoArray(inArray, bAddToExisting) end
---@param inArray TArray<FModioModCollectionEntry>
---@param bAddToExisting boolean
function IModioCommonModListViewInterface:SetModsFromModCollectionEntryArray(inArray, bAddToExisting) end
---@param ModId FModioModID
function IModioCommonModListViewInterface:SetModSelectionByID(ModId) end
---@param bFocus boolean
function IModioCommonModListViewInterface:SetFocusOnceListIsPopulated(bFocus) end
---@param bResetPreviouslySelected boolean
function IModioCommonModListViewInterface:RequestFullClearSelection(bResetPreviouslySelected) end
---@param bIncludePreviouslySelected boolean
---@param OutModItem UObject
---@return boolean
function IModioCommonModListViewInterface:GetSelectedModItem(bIncludePreviouslySelected, OutModItem) end
---@param InItem UObject
---@param OutEntryWidget UWidget
---@return boolean
function IModioCommonModListViewInterface:GetEntryWidgetFromItem(InItem, OutEntryWidget) end
---@param bIncludePreviouslySelected boolean
---@param bIncludeFirstItem boolean
---@return UWidget
function IModioCommonModListViewInterface:GetDesiredListFocusTarget(bIncludePreviouslySelected, bIncludeFirstItem) end


---@class IModioCommonTabButtonInterface : IInterface
local IModioCommonTabButtonInterface = {}

---@param InTabLabelInfo FModioCommonTabDescriptor
function IModioCommonTabButtonInterface:SetTabLabelInfo(InTabLabelInfo) end


---@class UModioCommonActionBar : UModioCommonActivatableWidget
local UModioCommonActionBar = {}

---@param NewPlayer ULocalPlayer
function UModioCommonActionBar:MonitorPlayerActions(NewPlayer) end
---@param PlayerIdx int32
function UModioCommonActionBar:HandlePlayerAdded(PlayerIdx) end
function UModioCommonActionBar:HandleDeferredDisplayUpdate() end
---@param bFromOwningPlayer boolean
function UModioCommonActionBar:HandleBoundActionsUpdated(bFromOwningPlayer) end
---@return int32
function UModioCommonActionBar:GetNumInputActions() end


---@class UModioCommonActivatableWidget : UCommonActivatableWidget
---@field bRoutedSetDataSource boolean
---@field OnFocusChanged FModioCommonActivatableWidgetOnFocusChanged
---@field bAutoBindInputAction boolean
---@field bAutoFocusOnActivation boolean
---@field DataSource UObject
local UModioCommonActivatableWidget = {}

---@param NewDataSource UObject
function UModioCommonActivatableWidget:SetDataSource(NewDataSource) end
---@param NewViewportSize FVector2D
function UModioCommonActivatableWidget:OnViewportResized(NewViewportSize) end
function UModioCommonActivatableWidget:OnModioCommonActivatableWidgetActionFired__DelegateSignature() end
function UModioCommonActivatableWidget:OnDataSourceUpdated() end
---@param bIsFocused boolean
function UModioCommonActivatableWidget:OnCommonWidgetFocusChanged__DelegateSignature(bIsFocused) end
---@return FString
function UModioCommonActivatableWidget:GetRequestIdentifier() end
---@return boolean
function UModioCommonActivatableWidget:GetAutoFocusOnActivation() end
---@return boolean
function UModioCommonActivatableWidget:GetAutoBindInputAction() end
function UModioCommonActivatableWidget:FocusOnDesiredWidget() end
function UModioCommonActivatableWidget:ClearListeningInputActions() end
---@param Button UModioCommonButtonBase
function UModioCommonActivatableWidget:ClearListeningInputAction(Button) end
function UModioCommonActivatableWidget:BP_UnbindInputActions() end
function UModioCommonActivatableWidget:BP_SynchronizeProperties() end
---@param Button UModioCommonButtonBase
---@param InputAction FDataTableRowHandle
---@param DisplayName FText
---@param OnActionFired FBP_ListenForInputActionOnActionFired
function UModioCommonActivatableWidget:BP_ListenForInputAction(Button, InputAction, DisplayName, OnActionFired) end
function UModioCommonActivatableWidget:BP_BindInputActions() end


---@class UModioCommonActivatableWidgetStack : UCommonActivatableWidgetStack
local UModioCommonActivatableWidgetStack = {}

---@param ActivatableWidgetClass TSubclassOf<UCommonActivatableWidget>
---@param bSkipIfAlreadyActive boolean
---@param bRemoveIfInStack boolean
---@return UCommonActivatableWidget
function UModioCommonActivatableWidgetStack:BP_AddWidgetSmart(ActivatableWidgetClass, bSkipIfAlreadyActive, bRemoveIfInStack) end


---@class UModioCommonAuthView : UModioCommonAuthViewBase
---@field AuthSwitcher UModioCommonWidgetSwitcher
---@field TermsOfUseView UModioCommonTermsOfUseViewBase
---@field EmailAuthView UModioCommonEmailAuthViewBase
---@field EmailAuthLoadingView UModioCommonEmailAuthLoadingViewBase
---@field EmailAuthCodeView UModioCommonEmailAuthCodeViewBase
---@field bAuthCancelled boolean
---@field bStartEmailAuthOnActivate boolean
local UModioCommonAuthView = {}

---@param bShow boolean
function UModioCommonAuthView:SetShowTermsOfView(bShow) end
function UModioCommonAuthView:OnTermsOfUseViewSubmitClicked() end
---@param URL FString
function UModioCommonAuthView:OnTermsOfUseViewLinkClicked(URL) end
function UModioCommonAuthView:OnTermsOfUseViewCancelClicked() end
---@param EmailAddress FString
function UModioCommonAuthView:OnEmailAuthViewSubmitClicked(EmailAddress) end
function UModioCommonAuthView:OnEmailAuthViewCancelClicked() end
function UModioCommonAuthView:OnEmailAuthViewBackClicked() end
function UModioCommonAuthView:OnEmailAuthLoadingViewCancelClicked() end
---@param AuthCode FString
function UModioCommonAuthView:OnEmailAuthCodeViewSubmitClicked(AuthCode) end
function UModioCommonAuthView:OnEmailAuthCodeViewCancelClicked() end
function UModioCommonAuthView:OnEmailAuthCodeViewBackClicked() end
---@param ErrorCode FModioErrorCode
function UModioCommonAuthView:HandleEmailAuthenticated(ErrorCode) end
---@param ErrorCode FModioErrorCode
function UModioCommonAuthView:HandleEmailAuthCodeSent(ErrorCode) end


---@class UModioCommonAuthViewBase : UModioCommonActivatableWidget
---@field TermsOfUseViewClass TSubclassOf<UModioCommonTermsOfUseViewBase>
---@field EmailAuthViewClass TSubclassOf<UModioCommonEmailAuthViewBase>
---@field EmailAuthLoadingViewClass TSubclassOf<UModioCommonEmailAuthLoadingViewBase>
---@field EmailAuthCodeViewBaseClass TSubclassOf<UModioCommonEmailAuthCodeViewBase>
local UModioCommonAuthViewBase = {}



---@class UModioCommonBorder : UCommonBorder
local UModioCommonBorder = {}

---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UModioCommonBorder:HandleOnMouseButtonDownEvent(MyGeometry, MouseEvent) end


---@class UModioCommonBorderStyle : UCommonBorderStyle
local UModioCommonBorderStyle = {}


---@class UModioCommonBoundActionBar : UCommonBoundActionBar
local UModioCommonBoundActionBar = {}


---@class UModioCommonBoundActionButton : UCommonBoundActionButton
local UModioCommonBoundActionButton = {}


---@class UModioCommonButtonBase : UCommonButtonBase
---@field OverrideActionDisplayName FText
---@field bShouldTriggerButtonClickOnEnterOrGamepadAccept boolean
---@field ButtonText FText
---@field bFocusOnHover boolean
---@field TextBlock UModioCommonTextBlock
---@field Icon UModioCommonImage
---@field OnButtonBaseFocusReceived FModioCommonButtonBaseOnButtonBaseFocusReceived
---@field OnButtonBaseFocusLost FModioCommonButtonBaseOnButtonBaseFocusLost
---@field ModioDefaultStyleClass TSubclassOf<UModioCommonButtonStyle>
---@field ModioFocusedStyleClass UClass
local UModioCommonButtonBase = {}

---@param NewLabel FText
function UModioCommonButtonBase:SetLabel(NewLabel) end
function UModioCommonButtonBase:SetButtonFocus() end


---@class UModioCommonButtonStyle : UCommonButtonStyle
---@field NormalIconStyle TSubclassOf<UModioCommonImageStyle>
---@field FocusedIconStyle TSubclassOf<UModioCommonImageStyle>
local UModioCommonButtonStyle = {}



---@class UModioCommonCheckBox : UCheckBox
---@field ModioStyle TSubclassOf<UModioCommonCheckBoxStyle>
---@field LabelTextBlock UModioCommonTextBlock
---@field LabelText FText
local UModioCommonCheckBox = {}

---@param InStyle TSubclassOf<UModioCommonCheckBoxStyle>
function UModioCommonCheckBox:SetStyle(InStyle) end
---@param InLabelText FText
function UModioCommonCheckBox:SetLabel(InLabelText) end
---@param bIsChecked boolean
function UModioCommonCheckBox:HandleOnCheckStateChanged(bIsChecked) end
---@return FText
function UModioCommonCheckBox:GetLabelTextBlockText() end
---@return FText
function UModioCommonCheckBox:GetLabel() end
---@return FMargin
function UModioCommonCheckBox:GetCheckboxContentPadding() end


---@class UModioCommonCheckBoxStyle : UObject
---@field WidgetStyle FCheckBoxStyle
---@field LabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field HoveredLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field ContentPadding FMargin
local UModioCommonCheckBoxStyle = {}



---@class UModioCommonCodeInputTextBox : UWidget
---@field ModioStyle TSubclassOf<UModioCommonCodeInputTextBoxStyle>
---@field TextFlowDirection ETextFlowDirection
---@field VirtualKeyboardOptions FVirtualKeyboardOptions
---@field VirtualKeyboardTrigger EVirtualKeyboardTrigger
---@field VirtualKeyboardDismissAction EVirtualKeyboardDismissAction
---@field NumberOfCharacters int32
---@field OnCodeSubmitDynamic FModioCommonCodeInputTextBoxOnCodeSubmitDynamic
local UModioCommonCodeInputTextBox = {}

---@param InStyle TSubclassOf<UModioCommonCodeInputTextBoxStyle>
function UModioCommonCodeInputTextBox:SetStyle(InStyle) end
---@param InCodeString FString
function UModioCommonCodeInputTextBox:SetCodeString(InCodeString) end
function UModioCommonCodeInputTextBox:OnCodeSubmitDynamic__DelegateSignature() end
---@return FString
function UModioCommonCodeInputTextBox:GetCodeString() end


---@class UModioCommonCodeInputTextBoxStyle : UObject
---@field Style FModioCommonCodeInputTextBoxInputStyle
local UModioCommonCodeInputTextBoxStyle = {}



---@class UModioCommonCollectionView : UModioCommonModListBase
---@field ModioStyle TSubclassOf<UModioCommonCollectionViewStyle>
---@field NoResultsContainer UPanelWidget
---@field NumOfDownloadingModsTextBlock UModioCommonTextBlock
---@field InstalledModsLabelTextBlock UModioCommonTextBlock
---@field InstalledModsDescriptionTextBlock UModioCommonTextBlock
---@field NumOfInstalledModsTextBlock UModioCommonTextBlock
---@field ErrorsTextBlock UModioCommonTextBlock
---@field NumOfErrorsTextBlock UModioCommonTextBlock
---@field ModList UListView
---@field FetchUpdateButton UModioCommonButtonBase
---@field FilterButton UModioCommonButtonBase
---@field FilterCounterTextBlock UModioCommonTextBlock
---@field ModIDsWithErrors TSet<FModioModID>
local UModioCommonCollectionView = {}

function UModioCommonCollectionView:UpdateMods() end
function UModioCommonCollectionView:UpdateInputBindings() end
---@param ModListEntries TArray<FModioModCollectionEntry>
function UModioCommonCollectionView:SortZToA(ModListEntries) end
---@param ModListEntries TArray<FModioModCollectionEntry>
function UModioCommonCollectionView:SortSizeOnDisk(ModListEntries) end
---@param ModListEntries TArray<FModioModCollectionEntry>
function UModioCommonCollectionView:SortRecentlyUpdated(ModListEntries) end
---@param ModListEntries TArray<FModioModCollectionEntry>
function UModioCommonCollectionView:SortAToZ(ModListEntries) end
function UModioCommonCollectionView:ShowSearchView() end
---@param InStyle TSubclassOf<UModioCommonCollectionViewStyle>
function UModioCommonCollectionView:SetStyle(InStyle) end
---@param bVisible boolean
function UModioCommonCollectionView:SetNoResultsVisibility(bVisible) end
---@param bUserAuthenticated boolean
function UModioCommonCollectionView:SetDefaultCategoryFilterParams(bUserAuthenticated) end
function UModioCommonCollectionView:OnFetchUpdatesClicked() end
---@param ErrorCode FModioErrorCode
function UModioCommonCollectionView:OnFetchExternalCompleted(ErrorCode) end
---@param ModListEntries TArray<FModioModCollectionEntry>
function UModioCommonCollectionView:ApplySortingAndFiltering(ModListEntries) end


---@class UModioCommonCollectionViewStyle : UObject
---@field ModListStyle TSubclassOf<UModioCommonListViewStyle>
---@field NumOfDownloadingModsTextStyle TSubclassOf<UModioCommonTextStyle>
---@field InstalledModsLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field InstalledModsDescriptionTextStyle TSubclassOf<UModioCommonTextStyle>
---@field NumOfInstalledModsTextStyle TSubclassOf<UModioCommonTextStyle>
---@field ErrorsTextStyle TSubclassOf<UModioCommonTextStyle>
---@field NumOfErrorsTextStyle TSubclassOf<UModioCommonTextStyle>
---@field FetchUpdateButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field FilterButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field FilterCounterTextStyle TSubclassOf<UModioCommonTextStyle>
local UModioCommonCollectionViewStyle = {}



---@class UModioCommonComboBoxString : UComboBoxString
---@field ModioStyle TSubclassOf<UModioCommonComboBoxStringStyle>
local UModioCommonComboBoxString = {}

---@param InStyle TSubclassOf<UModioCommonComboBoxStringStyle>
function UModioCommonComboBoxString:SetStyle(InStyle) end


---@class UModioCommonComboBoxStringStyle : UObject
---@field WidgetStyle FComboBoxStyle
---@field ItemStyle FTableRowStyle
---@field ContentPadding FMargin
---@field MaxListHeight float
---@field HasDownArrow boolean
---@field EnableGamepadNavigationMode boolean
---@field Font FSlateFontInfo
---@field ForegroundColor FSlateColor
local UModioCommonComboBoxStringStyle = {}



---@class UModioCommonDialogInfo : UObject
---@field TitleText FText
---@field DialogText FText
---@field ButtonsToDisplay uint8
---@field OnDialogButtonClicked FModioCommonDialogInfoOnDialogButtonClicked
---@field Owner UObject
local UModioCommonDialogInfo = {}

---@param ClickedButtonType EModioCommonDialogButtonType
function UModioCommonDialogInfo:OnDialogButtonClicked__DelegateSignature(ClickedButtonType) end
---@param ClickedButtonType EModioCommonDialogButtonType
function UModioCommonDialogInfo:HandleDialogButtonClicked(ClickedButtonType) end


---@class UModioCommonDialogLibrary : UBlueprintFunctionLibrary
local UModioCommonDialogLibrary = {}

---@param ModInfo FModioModInfo
---@return UModioCommonDialogInfo
function UModioCommonDialogLibrary:CreateUninstallDialogInfo(ModInfo) end
---@param TitleText FText
---@param DialogText FText
---@return UModioCommonDialogInfo
function UModioCommonDialogLibrary:CreateManualDialogInfo(TitleText, DialogText) end
---@param ErrorCode FModioErrorCode
---@param TitleText FText
---@return UModioCommonDialogInfo
function UModioCommonDialogLibrary:CreateErrorDialogInfo(ErrorCode, TitleText) end
---@param ModInfo FModioModInfo
---@return UModioCommonDialogInfo
function UModioCommonDialogLibrary:CreateConfirmUninstallDialogInfo(ModInfo) end


---@class UModioCommonDialogMessageView : UModioCommonDialogMessageViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field BackButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
---@field ConfirmButton UModioCommonButtonBase
---@field OkButton UModioCommonButtonBase
---@field ModDetailsButton UModioCommonButtonBase
local UModioCommonDialogMessageView = {}

---@param Button UModioCommonButtonBase
---@param bEnabled boolean
function UModioCommonDialogMessageView:SetButtonEnabledState(Button, bEnabled) end
---@return TMap<EModioCommonDialogButtonType, UModioCommonButtonBase>
function UModioCommonDialogMessageView:GetButtons() end


---@class UModioCommonDialogMessageViewBase : UModioCommonActivatableWidget
local UModioCommonDialogMessageViewBase = {}


---@class UModioCommonDialogView : UModioCommonDialogViewBase
---@field DialogSwitcher UModioCommonWidgetSwitcher
---@field DialogMessageViewClass TSubclassOf<UModioCommonDialogMessageViewBase>
---@field DialogMessageView UModioCommonDialogMessageViewBase
local UModioCommonDialogView = {}



---@class UModioCommonDialogViewBase : UModioCommonActivatableWidget
local UModioCommonDialogViewBase = {}


---@class UModioCommonDynamicImage : UModioCommonImage
local UModioCommonDynamicImage = {}


---@class UModioCommonDynamicImageStyle : UModioCommonImageStyle
---@field ImageLoadingBrush FSlateBrush
---@field ImageUnavailableBrush FSlateBrush
local UModioCommonDynamicImageStyle = {}



---@class UModioCommonEditableTextBox : UEditableTextBox
---@field ModioStyle TSubclassOf<UModioCommonEditableTextBoxStyle>
---@field OnEditableTextChanged FModioCommonEditableTextBoxOnEditableTextChanged
local UModioCommonEditableTextBox = {}

---@param InStyle TSubclassOf<UModioCommonEditableTextBoxStyle>
function UModioCommonEditableTextBox:SetStyle(InStyle) end
---@return boolean
function UModioCommonEditableTextBox:IsTextBoxFocused() end


---@class UModioCommonEditableTextBoxStyle : UObject
---@field MaxTextLength int32
---@field HintText FText
---@field NormalBackgroundBrush FSlateBrush
---@field HoveredBackgroundBrush FSlateBrush
---@field FocusedBackgroundBrush FSlateBrush
---@field ReadOnlyBackgroundBrush FSlateBrush
---@field Padding FMargin
---@field Font FSlateFontInfo
---@field ForegroundColor FSlateColor
---@field BackgroundColor FSlateColor
---@field ReadOnlyForegroundColor FSlateColor
---@field FocusedForegroundColor FSlateColor
---@field NormalBorderBrush FSlateBrush
---@field HoveredBorderBrush FSlateBrush
---@field ErrorBorderBrush FSlateBrush
---@field bShowHintIcon boolean
---@field HintIcon FSlateBrush
---@field HintIconPadding FMargin
local UModioCommonEditableTextBoxStyle = {}



---@class UModioCommonEmailAuthCodeView : UModioCommonEmailAuthCodeViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field ValidationTextBlock UModioCommonTextBlock
---@field BackButton UModioCommonButtonBase
---@field SubmitButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
---@field CodeInputTextBox UModioCommonCodeInputTextBox
---@field CustomCodeInputTextBox UEditableTextBox
local UModioCommonEmailAuthCodeView = {}

---@param Visbility ESlateVisibility
function UModioCommonEmailAuthCodeView:SetValidationTextVisibility(Visbility) end
---@param bBusy boolean
function UModioCommonEmailAuthCodeView:SetIsBusy(bBusy) end
---@param Code FString
---@return boolean
function UModioCommonEmailAuthCodeView:IsCodeValid(Code) end
function UModioCommonEmailAuthCodeView:HandleOnSubmitClicked() end
---@param Text FText
---@param CommitMethod ETextCommit::Type
function UModioCommonEmailAuthCodeView:HandleOnCustomSubmitClicked(Text, CommitMethod) end
---@return FString
function UModioCommonEmailAuthCodeView:GetInputText() end


---@class UModioCommonEmailAuthCodeViewBase : UModioCommonActivatableWidget
---@field OnBackClicked FModioCommonEmailAuthCodeViewBaseOnBackClicked
---@field OnSubmitClicked FModioCommonEmailAuthCodeViewBaseOnSubmitClicked
---@field OnCancelClicked FModioCommonEmailAuthCodeViewBaseOnCancelClicked
local UModioCommonEmailAuthCodeViewBase = {}



---@class UModioCommonEmailAuthLoadingView : UModioCommonEmailAuthLoadingViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field CancelButton UModioCommonButtonBase
local UModioCommonEmailAuthLoadingView = {}



---@class UModioCommonEmailAuthLoadingViewBase : UModioCommonActivatableWidget
---@field OnCancelClicked FModioCommonEmailAuthLoadingViewBaseOnCancelClicked
local UModioCommonEmailAuthLoadingViewBase = {}



---@class UModioCommonEmailAuthView : UModioCommonEmailAuthViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field ValidationTextBlock UModioCommonTextBlock
---@field EmailTextBox UModioCommonEditableTextBox
---@field BackButton UModioCommonButtonBase
---@field SubmitButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
local UModioCommonEmailAuthView = {}

---@param Visbility ESlateVisibility
function UModioCommonEmailAuthView:SetValidationTextVisibility(Visbility) end
---@param InText FText
function UModioCommonEmailAuthView:OnEditableTextBoxTextChanged(InText) end
---@param Email FString
---@return boolean
function UModioCommonEmailAuthView:IsEmailValid(Email) end


---@class UModioCommonEmailAuthViewBase : UModioCommonActivatableWidget
---@field OnBackClicked FModioCommonEmailAuthViewBaseOnBackClicked
---@field OnCancelClicked FModioCommonEmailAuthViewBaseOnCancelClicked
---@field OnSubmitClicked FModioCommonEmailAuthViewBaseOnSubmitClicked
local UModioCommonEmailAuthViewBase = {}



---@class UModioCommonErrorWithRetryParamsUI : UObject
---@field ErrorTitleTextLabel FText
---@field ErrorDescriptionTextLabel FText
local UModioCommonErrorWithRetryParamsUI = {}



---@class UModioCommonErrorWithRetryWidget : UModioCommonActivatableWidget
---@field ModioStyle TSubclassOf<UModioCommonErrorWithRetryWidgetStyle>
---@field IconImage UModioCommonImage
---@field ErrorTitleTextBlock UModioCommonTextBlock
---@field ErrorDescriptionTextBlock UModioCommonTextBlock
---@field RetryButton UModioCommonButtonBase
---@field RetryClickedDynamicDelegate FModioCommonErrorWithRetryWidgetRetryClickedDynamicDelegate
local UModioCommonErrorWithRetryWidget = {}

---@param InStyle TSubclassOf<UModioCommonErrorWithRetryWidgetStyle>
function UModioCommonErrorWithRetryWidget:SetStyle(InStyle) end
function UModioCommonErrorWithRetryWidget:RetryClickedDynamicDelegate__DelegateSignature() end


---@class UModioCommonErrorWithRetryWidgetStyle : UObject
---@field IconImageStyle TSubclassOf<UModioCommonImageStyle>
---@field ErrorTitleTextBlockStyle TSubclassOf<UModioCommonTextStyle>
---@field ErrorDescriptionTextBlockStyle TSubclassOf<UModioCommonTextStyle>
---@field RetryButtonStyle TSubclassOf<UModioCommonButtonStyle>
local UModioCommonErrorWithRetryWidgetStyle = {}



---@class UModioCommonExpandableArea : UExpandableArea
---@field ModioStyle TSubclassOf<UModioCommonExpandableAreaStyle>
---@field CachedAppliedModioStyle TSubclassOf<UModioCommonExpandableAreaStyle>
local UModioCommonExpandableArea = {}

---@param InStyle TSubclassOf<UModioCommonExpandableAreaStyle>
function UModioCommonExpandableArea:SetStyle(InStyle) end
function UModioCommonExpandableArea:HandleOnFocusReceived() end
function UModioCommonExpandableArea:HandleOnFocusLost() end


---@class UModioCommonExpandableAreaStyle : UObject
---@field NormalLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field SelectedLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field Style FExpandableAreaStyle
---@field BorderBrush FSlateBrush
---@field BorderColor FSlateColor
---@field bIsExpandedByDefault boolean
---@field MaxHeight float
---@field HeaderPadding FMargin
---@field AreaPadding FMargin
local UModioCommonExpandableAreaStyle = {}



---@class UModioCommonFeaturedView : UModioCommonModListBase
---@field ModioStyle TSubclassOf<UModioCommonFeaturedViewStyle>
---@field SearchResultsView UModioCommonSearchResultsView
---@field PreviouslyAppliedFilter FModioFilterParams
---@field OverriddenModsCount int64
---@field bWasFilterAppliedAtLeastOnce boolean
local UModioCommonFeaturedView = {}

---@param InStyle TSubclassOf<UModioCommonFeaturedViewStyle>
function UModioCommonFeaturedView:SetStyle(InStyle) end
---@param Filter FModioFilterParams
function UModioCommonFeaturedView:RefreshListByFilter(Filter) end
---@param InCategoryName FName
function UModioCommonFeaturedView:RefreshListByCategoryName(InCategoryName) end
function UModioCommonFeaturedView:RefreshList() end


---@class UModioCommonFeaturedViewStyle : UObject
---@field SearchResultsViewStyle TSubclassOf<UModioCommonSearchResultsViewStyle>
local UModioCommonFeaturedViewStyle = {}



---@class UModioCommonFilteredModListView : UModioCommonActivatableWidget
---@field ModioStyle TSubclassOf<UModioCommonFilteredModListViewStyle>
---@field ModList UListView
---@field InitialScreenContainer UPanelWidget
---@field NoResultsContainer UPanelWidget
---@field PageNavigationContainer UPanelWidget
---@field PreviousPageButton UModioCommonButtonBase
---@field NextPageButton UModioCommonButtonBase
---@field CurrentPageTextBlock UModioCommonTextBlock
---@field TotalPagesTextBlock UModioCommonTextBlock
---@field TotalModsTextBlock UModioCommonTextBlock
---@field ModListLoader UWidget
---@field ErrorWithRetryWidget UModioCommonErrorWithRetryWidget
---@field OnSetModsFromModInfoListDynamicStarted FModioCommonFilteredModListViewOnSetModsFromModInfoListDynamicStarted
---@field OnSetModsFromModInfoListDynamicFinished FModioCommonFilteredModListViewOnSetModsFromModInfoListDynamicFinished
---@field bHasSearchedBefore boolean
---@field CurrentPageIndex int64
---@field TotalMods int64
---@field PageSize int64
---@field TotalPages int64
local UModioCommonFilteredModListView = {}

function UModioCommonFilteredModListView:UpdateInputActions() end
---@param InStyle TSubclassOf<UModioCommonFilteredModListViewStyle>
function UModioCommonFilteredModListView:SetStyle(InStyle) end
---@param bIsVisible boolean
function UModioCommonFilteredModListView:SetPageNavigationVisibility(bIsVisible) end
---@param bIsVisible boolean
function UModioCommonFilteredModListView:SetNoResultsVisibility(bIsVisible) end
---@param bIsVisible boolean
function UModioCommonFilteredModListView:SetInitialScreenVisibility(bIsVisible) end
function UModioCommonFilteredModListView:OnSetModsFromModInfoListDynamicStarted__DelegateSignature() end
function UModioCommonFilteredModListView:OnSetModsFromModInfoListDynamicFinished__DelegateSignature() end
function UModioCommonFilteredModListView:HandlePreviousPageClicked() end
function UModioCommonFilteredModListView:HandleNextPageClicked() end
---@return int32
function UModioCommonFilteredModListView:GetNumItemsSelected() end
---@return int32
function UModioCommonFilteredModListView:GetNumItems() end


---@class UModioCommonFilteredModListViewStyle : UObject
---@field ModListStyle TSubclassOf<UModioCommonListViewStyle>
---@field PreviousPageButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field NextPageButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field CurrentPageTextBlockStyle TSubclassOf<UModioCommonTextStyle>
---@field TotalPagesTextBlockStyle TSubclassOf<UModioCommonTextStyle>
---@field TotalModsTextBlockStyle TSubclassOf<UModioCommonTextStyle>
local UModioCommonFilteredModListViewStyle = {}



---@class UModioCommonFilteringView : UModioCommonActivatableWidget
---@field FilteringTagsContainer UPanelWidget
---@field TagGroupListClass TSubclassOf<UModioCommonModTagGroupList>
local UModioCommonFilteringView = {}

---@param PreviouslySelectedTagGroupValues TArray<FString>
function UModioCommonFilteringView:SynchronizeFilterParams(PreviouslySelectedTagGroupValues) end
---@param TagGroupValues TArray<FString>
---@param bSelect boolean
---@return boolean
function UModioCommonFilteringView:SetSelectedTagGroupValues(TagGroupValues, bSelect) end
function UModioCommonFilteringView:ResetFiltering() end
---@param OutSelectedTagGroupValues TArray<FString>
---@return boolean
function UModioCommonFilteringView:GetSelectedTagGroupValues(OutSelectedTagGroupValues) end
---@return FModioModCategoryParams
function UModioCommonFilteringView:GetFilterParamsWrapper() end
---@param ModTagInfo FModioModTagInfo
function UModioCommonFilteringView:AddModTagInfo(ModTagInfo) end


---@class UModioCommonGenericModEntry : UModioCommonModEntryBase
---@field ModioStyle TSubclassOf<UModioCommonGenericModEntryStyle>
---@field Background UModioCommonBorder
---@field ForegroundContainer UPanelWidget
---@field ModImage UModioCommonDynamicImage
---@field ModNameTextBlock UModioCommonRichTextBlock
---@field OperationLabelTextBlock UModioCommonRichTextBlock
---@field OperationDetailsTextBlock UModioCommonRichTextBlock
---@field SpeedLabelTextBlock UModioCommonRichTextBlock
---@field SpeedDetailsTextBlock UModioCommonRichTextBlock
---@field DownloadsLabelTextBlock UModioCommonRichTextBlock
---@field DownloadsDetailsTextBlock UModioCommonRichTextBlock
---@field SizeLabelTextBlock UModioCommonRichTextBlock
---@field SizeDetailsTextBlock UModioCommonRichTextBlock
---@field RatingPercentageTextBlock UModioCommonRichTextBlock
---@field RatingPositiveTextBlock UModioCommonRichTextBlock
---@field RatingNegativeTextBlock UModioCommonRichTextBlock
---@field SubscribeButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
---@field EnableButton UModioCommonButtonBase
---@field DisableButton UModioCommonButtonBase
---@field OpenModDetailsButton UModioCommonButtonBase
---@field ForceUninstallButton UModioCommonButtonBase
---@field PercentProgressTextBlock UModioCommonRichTextBlock
---@field PercentProgressBar UModioCommonProgressBar
---@field MinDecimalsFileSize int32
---@field MaxDecimalsFileSize int32
---@field MinDecimalsProgress int32
---@field MaxDecimalsProgress int32
---@field MinDecimalsSpeed int32
---@field MaxDecimalsSpeed int32
local UModioCommonGenericModEntry = {}

---@param DeltaBytes FModioUnsigned64
---@param DeltaTime double
function UModioCommonGenericModEntry:UpdateSpeed(DeltaBytes, DeltaTime) end
---@param InPercent float
function UModioCommonGenericModEntry:UpdateOperationProgressPercent(InPercent) end
---@param Current FModioUnsigned64
---@param Total FModioUnsigned64
function UModioCommonGenericModEntry:UpdateOperationProgressBytes(Current, Total) end
---@param bIsVisible boolean
function UModioCommonGenericModEntry:SwitchSpeedVisibility(bIsVisible) end
---@param bIsVisible boolean
function UModioCommonGenericModEntry:SwitchForceUninstallButtonVisibility(bIsVisible) end
---@param bIsVisible boolean
function UModioCommonGenericModEntry:SwitchEnableButtonVisibility(bIsVisible) end
---@param bIsVisible boolean
function UModioCommonGenericModEntry:SwitchDisableButtonVisibility(bIsVisible) end
---@param bIsVisible boolean
function UModioCommonGenericModEntry:SwitchCancelButtonVisibility(bIsVisible) end
---@param InStyle TSubclassOf<UModioCommonGenericModEntryStyle>
function UModioCommonGenericModEntry:SetStyle(InStyle) end
---@param ErrorCode FModioErrorCode
---@param Rating EModioRating
function UModioCommonGenericModEntry:OnRatingSubmissionComplete(ErrorCode, Rating) end
function UModioCommonGenericModEntry:HandleSwitchEnabledClicked() end
function UModioCommonGenericModEntry:HandleSubscribeClicked() end
function UModioCommonGenericModEntry:HandleOpenModDetailsClicked() end
function UModioCommonGenericModEntry:HandleForceUninstallClicked() end
function UModioCommonGenericModEntry:HandleCancelClicked() end


---@class UModioCommonGenericModEntryStateStyle : UObject
---@field ModOperationTrackerStyle TSubclassOf<UModioCommonModOperationTrackerUserWidgetStyle>
---@field BackgroundStyle TSubclassOf<UModioCommonBorderStyle>
---@field ModImageStyle TSubclassOf<UModioCommonDynamicImageStyle>
---@field ModNameTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field OperationLabelTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field OperationDetailsTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field SpeedLabelTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field SpeedDetailsTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field DownloadsLabelTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field DownloadsDetailsTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field SizeLabelTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field SizeDetailsTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field RatingPercentageTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field RatingPositiveTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field RatingNegativeTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field PercentProgressTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field SubscribeButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field CancelButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field EnableButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field DisableButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field OpenModDetailsButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field PercentProgressBarStyle TSubclassOf<UModioCommonProgressBarStyle>
local UModioCommonGenericModEntryStateStyle = {}



---@class UModioCommonGenericModEntryStyle : UObject
---@field NormalStyle TSubclassOf<UModioCommonGenericModEntryStateStyle>
---@field SelectedStyle TSubclassOf<UModioCommonGenericModEntryStateStyle>
local UModioCommonGenericModEntryStyle = {}



---@class UModioCommonImage : UModioCommonImageBase
---@field ModioStyle TSubclassOf<UModioCommonImageStyle>
---@field ImageFrame UCommonLazyImage
---@field Image UCommonLazyImage
---@field LoadedImageTexture UTexture2DDynamic
local UModioCommonImage = {}

---@param InStyle TSubclassOf<UModioCommonImageStyle>
function UModioCommonImage:SetStyle(InStyle) end
function UModioCommonImage:BP_SynchronizeProperties() end


---@class UModioCommonImageBase : UCommonUserWidget
---@field OnImageLoadedDynamic FModioCommonImageBaseOnImageLoadedDynamic
---@field bLoadFailed boolean
---@field bIsLoading boolean
local UModioCommonImageBase = {}

---@param Texture UTexture2DDynamic
function UModioCommonImageBase:SetImageTexture(Texture) end
function UModioCommonImageBase:OnStartLoadNewImage() end
function UModioCommonImageBase:OnLoadNewImageError() end
---@param bSuccess boolean
function UModioCommonImageBase:OnImageLoadedDynamicDelegate__DelegateSignature(bSuccess) end
---@param ModId FModioModID
---@param LogoSize EModioLogoSize
function UModioCommonImageBase:LoadImageFromLogo(ModId, LogoSize) end
---@param ModId FModioModID
---@param GallerySize EModioGallerySize
---@param Index int32
function UModioCommonImageBase:LoadImageFromGallery(ModId, GallerySize, Index) end
---@param ImageLoader FModioImageWrapper
function UModioCommonImageBase:LoadImageFromFileAsync(ImageLoader) end
---@param ModId FModioModID
---@param AvatarSize EModioAvatarSize
function UModioCommonImageBase:LoadImageFromAvatar(ModId, AvatarSize) end


---@class UModioCommonImageStyle : UObject
---@field ImageFrameBrush FSlateBrush
---@field ImageBrush FSlateBrush
local UModioCommonImageStyle = {}



---@class UModioCommonListView : UCommonListView
---@field ModioStyle TSubclassOf<UModioCommonListViewStyle>
local UModioCommonListView = {}

---@param InStyle TSubclassOf<UModioCommonListViewStyle>
function UModioCommonListView:SetStyle(InStyle) end


---@class UModioCommonListViewStyle : UObject
---@field WidgetStyle FTableViewStyle
---@field ScrollBarStyle FScrollBarStyle
---@field Orientation EOrientation
---@field SelectionMode ESelectionMode::Type
local UModioCommonListViewStyle = {}



---@class UModioCommonModBrowser : UModioCommonModBrowserBase
---@field NotificationController UWidget
---@field UserProfile UModioCommonUserProfileBase
---@field TabList UModioCommonTabListWidgetBase
---@field ContentStack UModioCommonActivatableWidgetStack
---@field AuthStack UModioCommonActivatableWidgetStack
---@field ReportStack UModioCommonActivatableWidgetStack
---@field RightTabStack UModioCommonActivatableWidgetStack
---@field DialogStack UModioCommonActivatableWidgetStack
---@field ActionBar UModioCommonActionBar
local UModioCommonModBrowser = {}

---@param SearchType EModioCommonSearchViewType
---@param CurrentFilterParams FModioModCategoryParams
---@return boolean
function UModioCommonModBrowser:ShowSearchView(SearchType, CurrentFilterParams) end
---@return boolean
function UModioCommonModBrowser:ShowQuickAccessView() end
---@param ModInfo FModioModInfo
---@return boolean
function UModioCommonModBrowser:ShowModDetailsView(ModInfo) end
---@return boolean
function UModioCommonModBrowser:ShowFeaturedView() end
---@return boolean
function UModioCommonModBrowser:ShowCollectionView() end
---@param TabNameID FName
function UModioCommonModBrowser:RemoveTab(TabNameID) end
---@return boolean
function UModioCommonModBrowser:HideSearchView() end
---@return boolean
function UModioCommonModBrowser:HideReportMod() end
---@return boolean
function UModioCommonModBrowser:HideQuickAccessView() end
---@return boolean
function UModioCommonModBrowser:HideModDetailsView() end
---@return boolean
function UModioCommonModBrowser:HideFeaturedView() end
---@return boolean
function UModioCommonModBrowser:HideCollectionView() end
function UModioCommonModBrowser:HandleViewChanged() end
---@param TabNameID FName
---@param OutView TSubclassOf<UModioCommonActivatableWidget>
---@return boolean
function UModioCommonModBrowser:GetViewFromTabNameID(TabNameID, OutView) end
function UModioCommonModBrowser:ClearTabs() end
---@param TabNameID FName
---@param TabText FText
---@param ContentClass TSubclassOf<UModioCommonActivatableWidget>
---@return boolean
function UModioCommonModBrowser:AddTab(TabNameID, TabText, ContentClass) end
---@param TabNameID FName
---@param TabText FText
---@return boolean
function UModioCommonModBrowser:AddEmptyTab(TabNameID, TabText) end
---@param TabNameID FName
---@param ContentClass TSubclassOf<UModioCommonActivatableWidget>
---@param OutContent UModioCommonActivatableWidget
---@return boolean
function UModioCommonModBrowser:AddContentForTab(TabNameID, ContentClass, OutContent) end


---@class UModioCommonModBrowserBase : UModioCommonActivatableWidget
---@field ModioStyle TSubclassOf<UModioCommonModBrowserBaseStyle>
local UModioCommonModBrowserBase = {}

---@param InStyle TSubclassOf<UModioCommonModBrowserBaseStyle>
function UModioCommonModBrowserBase:SetStyle(InStyle) end
---@return boolean
function UModioCommonModBrowserBase:IsUserAuthenticated() end


---@class UModioCommonModBrowserBaseStyle : UObject
---@field ModDetailsClass TSubclassOf<UModioCommonModDetailsViewBase>
---@field UserAuthClass TSubclassOf<UModioCommonAuthViewBase>
---@field ReportClass TSubclassOf<UModioCommonReportViewBase>
---@field DialogClass TSubclassOf<UModioCommonDialogViewBase>
local UModioCommonModBrowserBaseStyle = {}



---@class UModioCommonModBrowserStyle : UModioCommonModBrowserBaseStyle
---@field TabButtonClass TSubclassOf<UModioCommonTabButtonBase>
---@field TabButtonStyle TSubclassOf<UModioCommonTabButtonStyle>
---@field FeaturedViewClass TSubclassOf<UModioCommonModListBase>
---@field CollectionViewClass TSubclassOf<UModioCommonModListBase>
---@field QuickAccessViewClass TSubclassOf<UModioCommonQuickAccessViewBase>
---@field SearchViewClass TSubclassOf<UModioCommonSearchViewBase>
local UModioCommonModBrowserStyle = {}



---@class UModioCommonModDetailsView : UModioCommonModDetailsViewBase
---@field ModioStyle TSubclassOf<UModioCommonModDetailsViewStyle>
---@field ModNameTextBlock UModioCommonTextBlock
---@field SubscribeButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
---@field RateUpButton UModioCommonButtonBase
---@field RateDownButton UModioCommonButtonBase
---@field ReportButton UModioCommonButtonBase
---@field CollectionButton UButton
---@field ModSummaryTextBlock UModioCommonTextBlock
---@field ModFullDescriptionLabelTextBlock UModioCommonTextBlock
---@field ModFullDescriptionTextBlock UModioCommonTextBlock
---@field OperationContainer UHorizontalBox
---@field ProgressBarContainer UVerticalBox
---@field StatusContainer UHorizontalBox
---@field InstalledCheckBox UModioCommonCheckBox
---@field EnabledCheckBox UModioCommonCheckBox
---@field OperationProgressLabelTextBlock UModioCommonTextBlock
---@field OperationProgressTextBlock UModioCommonTextBlock
---@field OperationProgressBar UModioCommonProgressBar
---@field FileSizeLabelTextBlock UModioCommonTextBlock
---@field FileSizeTextBlock UModioCommonTextBlock
---@field LastUpdatedLabelTextBlock UModioCommonTextBlock
---@field LastUpdatedTextBlock UModioCommonTextBlock
---@field ReleaseDateLabelTextBlock UModioCommonTextBlock
---@field ReleaseDateTextBlock UModioCommonTextBlock
---@field SubscribersLabelTextBlock UModioCommonTextBlock
---@field SubscribersTextBlock UModioCommonTextBlock
---@field CreatedByLabelTextBlock UModioCommonTextBlock
---@field CreatedByTextBlock UModioCommonTextBlock
---@field TagsLabelTextBlock UModioCommonTextBlock
---@field TagsWidget UModioCommonModTagList
---@field ModGalleryView UModioCommonModGalleryView
---@field ModioCommonDescriptionScrollBox UModioCommonScrollBox
---@field SpeedDetailsTextBlock UModioCommonTextBlock
---@field ModDetailsLoader UWidget
---@field ErrorWithRetryWidget UModioCommonErrorWithRetryWidget
local UModioCommonModDetailsView = {}

---@param DeltaBytes FModioUnsigned64
---@param DeltaTime double
function UModioCommonModDetailsView:UpdateSpeed(DeltaBytes, DeltaTime) end
---@param InPercent float
function UModioCommonModDetailsView:UpdateOperationProgressPercent(InPercent) end
---@param Current FModioUnsigned64
---@param Total FModioUnsigned64
function UModioCommonModDetailsView:UpdateOperationProgressBytes(Current, Total) end
function UModioCommonModDetailsView:UpdateInputActions() end
function UModioCommonModDetailsView:ShowStatus() end
function UModioCommonModDetailsView:ShowProgress() end
---@param InStyle TSubclassOf<UModioCommonModDetailsViewStyle>
function UModioCommonModDetailsView:SetStyle(InStyle) end
---@param ErrorCode FModioErrorCode
---@param SubmittedRating EModioRating
function UModioCommonModDetailsView:OnRatingSubmissionComplete(ErrorCode, SubmittedRating) end
function UModioCommonModDetailsView:HideProgress() end
function UModioCommonModDetailsView:HandleSwitchEnabledClicked() end
function UModioCommonModDetailsView:HandleSubscribeClicked() end
function UModioCommonModDetailsView:HandleReportClicked() end
function UModioCommonModDetailsView:HandleRateUpClicked() end
function UModioCommonModDetailsView:HandleRateNeutralClicked() end
function UModioCommonModDetailsView:HandleRateDownClicked() end
function UModioCommonModDetailsView:HandleCollectionClicked() end
function UModioCommonModDetailsView:HandleCancelClicked() end
function UModioCommonModDetailsView:ActivateTopButtonsInputBindings() end
function UModioCommonModDetailsView:ActivateTagsInputBindings() end
function UModioCommonModDetailsView:ActivateBottomButtonsInputBindings() end


---@class UModioCommonModDetailsViewBase : UModioCommonActivatableWidget
---@field ModOperationTrackerUserWidget UModioCommonModOperationTrackerUserWidget
---@field ModOperationTrackerWidget UModioCommonModOperationTrackerWidget
local UModioCommonModDetailsViewBase = {}

---@return boolean
function UModioCommonModDetailsViewBase:IsUserAuthenticated() end


---@class UModioCommonModDetailsViewStyle : UObject
---@field ModGalleryViewStyle TSubclassOf<UModioCommonModGalleryViewStyle>
---@field ModNameTextStyle TSubclassOf<UModioCommonTextStyle>
---@field SubscribeButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field CancelButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field RateUpButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field RateDownButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field ReportButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field ModSummaryTextStyle TSubclassOf<UModioCommonTextStyle>
---@field ModFullDescriptionLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field ModFullDescriptionTextStyle TSubclassOf<UModioCommonTextStyle>
---@field DownloadProgressLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field DownloadProgressTextStyle TSubclassOf<UModioCommonTextStyle>
---@field DownloadProgressBarStyle TSubclassOf<UModioCommonProgressBarStyle>
---@field StatsLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field StatsTextStyle TSubclassOf<UModioCommonTextStyle>
local UModioCommonModDetailsViewStyle = {}



---@class UModioCommonModEntryBase : UModioCommonActivatableWidget
---@field ModOperationTrackerUserWidget UModioCommonModOperationTrackerUserWidget
---@field ModOperationTrackerWidget UModioCommonModOperationTrackerWidget
local UModioCommonModEntryBase = {}

---@param bIsListItemSelected boolean
function UModioCommonModEntryBase:UpdateStyling(bIsListItemSelected) end
function UModioCommonModEntryBase:UpdateInputActions() end
function UModioCommonModEntryBase:SelectModListItem() end
---@return boolean
function UModioCommonModEntryBase:IsUserAuthenticated() end
---@return boolean
function UModioCommonModEntryBase:IsModListItemValid() end
---@return boolean
function UModioCommonModEntryBase:IsModListItemSelected() end
function UModioCommonModEntryBase:DeselectModListItem() end


---@class UModioCommonModGalleryEntry : UModioCommonActivatableWidget
---@field ModioStyle TSubclassOf<UModioCommonModGalleryEntryStyle>
---@field ModImage UModioCommonDynamicImage
local UModioCommonModGalleryEntry = {}

---@param InStyle TSubclassOf<UModioCommonModGalleryEntryStyle>
function UModioCommonModGalleryEntry:SetStyle(InStyle) end


---@class UModioCommonModGalleryEntryStyle : UObject
---@field ModImageNormalStyle TSubclassOf<UModioCommonDynamicImageStyle>
---@field ModImageSelectedStyle TSubclassOf<UModioCommonDynamicImageStyle>
local UModioCommonModGalleryEntryStyle = {}



---@class UModioCommonModGalleryItem : UObject
---@field ModInfo FModioModInfo
---@field ImageGalleryIndex int32
local UModioCommonModGalleryItem = {}



---@class UModioCommonModGalleryView : UModioCommonActivatableWidget
---@field ModioStyle TSubclassOf<UModioCommonModGalleryViewStyle>
---@field GallerySize EModioGallerySize
---@field LogoSize EModioLogoSize
---@field ImageNavButtons UModioCommonListView
---@field SelectedGalleryImage UModioCommonDynamicImage
---@field PreviousButton UModioCommonButtonBase
---@field NextButton UModioCommonButtonBase
---@field ModGalleryLoader UWidget
---@field ErrorWithRetryWidget UModioCommonErrorWithRetryWidget
local UModioCommonModGalleryView = {}

---@param InStyle TSubclassOf<UModioCommonModGalleryViewStyle>
function UModioCommonModGalleryView:SetStyle(InStyle) end
---@param bIsVisible boolean
function UModioCommonModGalleryView:SetPreviousButtonVisibility(bIsVisible) end
---@param bIsVisible boolean
function UModioCommonModGalleryView:SetNextButtonVisibility(bIsVisible) end
function UModioCommonModGalleryView:RefreshGallery() end
function UModioCommonModGalleryView:GoToPreviousImage() end
function UModioCommonModGalleryView:GoToNextImage() end
---@return int32
function UModioCommonModGalleryView:GetSelectedImageGalleryIndex() end
---@return int32
function UModioCommonModGalleryView:GetNumGalleryImages() end
---@param ImageGalleryIndex int32
function UModioCommonModGalleryView:AddGalleryImage(ImageGalleryIndex) end
function UModioCommonModGalleryView:AddDefaultGalleryImage() end


---@class UModioCommonModGalleryViewStyle : UObject
---@field GalleryImageStyle TSubclassOf<UModioCommonDynamicImageStyle>
local UModioCommonModGalleryViewStyle = {}



---@class UModioCommonModListBase : UModioCommonActivatableWidget
local UModioCommonModListBase = {}


---@class UModioCommonModListView : UModioCommonListView
---@field bFocusOnceListIsPopulatedRequested boolean
local UModioCommonModListView = {}



---@class UModioCommonModOperationTrackerUserWidget : UModioCommonActivatableWidget
---@field ModioStyle TSubclassOf<UModioCommonModOperationTrackerUserWidgetStyle>
---@field Tracker UModioCommonModOperationTrackerWidget
---@field IconImage UModioCommonImage
---@field ModTitleTextBlock UModioCommonTextBlock
---@field OverallOperationPercentageLabelTextBlock UModioCommonTextBlock
---@field OverallOperationPercentageTextBlock UModioCommonTextBlock
---@field QueuedOperationNumberLabelTextBlock UModioCommonTextBlock
---@field QueuedOperationNumberTextBlock UModioCommonTextBlock
---@field SpeedLabelTextBlock UModioCommonTextBlock
---@field SpeedTextBlock UModioCommonTextBlock
---@field ModOperationProgressBar UModioCommonProgressBar
---@field MinDecimalsProgress int32
---@field MaxDecimalsProgress int32
---@field MinDecimalsSpeed int32
---@field MaxDecimalsSpeed int32
---@field bTrackAnyMods boolean
local UModioCommonModOperationTrackerUserWidget = {}

function UModioCommonModOperationTrackerUserWidget:UpdateQueuedOperationNumber() end
---@param ModId FModioModID
function UModioCommonModOperationTrackerUserWidget:SetTrackingModID(ModId) end
---@param InStyle TSubclassOf<UModioCommonModOperationTrackerUserWidgetStyle>
function UModioCommonModOperationTrackerUserWidget:SetStyle(InStyle) end
---@param DeltaBytes FModioUnsigned64
---@param DeltaTime double
function UModioCommonModOperationTrackerUserWidget:OnModOperationTrackerSpeedUpdated(DeltaBytes, DeltaTime) end
---@param Current FModioUnsigned64
---@param Total FModioUnsigned64
function UModioCommonModOperationTrackerUserWidget:OnModOperationTrackerProgressUpdated(Current, Total) end
---@return int32
function UModioCommonModOperationTrackerUserWidget:GetNumOfQueuedMods() end
---@param OutDownloadingMod FModioModCollectionEntry
---@return boolean
function UModioCommonModOperationTrackerUserWidget:GetCurrentDownloadingMod(OutDownloadingMod) end


---@class UModioCommonModOperationTrackerUserWidgetStyle : UObject
---@field IconImageStyle TSubclassOf<UModioCommonImageStyle>
---@field OverallOperationPercentageLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field OverallOperationPercentageTextStyle TSubclassOf<UModioCommonTextStyle>
---@field QueuedOperationNumberLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field QueuedOperationNumberTextStyle TSubclassOf<UModioCommonTextStyle>
---@field SpeedLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field SpeedTextStyle TSubclassOf<UModioCommonTextStyle>
---@field ModOperationProgressBarStyle TSubclassOf<UModioCommonProgressBarStyle>
local UModioCommonModOperationTrackerUserWidgetStyle = {}



---@class UModioCommonModOperationTrackerWidget : UTickableModioCommonWidget
---@field OnProgress FModioCommonModOperationTrackerWidgetOnProgress
---@field OnSpeed FModioCommonModOperationTrackerWidgetOnSpeed
local UModioCommonModOperationTrackerWidget = {}

---@param ModId FModioModID
function UModioCommonModOperationTrackerWidget:SetTrackingModID(ModId) end
---@param bInTrackAnyMods boolean
function UModioCommonModOperationTrackerWidget:SetTrackAnyMods(bInTrackAnyMods) end
---@param DeltaBytes FModioUnsigned64
---@param DeltaTime double
function UModioCommonModOperationTrackerWidget:OnCommonModOperationTrackerSpeed__DelegateSignature(DeltaBytes, DeltaTime) end
---@param Current FModioUnsigned64
---@param Total FModioUnsigned64
function UModioCommonModOperationTrackerWidget:OnCommonModOperationTrackerProgress__DelegateSignature(Current, Total) end
---@return int64
function UModioCommonModOperationTrackerWidget:GetPreviewTotal() end
---@return int64
function UModioCommonModOperationTrackerWidget:GetPreviewCurrent() end


---@class UModioCommonModTagEntry : UModioCommonActivatableWidget
---@field TagButton UModioCommonButtonBase
---@field TagCheckbox UModioCommonCheckBox
---@field Tag FString
---@field bAllowMultipleSelection boolean
local UModioCommonModTagEntry = {}

---@param InTag FString
function UModioCommonModTagEntry:SetTag(InTag) end
---@param bIsSelected boolean
function UModioCommonModTagEntry:SetSelected(bIsSelected) end
---@param bInAllowMultipleSelection boolean
function UModioCommonModTagEntry:SetAllowMultipleSelection(bInAllowMultipleSelection) end
---@return FString
function UModioCommonModTagEntry:GetTag() end
---@return boolean
function UModioCommonModTagEntry:GetSelected() end
---@return boolean
function UModioCommonModTagEntry:GetAllowMultipleSelection() end


---@class UModioCommonModTagGroupList : UModioCommonActivatableWidget
---@field TagEntryClass TSubclassOf<UModioCommonModTagEntry>
---@field TagGroupNameTextBlock UModioCommonTextBlock
---@field TagsContainer UPanelWidget
local UModioCommonModTagGroupList = {}

---@param ModTagEntry UModioCommonModTagEntry
---@param bIsSelected boolean
function UModioCommonModTagGroupList:UpdateSelection(ModTagEntry, bIsSelected) end
---@param TagInfo FModioModTagInfo
function UModioCommonModTagGroupList:SetTagsGroup(TagInfo) end
---@param TagGroupValues TArray<FString>
---@param bSelect boolean
---@return boolean
function UModioCommonModTagGroupList:SetSelectedTagGroupValues(TagGroupValues, bSelect) end
function UModioCommonModTagGroupList:ResetTagsSelection() end
---@param OutSelectedTagGroupValues TArray<FString>
---@return boolean
function UModioCommonModTagGroupList:GetSelectedTagGroupValues(OutSelectedTagGroupValues) end


---@class UModioCommonModTagList : UModioCommonActivatableWidget
---@field TagEntryClass TSubclassOf<UModioCommonModTagEntry>
---@field TagsContainer UPanelWidget
local UModioCommonModTagList = {}

---@param Tags TArray<FString>
function UModioCommonModTagList:SetTagsString(Tags) end
---@param ModTags TArray<FModioModTag>
function UModioCommonModTagList:SetTags(ModTags) end


---@class UModioCommonModTileView : UModioCommonTileView
---@field bFocusOnceListIsPopulatedRequested boolean
local UModioCommonModTileView = {}



---@class UModioCommonMultiLineEditableTextBox : UMultiLineEditableTextBox
---@field ModioStyle TSubclassOf<UModioCommonMultiLineEditableTextBoxStyle>
---@field OnMultiLineEditableTextChanged FModioCommonMultiLineEditableTextBoxOnMultiLineEditableTextChanged
---@field IsCaretMovedWhenGainFocus boolean
---@field SelectAllTextWhenFocused boolean
---@field RevertTextOnEscape boolean
---@field ClearKeyboardFocusOnCommit boolean
---@field SelectAllTextOnCommit boolean
---@field AlwaysShowScrollbars boolean
---@field AllowMultiLine boolean
---@field VirtualKeyboardTrigger EVirtualKeyboardTrigger
---@field OverflowPolicy ETextOverflowPolicy
local UModioCommonMultiLineEditableTextBox = {}

---@param InStyle TSubclassOf<UModioCommonMultiLineEditableTextBoxStyle>
function UModioCommonMultiLineEditableTextBox:SetStyle(InStyle) end
---@return boolean
function UModioCommonMultiLineEditableTextBox:IsTextBoxFocused() end


---@class UModioCommonMultiLineEditableTextBoxStyle : UObject
---@field MaxTextLength int32
---@field HintText FText
---@field NormalBackgroundBrush FSlateBrush
---@field HoveredBackgroundBrush FSlateBrush
---@field FocusedBackgroundBrush FSlateBrush
---@field ReadOnlyBackgroundBrush FSlateBrush
---@field Padding FMargin
---@field TextStyle FTextBlockStyle
---@field ForegroundColor FSlateColor
---@field BackgroundColor FSlateColor
---@field ReadOnlyForegroundColor FSlateColor
---@field FocusedForegroundColor FSlateColor
---@field NormalBorderBrush FSlateBrush
---@field HoveredBorderBrush FSlateBrush
---@field ErrorBorderBrush FSlateBrush
---@field bShowHintIcon boolean
---@field HintIcon FSlateBrush
---@field HintIconPadding FMargin
---@field bApplyFocusedStyleInReadOnlyMode boolean
local UModioCommonMultiLineEditableTextBoxStyle = {}



---@class UModioCommonNotificationController : UModioCommonActivatableWidget
---@field MaxNotificationsOnScreen int32
---@field ErrorNotificationClass TSubclassOf<UUserWidget>
---@field SuccessNotificationClass TSubclassOf<UUserWidget>
---@field NotificationList UPanelWidget
local UModioCommonNotificationController = {}

---@param Notification UWidget
function UModioCommonNotificationController:OnNotificationExpired(Notification) end


---@class UModioCommonNotificationWidget : UModioCommonNotificationWidgetBase
---@field ModioStyle TSubclassOf<UModioCommonNotificationWidgetStyle>
---@field BackgroundBorder UModioCommonBorder
---@field StatusBackgroundBorder UModioCommonBorder
---@field StatusIndicatorImage UModioCommonImage
---@field NotificationTitleTextBlock UModioCommonRichTextBlock
---@field NotificationMessageTextBlock UModioCommonRichTextBlock
---@field StartTime FDateTime
---@field bDisplayStarted boolean
local UModioCommonNotificationWidget = {}

---@param InStyle TSubclassOf<UModioCommonNotificationWidgetStyle>
function UModioCommonNotificationWidget:SetStyle(InStyle) end


---@class UModioCommonNotificationWidgetBase : UModioCommonActivatableWidget
---@field ExpireDelegate FModioCommonNotificationWidgetBaseExpireDelegate
---@field ExpiryDuration float
local UModioCommonNotificationWidgetBase = {}

---@param NotificationClass TSubclassOf<UWidget>
---@param Params FModioNotificationParams
---@param Outer UWidget
---@return UWidget
function UModioCommonNotificationWidgetBase:CreateFromParams(NotificationClass, Params, Outer) end


---@class UModioCommonNotificationWidgetStyle : UObject
---@field BackgroundBorderStyle TSubclassOf<UModioCommonBorderStyle>
---@field StatusBackgroundBorderStyle TSubclassOf<UModioCommonBorderStyle>
---@field StatusIndicatorImageStyle TSubclassOf<UModioCommonImageStyle>
---@field NotificationTitleTextStyle TSubclassOf<UModioCommonRichTextStyle>
---@field NotificationMessageTextStyle TSubclassOf<UModioCommonRichTextStyle>
local UModioCommonNotificationWidgetStyle = {}



---@class UModioCommonProfileImage : UModioCommonDynamicImage
local UModioCommonProfileImage = {}


---@class UModioCommonProgressBar : UProgressBar
---@field ModioStyle TSubclassOf<UModioCommonProgressBarStyle>
local UModioCommonProgressBar = {}

---@param InStyle TSubclassOf<UModioCommonProgressBarStyle>
function UModioCommonProgressBar:SetStyle(InStyle) end


---@class UModioCommonProgressBarStyle : UObject
---@field Style FProgressBarStyle
local UModioCommonProgressBarStyle = {}



---@class UModioCommonQuickAccessTabView : UModioCommonQuickAccessViewBase
---@field ModioStyle TSubclassOf<UModioCommonQuickAccessTabViewStyle>
---@field InternalBackgroundBorder UModioCommonBorder
---@field OverlayBackgroundBorder UModioCommonBorder
---@field ProfileImage UModioCommonProfileImage
---@field UserNameTextBlock UModioCommonTextBlock
---@field StorageSpaceTrackerUserWidget UModioCommonStorageSpaceTrackerUserWidget
---@field ModOperationTrackerUserWidget UModioCommonModOperationTrackerUserWidget
---@field MainGameMenuButton UModioCommonButtonBase
---@field AuthButton UModioCommonButtonBase
---@field MyCollectionButton UModioCommonButtonBase
local UModioCommonQuickAccessTabView = {}

---@param InStyle TSubclassOf<UModioCommonQuickAccessTabViewStyle>
function UModioCommonQuickAccessTabView:SetStyle(InStyle) end
function UModioCommonQuickAccessTabView:HandleOnMainGameMenuButtonClicked() end
function UModioCommonQuickAccessTabView:HandleOnCollectionButtonClicked() end
function UModioCommonQuickAccessTabView:HandleOnCloseButtonClicked() end
function UModioCommonQuickAccessTabView:HandleOnAuthButtonClicked() end


---@class UModioCommonQuickAccessTabViewStyle : UObject
---@field InternalBackgroundBorderStyle TSubclassOf<UModioCommonBorderStyle>
---@field OverlayBackgroundBorderStyle TSubclassOf<UModioCommonBorderStyle>
---@field ProfileImageStyle TSubclassOf<UModioCommonDynamicImageStyle>
---@field UserNameTextStyle TSubclassOf<UModioCommonTextStyle>
---@field StorageSpaceTrackerStyle TSubclassOf<UModioCommonStorageSpaceTrackerUserWidgetStyle>
---@field ModOperationTrackerStyle TSubclassOf<UModioCommonModOperationTrackerUserWidgetStyle>
---@field MainGameMenuButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field AuthButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field MyCollectionButtonStyle TSubclassOf<UModioCommonButtonStyle>
local UModioCommonQuickAccessTabViewStyle = {}



---@class UModioCommonQuickAccessViewBase : UModioCommonActivatableWidget
local UModioCommonQuickAccessViewBase = {}

---@return boolean
function UModioCommonQuickAccessViewBase:IsUserAuthenticated() end


---@class UModioCommonReportEmailView : UModioCommonReportEmailViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field ValidationTextBlock UModioCommonTextBlock
---@field EmailTextBox UModioCommonEditableTextBox
---@field BackButton UModioCommonButtonBase
---@field SubmitButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
local UModioCommonReportEmailView = {}

---@param EVisbility ESlateVisibility
function UModioCommonReportEmailView:SetValidationTextVisibility(EVisbility) end
---@param InText FText
function UModioCommonReportEmailView:OnEditableTextBoxTextChanged(InText) end


---@class UModioCommonReportEmailViewBase : UModioCommonActivatableWidget
---@field OnBackClicked FModioCommonReportEmailViewBaseOnBackClicked
---@field OnCancelClicked FModioCommonReportEmailViewBaseOnCancelClicked
---@field OnSubmitClicked FModioCommonReportEmailViewBaseOnSubmitClicked
local UModioCommonReportEmailViewBase = {}

---@param EmailAddress FString
function UModioCommonReportEmailViewBase:OnModioCommonReportEmailViewSubmitClicked__DelegateSignature(EmailAddress) end
function UModioCommonReportEmailViewBase:OnModioCommonReportEmailViewCancelClicked__DelegateSignature() end
function UModioCommonReportEmailViewBase:OnModioCommonReportEmailViewBackClicked__DelegateSignature() end
---@param Email FString
---@return boolean
function UModioCommonReportEmailViewBase:IsEmailValid(Email) end


---@class UModioCommonReportMessageView : UModioCommonReportMessageViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field CharactersTextBlock UModioCommonTextBlock
---@field ValidationTextBlock UModioCommonTextBlock
---@field ErrorMessageTextBlock UModioCommonTextBlock
---@field MessageTextBox UModioCommonMultiLineEditableTextBox
---@field BackButton UModioCommonButtonBase
---@field SubmitButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
local UModioCommonReportMessageView = {}

---@param Text FText
function UModioCommonReportMessageView:OnMultiLineTextBoxTextChanged(Text) end


---@class UModioCommonReportMessageViewBase : UModioCommonActivatableWidget
---@field OnBackClicked FModioCommonReportMessageViewBaseOnBackClicked
---@field OnCancelClicked FModioCommonReportMessageViewBaseOnCancelClicked
---@field OnSubmitClicked FModioCommonReportMessageViewBaseOnSubmitClicked
local UModioCommonReportMessageViewBase = {}



---@class UModioCommonReportReasonView : UModioCommonReportReasonViewBase
---@field ReportCheckBoxStyle TSubclassOf<UModioCommonCheckBoxStyle>
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field DMCACheckBox UModioCommonCheckBox
---@field NotWorkingCheckBox UModioCommonCheckBox
---@field RudeContentCheckBox UModioCommonCheckBox
---@field IllegalContentCheckBox UModioCommonCheckBox
---@field StolenContentCheckBox UModioCommonCheckBox
---@field FalseInformationCheckBox UModioCommonCheckBox
---@field OtherCheckBox UModioCommonCheckBox
---@field ProceedButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
local UModioCommonReportReasonView = {}



---@class UModioCommonReportReasonViewBase : UModioCommonActivatableWidget
---@field OnProceedClicked FModioCommonReportReasonViewBaseOnProceedClicked
---@field OnCancelClicked FModioCommonReportReasonViewBaseOnCancelClicked
local UModioCommonReportReasonViewBase = {}



---@class UModioCommonReportSummaryView : UModioCommonReportSummaryViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field DescriptionTextBlock UModioCommonTextBlock
---@field ReasonLabelTextBlock UModioCommonTextBlock
---@field ReasonContentTextBlock UModioCommonTextBlock
---@field EmailLabelTextBlock UModioCommonTextBlock
---@field EmailContentTextBlock UModioCommonTextBlock
---@field DetailsLabelTextBlock UModioCommonTextBlock
---@field DetailsContentTextBlock UModioCommonMultiLineEditableTextBox
---@field BackButton UModioCommonButtonBase
---@field SubmitButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
local UModioCommonReportSummaryView = {}



---@class UModioCommonReportSummaryViewBase : UModioCommonActivatableWidget
---@field OnBackClicked FModioCommonReportSummaryViewBaseOnBackClicked
---@field OnCancelClicked FModioCommonReportSummaryViewBaseOnCancelClicked
---@field OnSubmitClicked FModioCommonReportSummaryViewBaseOnSubmitClicked
local UModioCommonReportSummaryViewBase = {}

---@param ReportParams FModioReportParams
function UModioCommonReportSummaryViewBase:SetReportParams(ReportParams) end
function UModioCommonReportSummaryViewBase:OnModioCommonReportSummaryViewSubmitClicked__DelegateSignature() end
function UModioCommonReportSummaryViewBase:OnModioCommonReportSummaryViewCancelClicked__DelegateSignature() end
function UModioCommonReportSummaryViewBase:OnModioCommonReportSummaryViewBackClicked__DelegateSignature() end


---@class UModioCommonReportView : UModioCommonReportViewBase
---@field ReportSwitcher UModioCommonWidgetSwitcher
---@field ReportReasonViewClass TSubclassOf<UModioCommonReportReasonViewBase>
---@field ReportEmailViewClass TSubclassOf<UModioCommonReportEmailViewBase>
---@field ReportMessageViewClass TSubclassOf<UModioCommonReportMessageViewBase>
---@field ReportSummaryViewClass TSubclassOf<UModioCommonReportSummaryViewBase>
---@field ReportParams FModioReportParams
---@field ReportReasonView UModioCommonReportReasonViewBase
---@field ReportEmailView UModioCommonReportEmailViewBase
---@field ReportMessageView UModioCommonReportMessageViewBase
---@field ReportSummaryView UModioCommonReportSummaryViewBase
local UModioCommonReportView = {}

function UModioCommonReportView:OnReportSummaryViewSubmitClicked() end
function UModioCommonReportView:OnReportSummaryViewCancelClicked() end
function UModioCommonReportView:OnReportSummaryViewBackClicked() end
---@param Type EModioReportType
function UModioCommonReportView:OnReportReasonViewProceedClicked(Type) end
function UModioCommonReportView:OnReportReasonViewCancelClicked() end
---@param message FString
function UModioCommonReportView:OnReportMessageViewSubmitClicked(message) end
function UModioCommonReportView:OnReportMessageViewCancelClicked() end
function UModioCommonReportView:OnReportMessageViewBackClicked() end
---@param Email FString
function UModioCommonReportView:OnReportEmailViewSubmitClicked(Email) end
function UModioCommonReportView:OnReportEmailViewCancelClicked() end
function UModioCommonReportView:OnReportEmailViewBackClicked() end
---@param ErrorCode FModioErrorCode
function UModioCommonReportView:HandleReportSubmit(ErrorCode) end


---@class UModioCommonReportViewBase : UModioCommonActivatableWidget
local UModioCommonReportViewBase = {}


---@class UModioCommonRichTextBlock : UCommonRichTextBlock
---@field ModioStyle TSubclassOf<UModioCommonRichTextStyle>
local UModioCommonRichTextBlock = {}

---@param InStyle TSubclassOf<UModioCommonRichTextStyle>
function UModioCommonRichTextBlock:SetStyle(InStyle) end


---@class UModioCommonRichTextStyle : UCommonTextStyle
---@field ImageBrush FSlateBrush
---@field TextImageOrder EModioCommonRichTextStyleTextImageOrder
---@field ImagePadding FMargin
---@field TextPadding FMargin
---@field ImageSize FSlateChildSize
---@field TextSize FSlateChildSize
---@field ImageHorizontalAlignment EHorizontalAlignment
---@field ImageVerticalAlignment EVerticalAlignment
---@field TextHorizontalAlignment EHorizontalAlignment
---@field TextVerticalAlignment EVerticalAlignment
local UModioCommonRichTextStyle = {}



---@class UModioCommonScrollBar : UScrollBar
---@field ModioStyle TSubclassOf<UModioCommonScrollBarStyle>
local UModioCommonScrollBar = {}

---@param InStyle TSubclassOf<UModioCommonScrollBarStyle>
function UModioCommonScrollBar:SetStyle(InStyle) end


---@class UModioCommonScrollBarStyle : UObject
---@field Style FScrollBarStyle
---@field bAlwaysShowScrollbar boolean
---@field bAlwaysShowScrollbarTrack boolean
---@field Orientation EOrientation
---@field Thickness FVector2D
---@field Padding FMargin
local UModioCommonScrollBarStyle = {}



---@class UModioCommonScrollBox : UScrollBox
---@field ModioStyle TSubclassOf<UModioCommonScrollBoxStyle>
---@field UserDefinedNavigation UWidgetNavigation
local UModioCommonScrollBox = {}

---@param PendingScrollOffset int32
function UModioCommonScrollBox:UpdateNavigationData(PendingScrollOffset) end
---@param InStyle TSubclassOf<UModioCommonScrollBoxStyle>
function UModioCommonScrollBox:SetStyle(InStyle) end
---@param CurrentOffset float
function UModioCommonScrollBox:OnUserScrolledHandle(CurrentOffset) end
---@param InNavigation EUINavigation
---@return UWidget
function UModioCommonScrollBox:HandleCustomBoundaryNavigation(InNavigation) end


---@class UModioCommonScrollBoxStyle : UObject
---@field Style FScrollBoxStyle
---@field ScrollBarStyle TSubclassOf<UModioCommonScrollBarStyle>
---@field ScrollBarVisibility ESlateVisibility
---@field ConsumeMouseWheel EConsumeMouseWheel
---@field AllowOverscroll boolean
---@field BackPadScrolling boolean
---@field FrontPadScrolling boolean
---@field bAnimateWheelScrolling boolean
---@field NavigationDestination EDescendantScrollDestination
---@field NavigationScrollPadding float
---@field ScrollWhenFocusChanges EScrollWhenFocusChanges
---@field bAllowRightClickDragScrolling boolean
---@field WheelScrollMultiplier float
---@field bScrollByNavigationInput boolean
---@field NavigationScrollOffsetStep int32
---@field NavigationScrollOffsetSpeed float
local UModioCommonScrollBoxStyle = {}



---@class UModioCommonSearchResultsView : UModioCommonModListBase
---@field ModioStyle TSubclassOf<UModioCommonSearchResultsViewStyle>
---@field FilteredModListView UModioCommonFilteredModListView
---@field KeywordsLabelTextBlock UModioCommonTextBlock
---@field KeywordsDetailsTextBlock UModioCommonTextBlock
---@field CategoriesLabelTextBlock UModioCommonTextBlock
---@field CategoriesList UModioCommonModTagList
---@field EditSearchButton UModioCommonButtonBase
---@field FilterCounterTextBlock UModioCommonTextBlock
---@field AppliedFilterParams FModioModCategoryParams
---@field bWasEverPopulated boolean
local UModioCommonSearchResultsView = {}

function UModioCommonSearchResultsView:ShowSearchView() end
---@param InStyle TSubclassOf<UModioCommonSearchResultsViewStyle>
function UModioCommonSearchResultsView:SetStyle(InStyle) end


---@class UModioCommonSearchResultsViewStyle : UObject
---@field FilteredModListViewStyle TSubclassOf<UModioCommonFilteredModListViewStyle>
---@field KeywordsLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field KeywordsDetailsTextStyle TSubclassOf<UModioCommonTextStyle>
---@field CategoriesLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field EditSearchButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field FilterCounterTextStyle TSubclassOf<UModioCommonTextStyle>
local UModioCommonSearchResultsViewStyle = {}



---@class UModioCommonSearchTabView : UModioCommonSearchViewBase
---@field ModioStyle TSubclassOf<UModioCommonSearchTabViewStyle>
---@field InternalBackgroundBorder UModioCommonBorder
---@field OverlayBackgroundBorder UModioCommonBorder
---@field SearchTabTitleTextBlock UModioCommonTextBlock
---@field FilteringView UModioCommonFilteringView
---@field SearchTextBox UModioCommonEditableTextBox
---@field CloseButton UModioCommonButtonBase
---@field SearchButton UModioCommonButtonBase
---@field ResetButton UModioCommonButtonBase
local UModioCommonSearchTabView = {}

function UModioCommonSearchTabView:ShowSearchResults() end
---@param InStyle TSubclassOf<UModioCommonSearchTabViewStyle>
function UModioCommonSearchTabView:SetStyle(InStyle) end
function UModioCommonSearchTabView:Reset() end
---@param Text FText
---@param CommitMethod ETextCommit::Type
function UModioCommonSearchTabView:OnSearchTextCommitted(Text, CommitMethod) end
---@return FModioModCategoryParams
function UModioCommonSearchTabView:GetFilterParamsWrapper() end
---@return FModioFilterParams
function UModioCommonSearchTabView:GetFilterParams() end


---@class UModioCommonSearchTabViewStyle : UObject
---@field InternalBackgroundBorderStyle TSubclassOf<UModioCommonBorderStyle>
---@field OverlayBackgroundBorderStyle TSubclassOf<UModioCommonBorderStyle>
---@field SearchTabTitleTextStyle TSubclassOf<UModioCommonTextStyle>
---@field SearchTextBoxStyle TSubclassOf<UModioCommonEditableTextBoxStyle>
---@field CloseButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field ResetButtonStyle TSubclassOf<UModioCommonButtonStyle>
---@field SearchButtonStyle TSubclassOf<UModioCommonButtonStyle>
local UModioCommonSearchTabViewStyle = {}



---@class UModioCommonSearchViewBase : UModioCommonActivatableWidget
local UModioCommonSearchViewBase = {}


---@class UModioCommonStorageSpaceTrackerUserWidget : UModioCommonActivatableWidget
---@field ModioStyle TSubclassOf<UModioCommonStorageSpaceTrackerUserWidgetStyle>
---@field Tracker UModioCommonStorageSpaceTrackerWidget
---@field IconImage UModioCommonImage
---@field UsedSpaceLabelTextBlock UModioCommonTextBlock
---@field UsedSpaceTextBlock UModioCommonTextBlock
---@field FreeSpaceLabelTextBlock UModioCommonTextBlock
---@field FreeSpaceTextBlock UModioCommonTextBlock
---@field TotalSpaceLabelTextBlock UModioCommonTextBlock
---@field TotalSpaceTextBlock UModioCommonTextBlock
---@field StorageSpaceProgressBar UModioCommonProgressBar
---@field MinDecimals int32
---@field MaxDecimals int32
local UModioCommonStorageSpaceTrackerUserWidget = {}

---@param InStyle TSubclassOf<UModioCommonStorageSpaceTrackerUserWidgetStyle>
function UModioCommonStorageSpaceTrackerUserWidget:SetStyle(InStyle) end
---@param UsedSpace FModioUnsigned64
---@param FreeSpace FModioUnsigned64
---@param TotalSpace FModioUnsigned64
function UModioCommonStorageSpaceTrackerUserWidget:OnStorageSpaceTrackerUpdated(UsedSpace, FreeSpace, TotalSpace) end


---@class UModioCommonStorageSpaceTrackerUserWidgetStyle : UObject
---@field IconImageStyle TSubclassOf<UModioCommonImageStyle>
---@field UsedSpaceLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field UsedSpaceTextStyle TSubclassOf<UModioCommonTextStyle>
---@field FreeSpaceLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field FreeSpaceTextStyle TSubclassOf<UModioCommonTextStyle>
---@field TotalSpaceLabelTextStyle TSubclassOf<UModioCommonTextStyle>
---@field TotalSpaceTextStyle TSubclassOf<UModioCommonTextStyle>
---@field StorageSpaceProgressBarStyle TSubclassOf<UModioCommonProgressBarStyle>
local UModioCommonStorageSpaceTrackerUserWidgetStyle = {}



---@class UModioCommonStorageSpaceTrackerWidget : UTickableModioCommonWidget
---@field OnStorageSpaceTrackerUpdated FModioCommonStorageSpaceTrackerWidgetOnStorageSpaceTrackerUpdated
local UModioCommonStorageSpaceTrackerWidget = {}



---@class UModioCommonTabButtonBase : UModioCommonButtonBase
local UModioCommonTabButtonBase = {}


---@class UModioCommonTabButtonStyle : UModioCommonButtonStyle
local UModioCommonTabButtonStyle = {}


---@class UModioCommonTabListWidgetBase : UCommonTabListWidgetBase
---@field OnTabButtonClicked FModioCommonTabListWidgetBaseOnTabButtonClicked
---@field PreviousTabAction UCommonActionWidget
---@field NextTabAction UCommonActionWidget
local UModioCommonTabListWidgetBase = {}

---@param InPreviousTabInputActionData FDataTableRowHandle
function UModioCommonTabListWidgetBase:SetPreviousTabInputActionData(InPreviousTabInputActionData) end
---@param InNextTabInputActionData FDataTableRowHandle
function UModioCommonTabListWidgetBase:SetNextTabInputActionData(InNextTabInputActionData) end
---@param TabNameID FName
---@param bSuppressClickFeedback boolean
---@param bSuppressOnTabSelectedIfAlreadySelected boolean
---@return boolean
function UModioCommonTabListWidgetBase:SelectTabByIDExtended(TabNameID, bSuppressClickFeedback, bSuppressOnTabSelectedIfAlreadySelected) end
function UModioCommonTabListWidgetBase:RemoveAllDynamicTabs() end
---@param TabDescriptor FModioCommonTabDescriptor
---@return boolean
function UModioCommonTabListWidgetBase:RegisterDynamicTab(TabDescriptor) end
---@param TabNameID FName
function UModioCommonTabListWidgetBase:OnTabSelectedInternal(TabNameID) end
---@param TabButton UCommonButtonBase
function UModioCommonTabListWidgetBase:OnTabButtonClicked__DelegateSignature(TabButton) end
function UModioCommonTabListWidgetBase:HandleNavigateToPreviousTab() end
function UModioCommonTabListWidgetBase:HandleNavigateToNextTab() end


---@class UModioCommonTermsOfUseView : UModioCommonTermsOfUseViewBase
---@field TitleTextBlock UModioCommonTextBlock
---@field ContentTextBlock UModioCommonTextBlock
---@field TermsButton UModioCommonButtonBase
---@field PrivacyButton UModioCommonButtonBase
---@field CancelButton UModioCommonButtonBase
---@field SubmitButton UModioCommonButtonBase
local UModioCommonTermsOfUseView = {}



---@class UModioCommonTermsOfUseViewBase : UModioCommonActivatableWidget
---@field OnSubmitClicked FModioCommonTermsOfUseViewBaseOnSubmitClicked
---@field OnCancelClicked FModioCommonTermsOfUseViewBaseOnCancelClicked
---@field OnLinkClicked FModioCommonTermsOfUseViewBaseOnLinkClicked
---@field Terms FModioTerms
local UModioCommonTermsOfUseViewBase = {}



---@class UModioCommonTextBlock : UCommonTextBlock
local UModioCommonTextBlock = {}


---@class UModioCommonTextStyle : UCommonTextStyle
local UModioCommonTextStyle = {}


---@class UModioCommonTileView : UCommonTileView
---@field ModioStyle TSubclassOf<UModioCommonListViewStyle>
local UModioCommonTileView = {}

---@param InStyle TSubclassOf<UModioCommonListViewStyle>
function UModioCommonTileView:SetStyle(InStyle) end


---@class UModioCommonUIAsyncLoader : UModioUIAsyncLoader
local UModioCommonUIAsyncLoader = {}


---@class UModioCommonUISettings : UDeveloperSettings
---@field bEnableCollectionModDisableUI boolean
---@field AuthParams FModioCommonAuthParamsSettings
---@field EmailAuthCodeParams FModioCommonEmailAuthCodeParamsSettings
---@field EmailAuthLoadingParams FModioCommonEmailAuthLoadingParamsSettings
---@field EmailAuthParams FModioCommonEmailAuthParamsSettings
---@field TermsOfUseParams FModioCommonTermsOfUseParamsSettings
---@field FilteredModListParams FModioCommonFilteredModListParams
---@field CollectionParams FModioCommonCollectionParamsSettings
---@field FeaturedParams FModioCommonFeaturedParamsSettings
---@field ModBrowserParams FModioCommonModBrowserParamsSettings
---@field ModDetailsParams FModioCommonModDetailsParamsSettings
---@field ModEntryParams FModioCommonModEntryParamsSettings
---@field ModGalleryParams FModioCommonModGalleryParamsSettings
---@field ModOperationTrackerParams FModioCommonModOperationTrackerParamsSettings
---@field QuickAccessParams FModioCommonQuickAccessParamsSettings
---@field ReportParams FModioCommonReportParamsSettings
---@field ReportReasonParams FModioCommonReportReasonParamsSettings
---@field ReportEmailParams FModioCommonReportEmailParamsSettings
---@field ReportMessageParams FModioCommonReportMessageParamsSettings
---@field ReportSummaryParams FModioCommonReportSummaryParamsSettings
---@field SearchParams FModioCommonSearchParamsSettings
---@field StorageSpaceTrackerParams FModioCommonStorageSpaceTrackerParamsSettings
---@field UserProfileParams FModioCommonUserProfileWidgetParamsSettings
---@field ErrorWithRetryParams FModioCommonErrorWithRetryParamsSettings
local UModioCommonUISettings = {}



---@class UModioCommonUserProfileBase : UModioCommonActivatableWidget
local UModioCommonUserProfileBase = {}


---@class UModioCommonUserProfileWidget : UModioCommonUserProfileBase
---@field ProfileButton UModioCommonButtonBase
local UModioCommonUserProfileWidget = {}



---@class UModioCommonWidgetSwitcher : UCommonActivatableWidgetSwitcher
---@field OnActiveWidgetIndexChanged_BP FModioCommonWidgetSwitcherOnActiveWidgetIndexChanged_BP
local UModioCommonWidgetSwitcher = {}



---@class UModioCommonWrapBox : UWrapBox
local UModioCommonWrapBox = {}


---@class UModioSearchResultsParamsUI : UObject
---@field FilterParams FModioModCategoryParams
---@field SearchType EModioCommonSearchViewType
local UModioSearchResultsParamsUI = {}



---@class UTickableModioCommonWidget : UWidget
local UTickableModioCommonWidget = {}


