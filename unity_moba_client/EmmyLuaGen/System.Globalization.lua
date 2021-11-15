---@class System.Globalization.CharUnicodeInfo : System.Object
System.Globalization.CharUnicodeInfo = {}
---@type System.Globalization.CharUnicodeInfo
CS.System.Globalization.CharUnicodeInfo = System.Globalization.CharUnicodeInfo

---@overload fun(s:System.String, index:System.Int32):System.Double
---@param ch System.Char
---@return System.Double
function System.Globalization.CharUnicodeInfo.GetNumericValue(ch)end
---@overload fun(s:System.String, index:System.Int32):System.Int32
---@param ch System.Char
---@return System.Int32
function System.Globalization.CharUnicodeInfo.GetDecimalDigitValue(ch)end
---@overload fun(s:System.String, index:System.Int32):System.Int32
---@param ch System.Char
---@return System.Int32
function System.Globalization.CharUnicodeInfo.GetDigitValue(ch)end
---@overload fun(s:System.String, index:System.Int32):System.Globalization.UnicodeCategory
---@param ch System.Char
---@return System.Globalization.UnicodeCategory
function System.Globalization.CharUnicodeInfo.GetUnicodeCategory(ch)end
---@class System.Globalization.PersianCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public PersianEra System.Int32
System.Globalization.PersianCalendar = {}
---@type System.Globalization.PersianCalendar
CS.System.Globalization.PersianCalendar = System.Globalization.PersianCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.PersianCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.PersianCalendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.PersianCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.PersianCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.PersianCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.PersianCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.PersianCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.PersianCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.PersianCalendar:GetMonth(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.PersianCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.PersianCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.PersianCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.PersianCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.PersianCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.PersianCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.PersianCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.PersianCalendar:ToFourDigitYear(year)end
---@class System.Globalization.Calendar : System.Object
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public CurrentEra System.Int32
System.Globalization.Calendar = {}
---@type System.Globalization.Calendar
CS.System.Globalization.Calendar = System.Globalization.Calendar

---@return System.Object
function System.Globalization.Calendar:Clone()end
---@param calendar System.Globalization.Calendar
---@return System.Globalization.Calendar
function System.Globalization.Calendar.ReadOnly(calendar)end
---@param time System.DateTime
---@param milliseconds System.Double
---@return System.DateTime
function System.Globalization.Calendar:AddMilliseconds(time, milliseconds)end
---@param time System.DateTime
---@param days System.Int32
---@return System.DateTime
function System.Globalization.Calendar:AddDays(time, days)end
---@param time System.DateTime
---@param hours System.Int32
---@return System.DateTime
function System.Globalization.Calendar:AddHours(time, hours)end
---@param time System.DateTime
---@param minutes System.Int32
---@return System.DateTime
function System.Globalization.Calendar:AddMinutes(time, minutes)end
---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.Calendar:AddMonths(time, months)end
---@param time System.DateTime
---@param seconds System.Int32
---@return System.DateTime
function System.Globalization.Calendar:AddSeconds(time, seconds)end
---@param time System.DateTime
---@param weeks System.Int32
---@return System.DateTime
function System.Globalization.Calendar:AddWeeks(time, weeks)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.Calendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.Calendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetDayOfYear(time)end
---@overload fun(year:System.Int32, month:System.Int32, era:System.Int32):System.Int32
---@param year System.Int32
---@param month System.Int32
---@return System.Int32
function System.Globalization.Calendar:GetDaysInMonth(year, month)end
---@overload fun(year:System.Int32, era:System.Int32):System.Int32
---@param year System.Int32
---@return System.Int32
function System.Globalization.Calendar:GetDaysInYear(year)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetHour(time)end
---@param time System.DateTime
---@return System.Double
function System.Globalization.Calendar:GetMilliseconds(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetMinute(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetMonth(time)end
---@overload fun(year:System.Int32, era:System.Int32):System.Int32
---@param year System.Int32
---@return System.Int32
function System.Globalization.Calendar:GetMonthsInYear(year)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetSecond(time)end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return System.Int32
function System.Globalization.Calendar:GetWeekOfYear(time, rule, firstDayOfWeek)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.Calendar:GetYear(time)end
---@overload fun(year:System.Int32, month:System.Int32, day:System.Int32, era:System.Int32):System.Boolean
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@return System.Boolean
function System.Globalization.Calendar:IsLeapDay(year, month, day)end
---@overload fun(year:System.Int32, month:System.Int32, era:System.Int32):System.Boolean
---@param year System.Int32
---@param month System.Int32
---@return System.Boolean
function System.Globalization.Calendar:IsLeapMonth(year, month)end
---@overload fun(year:System.Int32, era:System.Int32):System.Int32
---@param year System.Int32
---@return System.Int32
function System.Globalization.Calendar:GetLeapMonth(year)end
---@overload fun(year:System.Int32, era:System.Int32):System.Boolean
---@param year System.Int32
---@return System.Boolean
function System.Globalization.Calendar:IsLeapYear(year)end
---@overload fun(year:System.Int32, month:System.Int32, day:System.Int32, hour:System.Int32, minute:System.Int32, second:System.Int32, millisecond:System.Int32, era:System.Int32):System.DateTime
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@return System.DateTime
function System.Globalization.Calendar:ToDateTime(year, month, day, hour, minute, second, millisecond)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.Calendar:ToFourDigitYear(year)end
---@class System.Globalization.CalendarAlgorithmType : System.Enum
System.Globalization.CalendarAlgorithmType = {}
---@type System.Globalization.CalendarAlgorithmType
CS.System.Globalization.CalendarAlgorithmType = System.Globalization.CalendarAlgorithmType

---@return System.Int32 value:0
System.Globalization.CalendarAlgorithmType.Unknown = 0
---@return System.Int32 value:1
System.Globalization.CalendarAlgorithmType.SolarCalendar = 1
---@return System.Int32 value:2
System.Globalization.CalendarAlgorithmType.LunarCalendar = 2
---@return System.Int32 value:3
System.Globalization.CalendarAlgorithmType.LunisolarCalendar = 3

---@class System.Globalization.CalendarWeekRule : System.Enum
System.Globalization.CalendarWeekRule = {}
---@type System.Globalization.CalendarWeekRule
CS.System.Globalization.CalendarWeekRule = System.Globalization.CalendarWeekRule

---@return System.Int32 value:0
System.Globalization.CalendarWeekRule.FirstDay = 0
---@return System.Int32 value:1
System.Globalization.CalendarWeekRule.FirstFullWeek = 1
---@return System.Int32 value:2
System.Globalization.CalendarWeekRule.FirstFourDayWeek = 2

---@class System.Globalization.ChineseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public Eras System.Int32[] @  getter
---@field public ChineseEra System.Int32
System.Globalization.ChineseLunisolarCalendar = {}
---@type System.Globalization.ChineseLunisolarCalendar
CS.System.Globalization.ChineseLunisolarCalendar = System.Globalization.ChineseLunisolarCalendar

---@param time System.DateTime
---@return System.Int32
function System.Globalization.ChineseLunisolarCalendar:GetEra(time)end
---@class System.Globalization.CompareOptions : System.Enum
System.Globalization.CompareOptions = {}
---@type System.Globalization.CompareOptions
CS.System.Globalization.CompareOptions = System.Globalization.CompareOptions

---@return System.Int32 value:0
System.Globalization.CompareOptions.None = 0
---@return System.Int32 value:1
System.Globalization.CompareOptions.IgnoreCase = 1
---@return System.Int32 value:2
System.Globalization.CompareOptions.IgnoreNonSpace = 2
---@return System.Int32 value:4
System.Globalization.CompareOptions.IgnoreSymbols = 4
---@return System.Int32 value:8
System.Globalization.CompareOptions.IgnoreKanaType = 8

---@class System.Globalization.CompareInfo : System.Object
---@field public Name System.String @  getter
---@field public LCID System.Int32 @  getter
---@field public Version System.Globalization.SortVersion @  getter
System.Globalization.CompareInfo = {}
---@type System.Globalization.CompareInfo
CS.System.Globalization.CompareInfo = System.Globalization.CompareInfo

---@overload fun(name:System.String):System.Globalization.CompareInfo
---@overload fun(culture:System.Int32, assembly:System.Reflection.Assembly):System.Globalization.CompareInfo
---@overload fun(name:System.String, assembly:System.Reflection.Assembly):System.Globalization.CompareInfo
---@param culture System.Int32
---@return System.Globalization.CompareInfo
function System.Globalization.CompareInfo.GetCompareInfo(culture)end
---@overload fun(text:System.String):System.Boolean
---@param ch System.Char
---@return System.Boolean
function System.Globalization.CompareInfo.IsSortable(ch)end
---@overload fun(string1:System.String, offset1:System.Int32, string2:System.String, offset2:System.Int32):System.Int32
---@overload fun(string1:System.String, offset1:System.Int32, length1:System.Int32, string2:System.String, offset2:System.Int32, length2:System.Int32):System.Int32
---@overload fun(string1:System.String, string2:System.String, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(string1:System.String, offset1:System.Int32, string2:System.String, offset2:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(string1:System.String, offset1:System.Int32, length1:System.Int32, string2:System.String, offset2:System.Int32, length2:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@param string1 System.String
---@param string2 System.String
---@return System.Int32
function System.Globalization.CompareInfo:Compare(string1, string2)end
---@overload fun(source:System.String, prefix:System.String, options:System.Globalization.CompareOptions):System.Boolean
---@param source System.String
---@param prefix System.String
---@return System.Boolean
function System.Globalization.CompareInfo:IsPrefix(source, prefix)end
---@overload fun(source:System.String, suffix:System.String, options:System.Globalization.CompareOptions):System.Boolean
---@param source System.String
---@param suffix System.String
---@return System.Boolean
function System.Globalization.CompareInfo:IsSuffix(source, suffix)end
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.String):System.Int32
---@overload fun(source:System.String, value:System.Char, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32, count:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32, count:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@param source System.String
---@param value System.Char
---@return System.Int32
function System.Globalization.CompareInfo:IndexOf(source, value)end
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.String):System.Int32
---@overload fun(source:System.String, value:System.Char, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32, count:System.Int32):System.Int32
---@overload fun(source:System.String, value:System.Char, startIndex:System.Int32, count:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@overload fun(source:System.String, value:System.String, startIndex:System.Int32, count:System.Int32, options:System.Globalization.CompareOptions):System.Int32
---@param source System.String
---@param value System.Char
---@return System.Int32
function System.Globalization.CompareInfo:LastIndexOf(source, value)end
---@overload fun(source:System.String, options:System.Globalization.CompareOptions):System.Globalization.SortKey
---@param source System.String
---@return System.Globalization.SortKey
function System.Globalization.CompareInfo:GetSortKey(source)end
---@param value System.Object
---@return System.Boolean
function System.Globalization.CompareInfo:Equals(value)end
---@overload fun(source:System.String, options:System.Globalization.CompareOptions):System.Int32
---@return System.Int32
function System.Globalization.CompareInfo:GetHashCode()end
---@return System.String
function System.Globalization.CompareInfo:ToString()end
---@class System.Globalization.CultureNotFoundException : System.ArgumentException
---@field public InvalidCultureId System.Nullable @  getter
---@field public InvalidCultureName System.String @  getter
---@field public Message System.String @  getter
System.Globalization.CultureNotFoundException = {}
---@type System.Globalization.CultureNotFoundException
CS.System.Globalization.CultureNotFoundException = System.Globalization.CultureNotFoundException

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Void
function System.Globalization.CultureNotFoundException:GetObjectData(info, context)end
---@class System.Globalization.CultureTypes : System.Enum
System.Globalization.CultureTypes = {}
---@type System.Globalization.CultureTypes
CS.System.Globalization.CultureTypes = System.Globalization.CultureTypes

---@return System.Int32 value:1
System.Globalization.CultureTypes.NeutralCultures = 1
---@return System.Int32 value:2
System.Globalization.CultureTypes.SpecificCultures = 2
---@return System.Int32 value:4
System.Globalization.CultureTypes.InstalledWin32Cultures = 4
---@return System.Int32 value:7
System.Globalization.CultureTypes.AllCultures = 7

---@class System.Globalization.DateTimeFormatInfo : System.Object
---@field public InvariantInfo System.Globalization.DateTimeFormatInfo @static  getter
---@field public CurrentInfo System.Globalization.DateTimeFormatInfo @static  getter
---@field public AMDesignator System.String @ setter getter
---@field public Calendar System.Globalization.Calendar @ setter getter
---@field public DateSeparator System.String @ setter getter
---@field public FirstDayOfWeek System.DayOfWeek @ setter getter
---@field public CalendarWeekRule System.Globalization.CalendarWeekRule @ setter getter
---@field public FullDateTimePattern System.String @ setter getter
---@field public LongDatePattern System.String @ setter getter
---@field public LongTimePattern System.String @ setter getter
---@field public MonthDayPattern System.String @ setter getter
---@field public PMDesignator System.String @ setter getter
---@field public RFC1123Pattern System.String @  getter
---@field public ShortDatePattern System.String @ setter getter
---@field public ShortTimePattern System.String @ setter getter
---@field public SortableDateTimePattern System.String @  getter
---@field public TimeSeparator System.String @ setter getter
---@field public UniversalSortableDateTimePattern System.String @  getter
---@field public YearMonthPattern System.String @ setter getter
---@field public AbbreviatedDayNames System.String[] @ setter getter
---@field public ShortestDayNames System.String[] @ setter getter
---@field public DayNames System.String[] @ setter getter
---@field public AbbreviatedMonthNames System.String[] @ setter getter
---@field public MonthNames System.String[] @ setter getter
---@field public IsReadOnly System.Boolean @  getter
---@field public NativeCalendarName System.String @  getter
---@field public AbbreviatedMonthGenitiveNames System.String[] @ setter getter
---@field public MonthGenitiveNames System.String[] @ setter getter
System.Globalization.DateTimeFormatInfo = {}
---@type System.Globalization.DateTimeFormatInfo
CS.System.Globalization.DateTimeFormatInfo = System.Globalization.DateTimeFormatInfo

---@param provider System.IFormatProvider
---@return System.Globalization.DateTimeFormatInfo
function System.Globalization.DateTimeFormatInfo.GetInstance(provider)end
---@param formatType System.Type
---@return System.Object
function System.Globalization.DateTimeFormatInfo:GetFormat(formatType)end
---@return System.Object
function System.Globalization.DateTimeFormatInfo:Clone()end
---@param eraName System.String
---@return System.Int32
function System.Globalization.DateTimeFormatInfo:GetEra(eraName)end
---@param era System.Int32
---@return System.String
function System.Globalization.DateTimeFormatInfo:GetEraName(era)end
---@param era System.Int32
---@return System.String
function System.Globalization.DateTimeFormatInfo:GetAbbreviatedEraName(era)end
---@param dayofweek System.DayOfWeek
---@return System.String
function System.Globalization.DateTimeFormatInfo:GetAbbreviatedDayName(dayofweek)end
---@param dayOfWeek System.DayOfWeek
---@return System.String
function System.Globalization.DateTimeFormatInfo:GetShortestDayName(dayOfWeek)end
---@overload fun(format:System.Char):System.String[]
---@return System.String[]
function System.Globalization.DateTimeFormatInfo:GetAllDateTimePatterns()end
---@param dayofweek System.DayOfWeek
---@return System.String
function System.Globalization.DateTimeFormatInfo:GetDayName(dayofweek)end
---@param month System.Int32
---@return System.String
function System.Globalization.DateTimeFormatInfo:GetAbbreviatedMonthName(month)end
---@param month System.Int32
---@return System.String
function System.Globalization.DateTimeFormatInfo:GetMonthName(month)end
---@param dtfi System.Globalization.DateTimeFormatInfo
---@return System.Globalization.DateTimeFormatInfo
function System.Globalization.DateTimeFormatInfo.ReadOnly(dtfi)end
---@param patterns System.String[]
---@param format System.Char
---@return System.Void
function System.Globalization.DateTimeFormatInfo:SetAllDateTimePatterns(patterns, format)end
---@class System.Globalization.DateTimeStyles : System.Enum
System.Globalization.DateTimeStyles = {}
---@type System.Globalization.DateTimeStyles
CS.System.Globalization.DateTimeStyles = System.Globalization.DateTimeStyles

---@return System.Int32 value:0
System.Globalization.DateTimeStyles.None = 0
---@return System.Int32 value:1
System.Globalization.DateTimeStyles.AllowLeadingWhite = 1
---@return System.Int32 value:2
System.Globalization.DateTimeStyles.AllowTrailingWhite = 2
---@return System.Int32 value:4
System.Globalization.DateTimeStyles.AllowInnerWhite = 4
---@return System.Int32 value:7
System.Globalization.DateTimeStyles.AllowWhiteSpaces = 7
---@return System.Int32 value:8
System.Globalization.DateTimeStyles.NoCurrentDateDefault = 8

---@class System.Globalization.DaylightTime : System.Object
---@field public Start System.DateTime @  getter
---@field public End System.DateTime @  getter
---@field public Delta System.TimeSpan @  getter
System.Globalization.DaylightTime = {}
---@type System.Globalization.DaylightTime
CS.System.Globalization.DaylightTime = System.Globalization.DaylightTime

---@class System.Globalization.DigitShapes : System.Enum
System.Globalization.DigitShapes = {}
---@type System.Globalization.DigitShapes
CS.System.Globalization.DigitShapes = System.Globalization.DigitShapes

---@return System.Int32 value:0
System.Globalization.DigitShapes.Context = 0
---@return System.Int32 value:1
System.Globalization.DigitShapes.None = 1
---@return System.Int32 value:2
System.Globalization.DigitShapes.NativeNational = 2

---@class System.Globalization.EastAsianLunisolarCalendar : System.Globalization.Calendar
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
System.Globalization.EastAsianLunisolarCalendar = {}
---@type System.Globalization.EastAsianLunisolarCalendar
CS.System.Globalization.EastAsianLunisolarCalendar = System.Globalization.EastAsianLunisolarCalendar

---@param time System.DateTime
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetSexagenaryYear(time)end
---@param sexagenaryYear System.Int32
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetCelestialStem(sexagenaryYear)end
---@param sexagenaryYear System.Int32
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetTerrestrialBranch(sexagenaryYear)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.EastAsianLunisolarCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.EastAsianLunisolarCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.EastAsianLunisolarCalendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetDayOfYear(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetDayOfMonth(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetMonth(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetYear(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.EastAsianLunisolarCalendar:GetDayOfWeek(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetMonthsInYear(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.EastAsianLunisolarCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.EastAsianLunisolarCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.EastAsianLunisolarCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.EastAsianLunisolarCalendar:ToFourDigitYear(year)end
---@class System.Globalization.GregorianCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public CalendarType System.Globalization.GregorianCalendarTypes @ setter getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public ADEra System.Int32
System.Globalization.GregorianCalendar = {}
---@type System.Globalization.GregorianCalendar
CS.System.Globalization.GregorianCalendar = System.Globalization.GregorianCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.GregorianCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.GregorianCalendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.GregorianCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.GregorianCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.GregorianCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.GregorianCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.GregorianCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.GregorianCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.GregorianCalendar:GetMonth(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.GregorianCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.GregorianCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.GregorianCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.GregorianCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.GregorianCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.GregorianCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.GregorianCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.GregorianCalendar:ToFourDigitYear(year)end
---@class System.Globalization.GregorianCalendarTypes : System.Enum
System.Globalization.GregorianCalendarTypes = {}
---@type System.Globalization.GregorianCalendarTypes
CS.System.Globalization.GregorianCalendarTypes = System.Globalization.GregorianCalendarTypes

---@return System.Int32 value:1
System.Globalization.GregorianCalendarTypes.Localized = 1
---@return System.Int32 value:2
System.Globalization.GregorianCalendarTypes.USEnglish = 2

---@class System.Globalization.HebrewCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public HebrewEra System.Int32
System.Globalization.HebrewCalendar = {}
---@type System.Globalization.HebrewCalendar
CS.System.Globalization.HebrewCalendar = System.Globalization.HebrewCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.HebrewCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.HebrewCalendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HebrewCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.HebrewCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HebrewCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HebrewCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HebrewCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HebrewCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HebrewCalendar:GetMonth(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HebrewCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HebrewCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.HebrewCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HebrewCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.HebrewCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.HebrewCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.HebrewCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.HebrewCalendar:ToFourDigitYear(year)end
---@class System.Globalization.HijriCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public HijriAdjustment System.Int32 @ setter getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public HijriEra System.Int32
System.Globalization.HijriCalendar = {}
---@type System.Globalization.HijriCalendar
CS.System.Globalization.HijriCalendar = System.Globalization.HijriCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.HijriCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.HijriCalendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HijriCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.HijriCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HijriCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HijriCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HijriCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HijriCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HijriCalendar:GetMonth(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HijriCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.HijriCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.HijriCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.HijriCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.HijriCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.HijriCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.HijriCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.HijriCalendar:ToFourDigitYear(year)end
---@class System.Globalization.JapaneseCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
System.Globalization.JapaneseCalendar = {}
---@type System.Globalization.JapaneseCalendar
CS.System.Globalization.JapaneseCalendar = System.Globalization.JapaneseCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.JapaneseCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.JapaneseCalendar:AddYears(time, years)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.JapaneseCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetWeekOfYear(time, rule, firstDayOfWeek)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetMonth(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.JapaneseCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.JapaneseCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JapaneseCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.JapaneseCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.JapaneseCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.JapaneseCalendar:ToFourDigitYear(year)end
---@class System.Globalization.JapaneseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public Eras System.Int32[] @  getter
---@field public JapaneseEra System.Int32
System.Globalization.JapaneseLunisolarCalendar = {}
---@type System.Globalization.JapaneseLunisolarCalendar
CS.System.Globalization.JapaneseLunisolarCalendar = System.Globalization.JapaneseLunisolarCalendar

---@param time System.DateTime
---@return System.Int32
function System.Globalization.JapaneseLunisolarCalendar:GetEra(time)end
---@class System.Globalization.JulianCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public JulianEra System.Int32
System.Globalization.JulianCalendar = {}
---@type System.Globalization.JulianCalendar
CS.System.Globalization.JulianCalendar = System.Globalization.JulianCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.JulianCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.JulianCalendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JulianCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.JulianCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JulianCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JulianCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JulianCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JulianCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JulianCalendar:GetMonth(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JulianCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.JulianCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.JulianCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.JulianCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.JulianCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.JulianCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.JulianCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.JulianCalendar:ToFourDigitYear(year)end
---@class System.Globalization.KoreanCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public KoreanEra System.Int32
System.Globalization.KoreanCalendar = {}
---@type System.Globalization.KoreanCalendar
CS.System.Globalization.KoreanCalendar = System.Globalization.KoreanCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.KoreanCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.KoreanCalendar:AddYears(time, years)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.KoreanCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.KoreanCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.KoreanCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.KoreanCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.KoreanCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.KoreanCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return System.Int32
function System.Globalization.KoreanCalendar:GetWeekOfYear(time, rule, firstDayOfWeek)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.KoreanCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.KoreanCalendar:GetMonth(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.KoreanCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.KoreanCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.KoreanCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.KoreanCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.KoreanCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.KoreanCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.KoreanCalendar:ToFourDigitYear(year)end
---@class System.Globalization.KoreanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public Eras System.Int32[] @  getter
---@field public GregorianEra System.Int32
System.Globalization.KoreanLunisolarCalendar = {}
---@type System.Globalization.KoreanLunisolarCalendar
CS.System.Globalization.KoreanLunisolarCalendar = System.Globalization.KoreanLunisolarCalendar

---@param time System.DateTime
---@return System.Int32
function System.Globalization.KoreanLunisolarCalendar:GetEra(time)end
---@class System.Globalization.NumberFormatInfo : System.Object
---@field public InvariantInfo System.Globalization.NumberFormatInfo @static  getter
---@field public CurrencyDecimalDigits System.Int32 @ setter getter
---@field public CurrencyDecimalSeparator System.String @ setter getter
---@field public IsReadOnly System.Boolean @  getter
---@field public CurrencyGroupSizes System.Int32[] @ setter getter
---@field public NumberGroupSizes System.Int32[] @ setter getter
---@field public PercentGroupSizes System.Int32[] @ setter getter
---@field public CurrencyGroupSeparator System.String @ setter getter
---@field public CurrencySymbol System.String @ setter getter
---@field public CurrentInfo System.Globalization.NumberFormatInfo @static  getter
---@field public NaNSymbol System.String @ setter getter
---@field public CurrencyNegativePattern System.Int32 @ setter getter
---@field public NumberNegativePattern System.Int32 @ setter getter
---@field public PercentPositivePattern System.Int32 @ setter getter
---@field public PercentNegativePattern System.Int32 @ setter getter
---@field public NegativeInfinitySymbol System.String @ setter getter
---@field public NegativeSign System.String @ setter getter
---@field public NumberDecimalDigits System.Int32 @ setter getter
---@field public NumberDecimalSeparator System.String @ setter getter
---@field public NumberGroupSeparator System.String @ setter getter
---@field public CurrencyPositivePattern System.Int32 @ setter getter
---@field public PositiveInfinitySymbol System.String @ setter getter
---@field public PositiveSign System.String @ setter getter
---@field public PercentDecimalDigits System.Int32 @ setter getter
---@field public PercentDecimalSeparator System.String @ setter getter
---@field public PercentGroupSeparator System.String @ setter getter
---@field public PercentSymbol System.String @ setter getter
---@field public PerMilleSymbol System.String @ setter getter
---@field public NativeDigits System.String[] @ setter getter
---@field public DigitSubstitution System.Globalization.DigitShapes @ setter getter
System.Globalization.NumberFormatInfo = {}
---@type System.Globalization.NumberFormatInfo
CS.System.Globalization.NumberFormatInfo = System.Globalization.NumberFormatInfo

---@param formatProvider System.IFormatProvider
---@return System.Globalization.NumberFormatInfo
function System.Globalization.NumberFormatInfo.GetInstance(formatProvider)end
---@return System.Object
function System.Globalization.NumberFormatInfo:Clone()end
---@param formatType System.Type
---@return System.Object
function System.Globalization.NumberFormatInfo:GetFormat(formatType)end
---@param nfi System.Globalization.NumberFormatInfo
---@return System.Globalization.NumberFormatInfo
function System.Globalization.NumberFormatInfo.ReadOnly(nfi)end
---@class System.Globalization.NumberStyles : System.Enum
System.Globalization.NumberStyles = {}
---@type System.Globalization.NumberStyles
CS.System.Globalization.NumberStyles = System.Globalization.NumberStyles

---@return System.Int32 value:0
System.Globalization.NumberStyles.None = 0
---@return System.Int32 value:1
System.Globalization.NumberStyles.AllowLeadingWhite = 1
---@return System.Int32 value:2
System.Globalization.NumberStyles.AllowTrailingWhite = 2
---@return System.Int32 value:4
System.Globalization.NumberStyles.AllowLeadingSign = 4
---@return System.Int32 value:7
System.Globalization.NumberStyles.Integer = 7
---@return System.Int32 value:8
System.Globalization.NumberStyles.AllowTrailingSign = 8
---@return System.Int32 value:16
System.Globalization.NumberStyles.AllowParentheses = 16

---@class System.Globalization.SortVersion : System.Object
---@field public FullVersion System.Int32 @  getter
---@field public SortId System.Guid @  getter
System.Globalization.SortVersion = {}
---@type System.Globalization.SortVersion
CS.System.Globalization.SortVersion = System.Globalization.SortVersion

---@overload fun(other:System.Globalization.SortVersion):System.Boolean
---@param obj System.Object
---@return System.Boolean
function System.Globalization.SortVersion:Equals(obj)end
---@return System.Int32
function System.Globalization.SortVersion:GetHashCode()end
---@param left System.Globalization.SortVersion
---@param right System.Globalization.SortVersion
---@return System.Boolean
function System.Globalization.SortVersion.op_Equality(left, right)end
---@param left System.Globalization.SortVersion
---@param right System.Globalization.SortVersion
---@return System.Boolean
function System.Globalization.SortVersion.op_Inequality(left, right)end
---@class System.Globalization.StringInfo : System.Object
---@field public String System.String @ setter getter
---@field public LengthInTextElements System.Int32 @  getter
System.Globalization.StringInfo = {}
---@type System.Globalization.StringInfo
CS.System.Globalization.StringInfo = System.Globalization.StringInfo

---@param value System.Object
---@return System.Boolean
function System.Globalization.StringInfo:Equals(value)end
---@return System.Int32
function System.Globalization.StringInfo:GetHashCode()end
---@overload fun(startingTextElement:System.Int32, lengthInTextElements:System.Int32):System.String
---@param startingTextElement System.Int32
---@return System.String
function System.Globalization.StringInfo:SubstringByTextElements(startingTextElement)end
---@overload fun(str:System.String, index:System.Int32):System.String
---@param str System.String
---@return System.String
function System.Globalization.StringInfo.GetNextTextElement(str)end
---@overload fun(str:System.String, index:System.Int32):System.Globalization.TextElementEnumerator
---@param str System.String
---@return System.Globalization.TextElementEnumerator
function System.Globalization.StringInfo.GetTextElementEnumerator(str)end
---@param str System.String
---@return System.Int32[]
function System.Globalization.StringInfo.ParseCombiningCharacters(str)end
---@class System.Globalization.TaiwanCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
System.Globalization.TaiwanCalendar = {}
---@type System.Globalization.TaiwanCalendar
CS.System.Globalization.TaiwanCalendar = System.Globalization.TaiwanCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.TaiwanCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.TaiwanCalendar:AddYears(time, years)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.TaiwanCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetWeekOfYear(time, rule, firstDayOfWeek)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetMonth(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.TaiwanCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.TaiwanCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.TaiwanCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.TaiwanCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.TaiwanCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.TaiwanCalendar:ToFourDigitYear(year)end
---@class System.Globalization.TaiwanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public Eras System.Int32[] @  getter
System.Globalization.TaiwanLunisolarCalendar = {}
---@type System.Globalization.TaiwanLunisolarCalendar
CS.System.Globalization.TaiwanLunisolarCalendar = System.Globalization.TaiwanLunisolarCalendar

---@param time System.DateTime
---@return System.Int32
function System.Globalization.TaiwanLunisolarCalendar:GetEra(time)end
---@class System.Globalization.TextElementEnumerator : System.Object
---@field public Current System.Object @  getter
---@field public ElementIndex System.Int32 @  getter
System.Globalization.TextElementEnumerator = {}
---@type System.Globalization.TextElementEnumerator
CS.System.Globalization.TextElementEnumerator = System.Globalization.TextElementEnumerator

---@return System.Boolean
function System.Globalization.TextElementEnumerator:MoveNext()end
---@return System.String
function System.Globalization.TextElementEnumerator:GetTextElement()end
---@return System.Void
function System.Globalization.TextElementEnumerator:Reset()end
---@class System.Globalization.TextInfo : System.Object
---@field public ANSICodePage System.Int32 @  getter
---@field public OEMCodePage System.Int32 @  getter
---@field public MacCodePage System.Int32 @  getter
---@field public EBCDICCodePage System.Int32 @  getter
---@field public LCID System.Int32 @  getter
---@field public CultureName System.String @  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public ListSeparator System.String @ setter getter
---@field public IsRightToLeft System.Boolean @  getter
System.Globalization.TextInfo = {}
---@type System.Globalization.TextInfo
CS.System.Globalization.TextInfo = System.Globalization.TextInfo

---@return System.Object
function System.Globalization.TextInfo:Clone()end
---@param textInfo System.Globalization.TextInfo
---@return System.Globalization.TextInfo
function System.Globalization.TextInfo.ReadOnly(textInfo)end
---@overload fun(str:System.String):System.String
---@param c System.Char
---@return System.Char
function System.Globalization.TextInfo:ToLower(c)end
---@overload fun(str:System.String):System.String
---@param c System.Char
---@return System.Char
function System.Globalization.TextInfo:ToUpper(c)end
---@param obj System.Object
---@return System.Boolean
function System.Globalization.TextInfo:Equals(obj)end
---@return System.Int32
function System.Globalization.TextInfo:GetHashCode()end
---@return System.String
function System.Globalization.TextInfo:ToString()end
---@param str System.String
---@return System.String
function System.Globalization.TextInfo:ToTitleCase(str)end
---@class System.Globalization.ThaiBuddhistCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public ThaiBuddhistEra System.Int32
System.Globalization.ThaiBuddhistCalendar = {}
---@type System.Globalization.ThaiBuddhistCalendar
CS.System.Globalization.ThaiBuddhistCalendar = System.Globalization.ThaiBuddhistCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.ThaiBuddhistCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.ThaiBuddhistCalendar:AddYears(time, years)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.ThaiBuddhistCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetWeekOfYear(time, rule, firstDayOfWeek)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetMonth(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.ThaiBuddhistCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.ThaiBuddhistCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.ThaiBuddhistCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.ThaiBuddhistCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.ThaiBuddhistCalendar:ToFourDigitYear(year)end
---@class System.Globalization.TimeSpanStyles : System.Enum
System.Globalization.TimeSpanStyles = {}
---@type System.Globalization.TimeSpanStyles
CS.System.Globalization.TimeSpanStyles = System.Globalization.TimeSpanStyles

---@return System.Int32 value:0
System.Globalization.TimeSpanStyles.None = 0
---@return System.Int32 value:1
System.Globalization.TimeSpanStyles.AssumeNegative = 1

---@class System.Globalization.UmAlQuraCalendar : System.Globalization.Calendar
---@field public MinSupportedDateTime System.DateTime @  getter
---@field public MaxSupportedDateTime System.DateTime @  getter
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType @  getter
---@field public Eras System.Int32[] @  getter
---@field public TwoDigitYearMax System.Int32 @ setter getter
---@field public UmAlQuraEra System.Int32
System.Globalization.UmAlQuraCalendar = {}
---@type System.Globalization.UmAlQuraCalendar
CS.System.Globalization.UmAlQuraCalendar = System.Globalization.UmAlQuraCalendar

---@param time System.DateTime
---@param months System.Int32
---@return System.DateTime
function System.Globalization.UmAlQuraCalendar:AddMonths(time, months)end
---@param time System.DateTime
---@param years System.Int32
---@return System.DateTime
function System.Globalization.UmAlQuraCalendar:AddYears(time, years)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetDayOfMonth(time)end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.UmAlQuraCalendar:GetDayOfWeek(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetDayOfYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetDaysInMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetDaysInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetEra(time)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetMonth(time)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetMonthsInYear(year, era)end
---@param time System.DateTime
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetYear(time)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.UmAlQuraCalendar:IsLeapDay(year, month, day, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:GetLeapMonth(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.UmAlQuraCalendar:IsLeapMonth(year, month, era)end
---@param year System.Int32
---@param era System.Int32
---@return System.Boolean
function System.Globalization.UmAlQuraCalendar:IsLeapYear(year, era)end
---@param year System.Int32
---@param month System.Int32
---@param day System.Int32
---@param hour System.Int32
---@param minute System.Int32
---@param second System.Int32
---@param millisecond System.Int32
---@param era System.Int32
---@return System.DateTime
function System.Globalization.UmAlQuraCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era)end
---@param year System.Int32
---@return System.Int32
function System.Globalization.UmAlQuraCalendar:ToFourDigitYear(year)end
---@class System.Globalization.UnicodeCategory : System.Enum
System.Globalization.UnicodeCategory = {}
---@type System.Globalization.UnicodeCategory
CS.System.Globalization.UnicodeCategory = System.Globalization.UnicodeCategory

---@return System.Int32 value:0
System.Globalization.UnicodeCategory.UppercaseLetter = 0
---@return System.Int32 value:1
System.Globalization.UnicodeCategory.LowercaseLetter = 1
---@return System.Int32 value:2
System.Globalization.UnicodeCategory.TitlecaseLetter = 2
---@return System.Int32 value:3
System.Globalization.UnicodeCategory.ModifierLetter = 3
---@return System.Int32 value:4
System.Globalization.UnicodeCategory.OtherLetter = 4
---@return System.Int32 value:5
System.Globalization.UnicodeCategory.NonSpacingMark = 5
---@return System.Int32 value:6
System.Globalization.UnicodeCategory.SpacingCombiningMark = 6
---@return System.Int32 value:7
System.Globalization.UnicodeCategory.EnclosingMark = 7
---@return System.Int32 value:8
System.Globalization.UnicodeCategory.DecimalDigitNumber = 8
---@return System.Int32 value:9
System.Globalization.UnicodeCategory.LetterNumber = 9
---@return System.Int32 value:10
System.Globalization.UnicodeCategory.OtherNumber = 10
---@return System.Int32 value:11
System.Globalization.UnicodeCategory.SpaceSeparator = 11
---@return System.Int32 value:12
System.Globalization.UnicodeCategory.LineSeparator = 12
---@return System.Int32 value:13
System.Globalization.UnicodeCategory.ParagraphSeparator = 13
---@return System.Int32 value:14
System.Globalization.UnicodeCategory.Control = 14
---@return System.Int32 value:15
System.Globalization.UnicodeCategory.Format = 15
---@return System.Int32 value:16
System.Globalization.UnicodeCategory.Surrogate = 16
---@return System.Int32 value:17
System.Globalization.UnicodeCategory.PrivateUse = 17
---@return System.Int32 value:18
System.Globalization.UnicodeCategory.ConnectorPunctuation = 18
---@return System.Int32 value:19
System.Globalization.UnicodeCategory.DashPunctuation = 19
---@return System.Int32 value:20
System.Globalization.UnicodeCategory.OpenPunctuation = 20
---@return System.Int32 value:21
System.Globalization.UnicodeCategory.ClosePunctuation = 21
---@return System.Int32 value:22
System.Globalization.UnicodeCategory.InitialQuotePunctuation = 22
---@return System.Int32 value:23
System.Globalization.UnicodeCategory.FinalQuotePunctuation = 23
---@return System.Int32 value:24
System.Globalization.UnicodeCategory.OtherPunctuation = 24
---@return System.Int32 value:25
System.Globalization.UnicodeCategory.MathSymbol = 25
---@return System.Int32 value:26
System.Globalization.UnicodeCategory.CurrencySymbol = 26
---@return System.Int32 value:27
System.Globalization.UnicodeCategory.ModifierSymbol = 27
---@return System.Int32 value:28
System.Globalization.UnicodeCategory.OtherSymbol = 28
---@return System.Int32 value:29
System.Globalization.UnicodeCategory.OtherNotAssigned = 29

---@class System.Globalization.SortKey : System.Object
---@field public OriginalString System.String @  getter
---@field public KeyData System.Byte[] @  getter
System.Globalization.SortKey = {}
---@type System.Globalization.SortKey
CS.System.Globalization.SortKey = System.Globalization.SortKey

---@param sortkey1 System.Globalization.SortKey
---@param sortkey2 System.Globalization.SortKey
---@return System.Int32
function System.Globalization.SortKey.Compare(sortkey1, sortkey2)end
---@param value System.Object
---@return System.Boolean
function System.Globalization.SortKey:Equals(value)end
---@return System.Int32
function System.Globalization.SortKey:GetHashCode()end
---@return System.String
function System.Globalization.SortKey:ToString()end
---@class System.Globalization.CultureInfo : System.Object
---@field public InvariantCulture System.Globalization.CultureInfo @static  getter
---@field public CurrentCulture System.Globalization.CultureInfo @static setter getter
---@field public CurrentUICulture System.Globalization.CultureInfo @static setter getter
---@field public CultureTypes System.Globalization.CultureTypes @  getter
---@field public IetfLanguageTag System.String @  getter
---@field public KeyboardLayoutId System.Int32 @  getter
---@field public LCID System.Int32 @  getter
---@field public Name System.String @  getter
---@field public NativeName System.String @  getter
---@field public Calendar System.Globalization.Calendar @  getter
---@field public OptionalCalendars System.Globalization.Calendar[] @  getter
---@field public Parent System.Globalization.CultureInfo @  getter
---@field public TextInfo System.Globalization.TextInfo @  getter
---@field public ThreeLetterISOLanguageName System.String @  getter
---@field public ThreeLetterWindowsLanguageName System.String @  getter
---@field public TwoLetterISOLanguageName System.String @  getter
---@field public UseUserOverride System.Boolean @  getter
---@field public CompareInfo System.Globalization.CompareInfo @  getter
---@field public IsNeutralCulture System.Boolean @  getter
---@field public NumberFormat System.Globalization.NumberFormatInfo @ setter getter
---@field public DateTimeFormat System.Globalization.DateTimeFormatInfo @ setter getter
---@field public DisplayName System.String @  getter
---@field public EnglishName System.String @  getter
---@field public InstalledUICulture System.Globalization.CultureInfo @static  getter
---@field public IsReadOnly System.Boolean @  getter
---@field public DefaultThreadCurrentCulture System.Globalization.CultureInfo @static setter getter
---@field public DefaultThreadCurrentUICulture System.Globalization.CultureInfo @static setter getter
System.Globalization.CultureInfo = {}
---@type System.Globalization.CultureInfo
CS.System.Globalization.CultureInfo = System.Globalization.CultureInfo

---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo:GetConsoleFallbackUICulture()end
---@return System.Void
function System.Globalization.CultureInfo:ClearCachedData()end
---@return System.Object
function System.Globalization.CultureInfo:Clone()end
---@param value System.Object
---@return System.Boolean
function System.Globalization.CultureInfo:Equals(value)end
---@param types System.Globalization.CultureTypes
---@return System.Globalization.CultureInfo[]
function System.Globalization.CultureInfo.GetCultures(types)end
---@return System.Int32
function System.Globalization.CultureInfo:GetHashCode()end
---@param ci System.Globalization.CultureInfo
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.ReadOnly(ci)end
---@return System.String
function System.Globalization.CultureInfo:ToString()end
---@param formatType System.Type
---@return System.Object
function System.Globalization.CultureInfo:GetFormat(formatType)end
---@overload fun(name:System.String):System.Globalization.CultureInfo
---@overload fun(name:System.String, altName:System.String):System.Globalization.CultureInfo
---@param culture System.Int32
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.GetCultureInfo(culture)end
---@param name System.String
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.GetCultureInfoByIetfLanguageTag(name)end
---@param name System.String
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.CreateSpecificCulture(name)end
---@class System.Globalization.IdnMapping : System.Object
---@field public AllowUnassigned System.Boolean @ setter getter
---@field public UseStd3AsciiRules System.Boolean @ setter getter
System.Globalization.IdnMapping = {}
---@type System.Globalization.IdnMapping
CS.System.Globalization.IdnMapping = System.Globalization.IdnMapping

---@param obj System.Object
---@return System.Boolean
function System.Globalization.IdnMapping:Equals(obj)end
---@return System.Int32
function System.Globalization.IdnMapping:GetHashCode()end
---@overload fun(unicode:System.String, index:System.Int32):System.String
---@overload fun(unicode:System.String, index:System.Int32, count:System.Int32):System.String
---@param unicode System.String
---@return System.String
function System.Globalization.IdnMapping:GetAscii(unicode)end
---@overload fun(ascii:System.String, index:System.Int32):System.String
---@overload fun(ascii:System.String, index:System.Int32, count:System.Int32):System.String
---@param ascii System.String
---@return System.String
function System.Globalization.IdnMapping:GetUnicode(ascii)end
---@class System.Globalization.RegionInfo : System.Object
---@field public CurrentRegion System.Globalization.RegionInfo @static  getter
---@field public CurrencyEnglishName System.String @  getter
---@field public CurrencySymbol System.String @  getter
---@field public DisplayName System.String @  getter
---@field public EnglishName System.String @  getter
---@field public GeoId System.Int32 @  getter
---@field public IsMetric System.Boolean @  getter
---@field public ISOCurrencySymbol System.String @  getter
---@field public NativeName System.String @  getter
---@field public CurrencyNativeName System.String @  getter
---@field public Name System.String @  getter
---@field public ThreeLetterISORegionName System.String @  getter
---@field public ThreeLetterWindowsRegionName System.String @  getter
---@field public TwoLetterISORegionName System.String @  getter
System.Globalization.RegionInfo = {}
---@type System.Globalization.RegionInfo
CS.System.Globalization.RegionInfo = System.Globalization.RegionInfo

---@param value System.Object
---@return System.Boolean
function System.Globalization.RegionInfo:Equals(value)end
---@return System.Int32
function System.Globalization.RegionInfo:GetHashCode()end
---@return System.String
function System.Globalization.RegionInfo:ToString()end
---@class System.Globalization.GlobalizationExtensions : System.Object
System.Globalization.GlobalizationExtensions = {}
---@type System.Globalization.GlobalizationExtensions
CS.System.Globalization.GlobalizationExtensions = System.Globalization.GlobalizationExtensions

