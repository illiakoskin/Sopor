---@meta

---@class FCinematicSubtitleData
---@field PhraseSID FString
---@field SpeakerSID FString
local FCinematicSubtitleData = {}



---@class FMovieSceneSubtitleEventTemplate : FMovieSceneEvalTemplate
---@field Data FCinematicSubtitleData
local FMovieSceneSubtitleEventTemplate = {}



---@class UMovieSceneSubtitleEventSection : UMovieSceneSection
---@field Data FCinematicSubtitleData
local UMovieSceneSubtitleEventSection = {}



---@class UMovieSceneSubtitleEventTrack : UMovieSceneKeyFrameEventTrack
local UMovieSceneSubtitleEventTrack = {}


