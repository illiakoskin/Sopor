---@enum EModioEnabledFilterType
local EModioEnabledFilterType = {
    None = 0,
    Enabled = 1,
    Disabled = 2,
    EModioEnabledFilterType_MAX = 3,
}

---@enum EModioInstalledFilterType
local EModioInstalledFilterType = {
    None = 0,
    CurrentUser = 1,
    AnotherUser = 2,
    EModioInstalledFilterType_MAX = 3,
}

---@enum EModioManualSortType
local EModioManualSortType = {
    AToZ = 0,
    ZToA = 1,
    SizeOnDisk = 2,
    RecentlyUpdated = 3,
    EModioManualSortType_MAX = 4,
}

---@enum EModioUIAsyncOperationWidgetState
local EModioUIAsyncOperationWidgetState = {
    Success = 0,
    Error = 1,
    InProgress = 2,
    EModioUIAsyncOperationWidgetState_MAX = 3,
}

---@enum EModioUIMediaDownloadEventType
local EModioUIMediaDownloadEventType = {
    ModGalleryImages = 0,
    ModCreatorAvatarImage = 1,
    ModLogo = 2,
    EModioUIMediaDownloadEventType_MAX = 3,
}

---@enum EModioUIModInfoEventType
local EModioUIModInfoEventType = {
    ListAllMods = 0,
    GetModInfo = 1,
    EModioUIModInfoEventType_MAX = 2,
}

