---@meta

---@class UWBP_SpawnTools_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field B_AB UButton
---@field B_DespawnDeadAll UButton
---@field B_KillA UButton
---@field B_KillAll UButton
---@field B_KillB UButton
---@field B_KillNoTeam UButton
---@field B_QTY_Down UButton
---@field B_QTY_Up UButton
---@field B_Spawn UButton
---@field CB_AdvAIControl UCheckBox
---@field CB_EFacing UComboBoxString
---@field CB_EPlayerRel UComboBoxString
---@field CB_ERank UComboBoxString
---@field CB_ETeam UComboBoxString
---@field CB_IgnorePlayer UCheckBox
---@field CB_ShowHealth UCheckBox
---@field CB_ShowSummary UCheckBox
---@field GP_SpawnDetails UGridPanel
---@field INV UButton
---@field LV_AllItems UListView
---@field PauseAI UCheckBox
---@field SpawnQty USpinBox
---@field TB_FilterBox UEditableTextBox
---@field TXT_QTY_ALL UTextBlock
---@field TXT_QTY_None UTextBlock
---@field TXT_QTY_TeamA UTextBlock
---@field TXT_QTY_TeamB UTextBlock
---@field TXT_Selected UTextBlock
---@field UGP_AIOptions UUniformGridPanel
---@field ugp_categoryFilters UWrapBox
---@field CurrNode FText
---@field CurrRow FText
---@field CurrDTRowName FName
---@field SpawnRange double
---@field MultSpawnCnt int32
---@field ['Spawn Point'] FVector
---@field ['Player Rotation'] FRotator
---@field SpawnCommandText FString
---@field ['Hit Object Name'] FString
---@field SpawnQtyValue double
---@field SpawnMax double
---@field SpawnMin double
---@field S_CMD FString
---@field iTest int32
---@field iInnerPoint int32
---@field iInnerLevel int32
---@field fTolMin int32
---@field fTolCalc int32
---@field ['Spawn Point_calc'] FVector
---@field iAICheckboxCnt int32
---@field PreAgentList TArray<FString>
---@field PostAgentList TArray<AAgent>
---@field bProcessingSpawnRequest boolean
---@field ref_teamScoreboard UWBP_TeamScrBoard_C
---@field bShowTeamSummary boolean
---@field ref_IMC_SpawnTools UInputMappingContext
---@field CurrentOpenUIKey FKey
---@field CurrentSpawnKey FKey
---@field bListenForKey boolean
---@field LastSpawnPoint FVector
---@field aExcludedCategories TArray<FText>
---@field tTextFilter FText
---@field SpawnedAgentList TArray<FS_SpawnedAgent>
---@field CurrDTRow_ FS_SID_ASSET
local UWBP_SpawnTools_C = {}

