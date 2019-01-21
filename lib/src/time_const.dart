/// Duration of a microsecond
const Duration aMicrosecond = const Duration(microseconds: 1);

/// Duration of a millisecond
const Duration aMillisecond = const Duration(milliseconds: 1);

/// Duration of a second
const Duration aSecond = const Duration(seconds: 1);

/// Duration of a minute
const Duration aMinute = const Duration(minutes: 1);

/// Duration of an hour
const Duration anHour = const Duration(hours: 1);

/// Duration of a day
const Duration aDay = const Duration(days: 1);

/// Duration of a week
const Duration aWeek = const Duration(days: 7);

// Creates a [Duration] with given [milliseconds]
Duration us(int microseconds) => Duration(microseconds: microseconds);

// Creates a [Duration] with given [milliseconds]
Duration ms(int milliseconds) => Duration(milliseconds: milliseconds);

// Creates a [Duration] with given [seconds]
Duration seconds(int seconds) => Duration(seconds: seconds);

// Creates a [Duration] with given [minutes]
Duration minutes(int minutes) => Duration(minutes: minutes);

// Creates a [Duration] with given [minutes]
Duration hours(int hours) => Duration(hours: hours);

// Creates a [Duration] with given [days]
Duration days(int days) => Duration(days: days);
