---@class UnityEngine.Windows.Speech.PhraseRecognitionSystem : System.Object
---@field public isSupported System.Boolean @static  getter
---@field public Status UnityEngine.Windows.Speech.SpeechSystemStatus @static  getter
UnityEngine.Windows.Speech.PhraseRecognitionSystem = {}
---@type UnityEngine.Windows.Speech.PhraseRecognitionSystem
CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem = UnityEngine.Windows.Speech.PhraseRecognitionSystem

---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.Restart()end
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.Shutdown()end
---@param value UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.add_OnError(value)end
---@param value UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.remove_OnError(value)end
---@param value UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.add_OnStatusChanged(value)end
---@param value UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.remove_OnStatusChanged(value)end
---@class UnityEngine.Windows.Speech.PhraseRecognizer : System.Object
---@field public IsRunning System.Boolean @  getter
UnityEngine.Windows.Speech.PhraseRecognizer = {}
---@type UnityEngine.Windows.Speech.PhraseRecognizer
CS.UnityEngine.Windows.Speech.PhraseRecognizer = UnityEngine.Windows.Speech.PhraseRecognizer

---@param value UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognizer:add_OnPhraseRecognized(value)end
---@param value UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognizer:remove_OnPhraseRecognized(value)end
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognizer:Start()end
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognizer:Stop()end
---@return System.Void
function UnityEngine.Windows.Speech.PhraseRecognizer:Dispose()end
---@class UnityEngine.Windows.Speech.DictationRecognizer : System.Object
---@field public Status UnityEngine.Windows.Speech.SpeechSystemStatus @  getter
---@field public AutoSilenceTimeoutSeconds System.Single @ setter getter
---@field public InitialSilenceTimeoutSeconds System.Single @ setter getter
UnityEngine.Windows.Speech.DictationRecognizer = {}
---@type UnityEngine.Windows.Speech.DictationRecognizer
CS.UnityEngine.Windows.Speech.DictationRecognizer = UnityEngine.Windows.Speech.DictationRecognizer

---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:add_DictationHypothesis(value)end
---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationHypothesis(value)end
---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:add_DictationResult(value)end
---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationResult(value)end
---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:add_DictationComplete(value)end
---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationComplete(value)end
---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:add_DictationError(value)end
---@param value UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:remove_DictationError(value)end
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:Start()end
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:Stop()end
---@return System.Void
function UnityEngine.Windows.Speech.DictationRecognizer:Dispose()end
---@class UnityEngine.Windows.Speech.ConfidenceLevel : System.Enum
UnityEngine.Windows.Speech.ConfidenceLevel = {}
---@type UnityEngine.Windows.Speech.ConfidenceLevel
CS.UnityEngine.Windows.Speech.ConfidenceLevel = UnityEngine.Windows.Speech.ConfidenceLevel

---@return System.Int32 value:0
UnityEngine.Windows.Speech.ConfidenceLevel.High = 0
---@return System.Int32 value:1
UnityEngine.Windows.Speech.ConfidenceLevel.Medium = 1
---@return System.Int32 value:2
UnityEngine.Windows.Speech.ConfidenceLevel.Low = 2
---@return System.Int32 value:3
UnityEngine.Windows.Speech.ConfidenceLevel.Rejected = 3

---@class UnityEngine.Windows.Speech.SpeechSystemStatus : System.Enum
UnityEngine.Windows.Speech.SpeechSystemStatus = {}
---@type UnityEngine.Windows.Speech.SpeechSystemStatus
CS.UnityEngine.Windows.Speech.SpeechSystemStatus = UnityEngine.Windows.Speech.SpeechSystemStatus

---@return System.Int32 value:0
UnityEngine.Windows.Speech.SpeechSystemStatus.Stopped = 0
---@return System.Int32 value:1
UnityEngine.Windows.Speech.SpeechSystemStatus.Running = 1
---@return System.Int32 value:2
UnityEngine.Windows.Speech.SpeechSystemStatus.Failed = 2

---@class UnityEngine.Windows.Speech.SpeechError : System.Enum
UnityEngine.Windows.Speech.SpeechError = {}
---@type UnityEngine.Windows.Speech.SpeechError
CS.UnityEngine.Windows.Speech.SpeechError = UnityEngine.Windows.Speech.SpeechError

