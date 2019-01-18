import 'locale/locale.dart';

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

class DurationTersity {
  final int id;

  final String value;

  const DurationTersity._(this.id, this.value);

  static const DurationTersity day = const DurationTersity._(1, 'dhMsmu');

  static const DurationTersity hour = const DurationTersity._(2, 'hMsmu');

  static const DurationTersity minute = const DurationTersity._(3, 'Msmu');

  static const DurationTersity second = const DurationTersity._(4, 'smu');

  static const DurationTersity millisecond = const DurationTersity._(5, 'mu');

  static const DurationTersity microsecond = const DurationTersity._(6, 'u');

  static const DurationTersity all = microsecond;
}

/// Converts [duration] into legible string with given level of [tersity]
///
/// Example:
///
///     final dur = Duration(
///         days: 5,
///         hours: 23,
///         minutes: 59,
///         seconds: 59,
///         milliseconds: 999,
///         microseconds: 999);
///     printDuration(dur); // => 5d 23h 59m 59s 999ms 999us
///
/// Use [abbreviated] to determine if units should be abbreviated or not.
///
/// Example:
///
///     // => 5 days 9 hours
///     printDuration(aDay * 5 + anHour * 9, abbreviated: false);
///
/// Use [locale] to format according to the desired locale.
///
/// Example:
///
///     // => 5días 9horas
///     printDuration(aDay * 5 + anHour * 9,
///         abbreviated: false, locale: spanishLocale);
String prettyDuration(Duration duration,
    {DurationTersity tersity: DurationTersity.second,
    DurationLocale locale: const EnglishDurationLocale(),
    String spacer,
    String delimiter,
    String conjunction,
    bool abbreviated: false}) {
  if (abbreviated && delimiter == null) {
    delimiter = ', ';
    spacer = '';
  } else {
    delimiter ??= ' ';
    spacer ??= ' ';
  }

  var out = <String>[];

  final partFmt = (int amount, String annotater(int amount, bool abbreviated)) {
    final sb = StringBuffer();
    sb.write(amount);
    sb.write(spacer);
    sb.write(annotater(amount, abbreviated));
    return sb.toString();
  };

  int tersityIndex = 0;

  if (duration.inDays > 0) {
    out.add(partFmt(duration.inDays, locale.day));
  }

  final int hours = duration.inHours % 24;
  if (hours > 0) {
    out.add(partFmt(hours, locale.hour));
  }

  if (tersity.id == DurationTersity.hour.id)
    tersityIndex = out.length;
    
  final int minutes = duration.inMinutes % 60;
  if (minutes > 0) {
    out.add(partFmt(minutes, locale.minute));
  }

  if (tersity.id == DurationTersity.minute.id)
    tersityIndex = out.length;

  final int seconds = duration.inSeconds % 60;
  if (seconds > 0) {
    out.add(partFmt(seconds, locale.second));
  }

  if (tersity.id == DurationTersity.second.id)
    tersityIndex = out.length;
    
  final int milliseconds = duration.inMilliseconds % 1000;
  if (milliseconds > 0) {
    out.add(partFmt(milliseconds, locale.millisecond));
  }

  if (tersity.id == DurationTersity.millisecond.id)
    tersityIndex = out.length;

  final int microseconds = duration.inMicroseconds % 1000;
  if (microseconds > 0 || out.length == 0) {
    out.add(partFmt(microseconds, locale.microseconds));
  }

  if (tersity.id == DurationTersity.microsecond.id)
    tersityIndex = out.length;
  
  if (out.length == 1) {
    return out.first;
  } else {
      out = out.sublist(0, tersityIndex);
      if (conjunction == null || out.length == 1) {
        return out.join(delimiter);
      } else {
        return out.sublist(0, out.length - 1).join(delimiter) +
            conjunction +
            out.last;
      }
  }
}

String prettySeconds(Duration duration,
    {bool terse: false,
    DurationLocale language: const EnglishDurationLocale(),
    String separator: ' ',
    String delimiter: ' ',
    bool abbreviated: false}) {
  if (duration.inSeconds > 0) {
    if (duration.inMilliseconds == 0 || terse) {
      final sb = StringBuffer();
      sb.write(duration.inSeconds);
      sb.write(separator);
      sb.write(language.second(duration.inSeconds, abbreviated));
      return sb.toString();
    } else if (duration.inMicroseconds == 0) {
      final sb = StringBuffer();
      sb.write(duration.inSeconds);
      sb.write('.');
      sb.write(_digits(duration.inMilliseconds % 1000, 3));
      sb.write(separator);
      sb.write(language.second(duration.inSeconds, abbreviated));
      return sb.toString();
    } else {
      final sb = StringBuffer();
      sb.write(duration.inSeconds);
      sb.write(separator);
      sb.write(language.second(duration.inSeconds, abbreviated));
      sb.write(delimiter);
      sb.write(duration.inMilliseconds % 1000);
      sb.write('.');
      sb.write(_digits(duration.inMicroseconds % 1000, 3));
      sb.write(separator);
      sb.write(
          language.millisecond(duration.inMilliseconds % 1000, abbreviated));
      return sb.toString();
    }
  } else {
    return prettyMilliseconds(duration,
        terse: terse,
        language: language,
        separator: separator,
        abbreviated: abbreviated);
  }
}

String prettyMilliseconds(Duration duration,
    {bool terse: false,
    DurationLocale language: const EnglishDurationLocale(),
    String separator: ' ',
    bool abbreviated: false}) {
  if (duration.inMilliseconds > 0) {
    final int us = duration.inMicroseconds % 1000;
    if (us == 0 || terse) {
      final sb = StringBuffer();
      sb.write(duration.inMilliseconds);
      sb.write(separator);
      sb.write(language.millisecond(duration.inMilliseconds, abbreviated));
      return sb.toString();
    } else {
      final sb = StringBuffer();
      sb.write(duration.inMilliseconds);
      sb.write('.');
      sb.write(_digits(us, 3));
      sb.write(separator);
      sb.write(language.millisecond(duration.inMilliseconds, abbreviated));
      return sb.toString();
    }
  } else {
    final sb = StringBuffer();
    sb.write(duration.inMicroseconds);
    sb.write(separator);
    sb.write(language.microseconds(duration.inMicroseconds, abbreviated));
    return sb.toString();
  }
}

String printDuration(Duration duration,
    {DurationTersity tersity: DurationTersity.second,
    DurationLocale locale: const EnglishDurationLocale(),
    String spacer,
    String delimiter,
    String conjugation,
    bool abbreviated: false}) {
  final String fmt = prettyDuration(duration,
      tersity: tersity,
      locale: locale,
      spacer: spacer,
      delimiter: delimiter,
      conjunction: conjugation,
      abbreviated: abbreviated);
  print(fmt);
  return fmt;
}

String printMilliseconds(Duration duration,
    {bool terse: false,
    DurationLocale language: const EnglishDurationLocale(),
    String separator: ' ',
    bool abbreviated: false}) {
  final String fmt = prettyMilliseconds(duration,
      terse: terse,
      language: language,
      separator: separator,
      abbreviated: abbreviated);
  print(fmt);
  return fmt;
}

String _digits(int data, int digits) {
  final String ret = data.toString();
  if (ret.length < digits) return '0' * (digits - ret.length) + ret;
  return ret;
}