---@param S_SID_ASSET FS_SID_ASSET
---@param bExcluded boolean
function UWBP_SpawnTools_C:IsExcludedRow(S_SID_ASSET, bExcluded) end
---@param excludedCategories TArray<FText>
---@param AnyEnabled boolean
function UWBP_SpawnTools_C:GetFilteredCategories(excludedCategories, AnyEnabled) end
---@return boolean
function UWBP_SpawnTools_C:Get_INV_bIsEnabled() end
---@param InputChord FInputChord
---@param IMC UInputMappingContext
---@param IA UInputAction
---@param InputKeySel UInputKeySelector
function UWBP_SpawnTools_C:SetMapButtonNewKey(InputChord, IMC, IA, InputKeySel) end
---@param IMC UInputMappingContext
---@param IA UInputAction
---@param InputKeySel UInputKeySelector
---@param InputChord FInputChord
---@param Key FKey
function UWBP_SpawnTools_C:SetMapButtonCurrentKey(IMC, IA, InputKeySel, InputChord, Key) end
---@return boolean
function UWBP_SpawnTools_C:Get_B_AB_bIsEnabled() end
---@param Team ETeam::Type
---@param bAll boolean
function UWBP_SpawnTools_C:DelByTeam(Team, bAll) end
---@param Team ETeam::Type
---@param bAll boolean
function UWBP_SpawnTools_C:KillByTeam(Team, bAll) end
---@return FText
function UWBP_SpawnTools_C:Get_TXT_QTY_TeamB_Text() end
---@return FText
function UWBP_SpawnTools_C:Get_TXT_QTY_TeamA_Text() end
---@return FText
function UWBP_SpawnTools_C:Get_TXT_QTY_None_Text() end
---@param fTeamA_HP double
---@param fTeamB_HP double
---@param iTeamA_Cnt int32
---@param iTeamB_Cnt int32
function UWBP_SpawnTools_C:GetTeamSummaryUpdate(fTeamA_HP, fTeamB_HP, iTeamA_Cnt, iTeamB_Cnt) end
---@param Finish boolean
function UWBP_SpawnTools_C:InitSpawnRequest(Finish) end
---@param bSlow boolean
function UWBP_SpawnTools_C:SetSlowTimeScale(bSlow) end
function UWBP_SpawnTools_C:CleanUpSpawnedAgents() end
---@return boolean
function UWBP_SpawnTools_C:Get_B_Spawn_bIsEnabled() end
---@param Steam FString
---@param ArrTeamAgents1 TArray<FS_SpawnedAgent>
function UWBP_SpawnTools_C:GetTeamAgents(Steam, ArrTeamAgents1) end
function UWBP_SpawnTools_C:EnforeTeamRelationships() end
---@param UID1 int32
---@param UID2 int32
---@param rel EPlayerRelation::Type
function UWBP_SpawnTools_C:SetRelation(UID1, UID2, rel) end
---@return ESlateVisibility
function UWBP_SpawnTools_C:Get_SB_SpawnDetails_Visibility() end
function UWBP_SpawnTools_C:fn_UpdateSpawnedAgents() end
---@return FText
function UWBP_SpawnTools_C:GetText() end
---@param OutActors TArray<FS_SpawnedAgent>
---@param OutNames TArray<FString>
function UWBP_SpawnTools_C:GetCurrentAgents(OutActors, OutNames) end
---@return ESlateVisibility
function UWBP_SpawnTools_C:Get_P_AIOptions_Visibility() end
---@param bToInv boolean
---@param SpawnUpdate boolean
function UWBP_SpawnTools_C:ExecuteSpawn(bToInv, SpawnUpdate) end
---@param inInt int32
---@param Level int32
function UWBP_SpawnTools_C:GetLevel(inInt, Level) end
---@param Origin FVector
---@param I int32
---@param Tol int32
---@param spawnPoint FVector
function UWBP_SpawnTools_C:getDistribCoord(Origin, I, Tol, spawnPoint) end
---@param SelectedIndex int32
---@param ERank ERank
function UWBP_SpawnTools_C:get_rank_value(SelectedIndex, ERank) end
---@return boolean
function UWBP_SpawnTools_C:Get_CB_ERank_bIsEnabled() end
---@param bRankApplies boolean
function UWBP_SpawnTools_C:IsRankApplicable(bRankApplies) end
---@return float
function UWBP_SpawnTools_C:Get_SpawnQty_Value() end
---@param fTol double
---@param spawnPoint FVector
---@param PlayerRotation FRotator
---@param HitObjectName FString
function UWBP_SpawnTools_C:Get_playerLookSpawnPoint(fTol, spawnPoint, PlayerRotation, HitObjectName) end
function UWBP_SpawnTools_C:Get_CurrentNodeProps() end
---@param IsDesignTime boolean
function UWBP_SpawnTools_C:PreConstruct(IsDesignTime) end
---@param InFocusEvent FFocusEvent
function UWBP_SpawnTools_C:OnFocusLost(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_SpawnTools_C:OnRemovedFromFocusPath(InFocusEvent) end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_Spawn_K2Node_ComponentBoundEvent_0_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_QTY_Up_K2Node_ComponentBoundEvent_1_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_QTY_Down_K2Node_ComponentBoundEvent_2_OnButtonReleasedEvent__DelegateSignature() end
---@param bIsChecked boolean
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_PauseAI_K2Node_ComponentBoundEvent_3_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
---@param bIsChecked boolean
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_CB_SeePlayer_K2Node_ComponentBoundEvent_4_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_KillAll_K2Node_ComponentBoundEvent_5_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_DespawnDead_K2Node_ComponentBoundEvent_6_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_AB_K2Node_ComponentBoundEvent_7_OnButtonReleasedEvent__DelegateSignature() end
---@param bIsChecked boolean
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_CB_ShowSummary_K2Node_ComponentBoundEvent_8_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
function UWBP_SpawnTools_C:SendUpdate_TeamScorecard() end
---@param bIsChecked boolean
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_CB_ShowHealth_K2Node_ComponentBoundEvent_9_OnCheckBoxComponentStateChanged__DelegateSignature(bIsChecked) end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_KillNoTeam_K2Node_ComponentBoundEvent_10_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_KillA_K2Node_ComponentBoundEvent_11_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_B_KillB_K2Node_ComponentBoundEvent_12_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_INV_K2Node_ComponentBoundEvent_14_OnButtonReleasedEvent__DelegateSignature() end
function UWBP_SpawnTools_C:UpdateFilteredCategories() end
---@param Text FText
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_TB_FilterBox_K2Node_ComponentBoundEvent_15_OnEditableTextBoxChangedEvent__DelegateSignature(Text) end
---@param Text FText
---@param CommitMethod ETextCommit::Type
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_TB_FilterBox_K2Node_ComponentBoundEvent_16_OnEditableTextBoxCommittedEvent__DelegateSignature(Text, CommitMethod) end
---@param Item UObject
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_LV_AllItems_K2Node_ComponentBoundEvent_17_SimpleListItemEventDynamic__DelegateSignature(Item) end
---@param Item UObject
function UWBP_SpawnTools_C:BndEvt__WBP_SpawnTools_LV_AllItems_K2Node_ComponentBoundEvent_18_SimpleListItemEventDynamic__DelegateSignature(Item) end
---@param EntryPoint int32
function UWBP_SpawnTools_C:ExecuteUbergraph_WBP_SpawnTools(EntryPoint) end


