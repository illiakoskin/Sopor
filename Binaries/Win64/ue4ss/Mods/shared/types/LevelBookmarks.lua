---@meta

---@class AJiraBookmarksFlag : AActor
---@field WidgetComponent UWidgetComponent
---@field SceneComponent USceneComponent
local AJiraBookmarksFlag = {}



---@class FIssueStatuses
---@field ToDo int32
---@field Reopened int32
---@field Backlog int32
local FIssueStatuses = {}



---@class FJiraProject
---@field ID FName
---@field DisplayName FString
local FJiraProject = {}



---@class FLevelBookmarkCreationResult
---@field Storage ELevelBookmarksStorage
---@field BookmarkName FString
---@field BookmarkCategory FString
---@field BookmarkHash FString
---@field ScreenshotFileFullPath FString
local FLevelBookmarkCreationResult = {}



---@class UJiraBookmarksFlagWidget : UUserWidget
---@field IssueID FText
---@field IssuePriority FText
---@field IssueVersion FText
---@field IssueDescription FText
---@field IssueSummary FText
---@field IssueColor FColor
local UJiraBookmarksFlagWidget = {}



---@class UJiraBookmarksSettings : UDeveloperSettings
---@field LevelDesignIssueComponent int32
---@field BugIssueType int32
---@field LocationCustomField int32
---@field TeamCustomFieldID int32
---@field JiraBookmarksDefaultTeam FName
---@field IssueStatuses FIssueStatuses
---@field ReopenTransitionID uint32
---@field CloseTransitionID uint32
---@field InvestigationNeededCustomField uint32
---@field InvestigationNeededDefaultValue FString
---@field ExpectedResultCustomField uint32
---@field JiraProjectIDs TArray<FJiraProject>
---@field ExpectedResultDefaultValue FString
local UJiraBookmarksSettings = {}



---@class UJiraBookmarksSubsystem : UWorldSubsystem
---@field CurrentUserID FName
---@field UserMail FString
---@field FlagClass UClass
local UJiraBookmarksSubsystem = {}



---@class ULevelBookmarkBlueprintLibrary : UBlueprintFunctionLibrary
local ULevelBookmarkBlueprintLibrary = {}

---@param BookmarkHash FString
function ULevelBookmarkBlueprintLibrary:GoToLevelBookmark(BookmarkHash) end
---@param Storage ELevelBookmarksStorage
---@param BookmarkName FString
---@param BookmarkCategory FString
---@param bTakeScreenshot boolean
---@param bScreenshotWithUI boolean
---@return FLevelBookmarkCreationResult
function ULevelBookmarkBlueprintLibrary:CreateLevelBookmark(Storage, BookmarkName, BookmarkCategory, bTakeScreenshot, bScreenshotWithUI) end


---@class ULevelBookmarksSettings : UObject
---@field PathToRepository FDirectoryPath
---@field SuperUserNames TArray<FString>
---@field JiraBookmarkFlagActor FSoftClassPath
local ULevelBookmarksSettings = {}



