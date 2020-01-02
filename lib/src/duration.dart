import 'locale/locale.dart';
import 'tersity.dart';

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
    {DurationTersity tersity = DurationTersity.second,
    DurationLocale locale = const EnglishDurationLocale(),
    String spacer,
    String delimiter,
    String conjunction,
    bool abbreviated = false,
    bool first = false}) {
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

  final int weeks = (duration.inDays / 7).floor();

  if (weeks > 0) {
    out.add(partFmt(weeks, locale.week));
  }

  if (tersity >= DurationTersity.day) {
    final int days = duration.inDays - (weeks * 7);
    if (days > 0) out.add(partFmt(days, locale.day));

    if (tersity >= DurationTersity.hour) {
      final int hours = duration.inHours % 24;
      if (hours > 0) out.add(partFmt(hours, locale.hour));

      if (tersity >= DurationTersity.minute) {
        final int minutes = duration.inMinutes % 60;
        if (minutes > 0) out.add(partFmt(minutes, locale.minute));

        if (tersity >= DurationTersity.second) {
          final int seconds = duration.inSeconds % 60;
          if (seconds > 0) out.add(partFmt(seconds, locale.second));

          if (tersity >= DurationTersity.millisecond) {
            final int milliseconds = duration.inMilliseconds % 1000;
            if (milliseconds > 0) {
              out.add(partFmt(milliseconds, locale.millisecond));
            }

            if (tersity >= DurationTersity.microsecond) {
              final int microseconds = duration.inMicroseconds % 1000;
              if (microseconds > 0 || out.isEmpty) {
                out.add(partFmt(microseconds, locale.microseconds));
              }
            } else {
              if (out.isEmpty) out.add(partFmt(0, locale.millisecond));
            }
          } else {
            if (out.isEmpty) out.add(partFmt(0, locale.second));
          }
        } else {
          if (out.isEmpty) out.add(partFmt(0, locale.minute));
        }
      } else {
        if (out.isEmpty) out.add(partFmt(0, locale.hour));
      }
    } else {
      if (out.isEmpty) out.add(partFmt(0, locale.day));
    }
  } else {
    if (out.isEmpty) out.add(partFmt(0, locale.week));
  }

  if (out.length == 1 || first == true) {
    return out.first;
  } else {
    if (conjunction == null || out.length == 1) {
      return out.join(delimiter);
    } else {
      return out.sublist(0, out.length - 1).join(delimiter) +
          conjunction +
          out.last;
    }
  }
}

final printDuration = prettyDuration;