---@return System.Int32 value:0
UnityEngine.Windows.Speech.SpeechError.NoError = 0
---@return System.Int32 value:1
UnityEngine.Windows.Speech.SpeechError.TopicLanguageNotSupported = 1
---@return System.Int32 value:2
UnityEngine.Windows.Speech.SpeechError.GrammarLanguageMismatch = 2
---@return System.Int32 value:3
UnityEngine.Windows.Speech.SpeechError.GrammarCompilationFailure = 3
---@return System.Int32 value:4
UnityEngine.Windows.Speech.SpeechError.AudioQualityFailure = 4
---@return System.Int32 value:5
UnityEngine.Windows.Speech.SpeechError.PauseLimitExceeded = 5
---@return System.Int32 value:6
UnityEngine.Windows.Speech.SpeechError.TimeoutExceeded = 6
---@return System.Int32 value:7
UnityEngine.Windows.Speech.SpeechError.NetworkFailure = 7
---@return System.Int32 value:8
UnityEngine.Windows.Speech.SpeechError.MicrophoneUnavailable = 8
---@return System.Int32 value:9
UnityEngine.Windows.Speech.SpeechError.UnknownError = 9

---@class UnityEngine.Windows.Speech.DictationTopicConstraint : System.Enum
UnityEngine.Windows.Speech.DictationTopicConstraint = {}
---@type UnityEngine.Windows.Speech.DictationTopicConstraint
CS.UnityEngine.Windows.Speech.DictationTopicConstraint = UnityEngine.Windows.Speech.DictationTopicConstraint

---@return System.Int32 value:0
UnityEngine.Windows.Speech.DictationTopicConstraint.WebSearch = 0
---@return System.Int32 value:1
UnityEngine.Windows.Speech.DictationTopicConstraint.Form = 1
---@return System.Int32 value:2
UnityEngine.Windows.Speech.DictationTopicConstraint.Dictation = 2

---@class UnityEngine.Windows.Speech.DictationCompletionCause : System.Enum
UnityEngine.Windows.Speech.DictationCompletionCause = {}
---@type UnityEngine.Windows.Speech.DictationCompletionCause
CS.UnityEngine.Windows.Speech.DictationCompletionCause = UnityEngine.Windows.Speech.DictationCompletionCause

---@return System.Int32 value:0
UnityEngine.Windows.Speech.DictationCompletionCause.Complete = 0
---@return System.Int32 value:1
UnityEngine.Windows.Speech.DictationCompletionCause.AudioQualityFailure = 1
---@return System.Int32 value:2
UnityEngine.Windows.Speech.DictationCompletionCause.Canceled = 2
---@return System.Int32 value:3
UnityEngine.Windows.Speech.DictationCompletionCause.TimeoutExceeded = 3
---@return System.Int32 value:4
UnityEngine.Windows.Speech.DictationCompletionCause.PauseLimitExceeded = 4
---@return System.Int32 value:5
UnityEngine.Windows.Speech.DictationCompletionCause.NetworkFailure = 5
---@return System.Int32 value:6
UnityEngine.Windows.Speech.DictationCompletionCause.MicrophoneUnavailable = 6
---@return System.Int32 value:7
UnityEngine.Windows.Speech.DictationCompletionCause.UnknownError = 7

---@class UnityEngine.Windows.Speech.SemanticMeaning : System.ValueType
---@field public key System.String
---@field public values System.String[]
UnityEngine.Windows.Speech.SemanticMeaning = {}
---@type UnityEngine.Windows.Speech.SemanticMeaning
CS.UnityEngine.Windows.Speech.SemanticMeaning = UnityEngine.Windows.Speech.SemanticMeaning

---@class UnityEngine.Windows.Speech.PhraseRecognizedEventArgs : System.ValueType
---@field public confidence UnityEngine.Windows.Speech.ConfidenceLevel
---@field public semanticMeanings UnityEngine.Windows.Speech.SemanticMeaning[]
---@field public text System.String
---@field public phraseStartTime System.DateTime
---@field public phraseDuration System.TimeSpan
UnityEngine.Windows.Speech.PhraseRecognizedEventArgs = {}
---@type UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
CS.UnityEngine.Windows.Speech.PhraseRecognizedEventArgs = UnityEngine.Windows.Speech.PhraseRecognizedEventArgs

---@class UnityEngine.Windows.Speech.KeywordRecognizer : UnityEngine.Windows.Speech.PhraseRecognizer
---@field public Keywords System.Collections.Generic.IEnumerable @ setter getter
UnityEngine.Windows.Speech.KeywordRecognizer = {}
---@type UnityEngine.Windows.Speech.KeywordRecognizer
CS.UnityEngine.Windows.Speech.KeywordRecognizer = UnityEngine.Windows.Speech.KeywordRecognizer

---@class UnityEngine.Windows.Speech.GrammarRecognizer : UnityEngine.Windows.Speech.PhraseRecognizer
---@field public GrammarFilePath System.String @ setter getter
UnityEngine.Windows.Speech.GrammarRecognizer = {}
---@type UnityEngine.Windows.Speech.GrammarRecognizer
CS.UnityEngine.Windows.Speech.GrammarRecognizer = UnityEngine.Windows.Speech.GrammarRecognizer

