---@meta

---@class FCinematicKeyFrameData
---@field KeyFrameName FName
---@field bSkippable boolean
---@field FadeTime float
---@field SkipTimeMultiplier float
---@field FadeTargetColor FLinearColor
local FCinematicKeyFrameData = {}



---@class FCinematicSectionParams
---@field SequencerPlayer TWeakObjectPtr<UMovieSceneSequencePlayer>
local FCinematicSectionParams = {}



---@class FMovieSceneKeyFrameEventTemplate : FMovieSceneEvalTemplate
---@field Data FCinematicKeyFrameData
local FMovieSceneKeyFrameEventTemplate = {}



---@class UMovieSceneKeyFrameEventSection : UMovieSceneSection
---@field Data FCinematicKeyFrameData
local UMovieSceneKeyFrameEventSection = {}



---@class UMovieSceneKeyFrameEventTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
local UMovieSceneKeyFrameEventTrack = {}



