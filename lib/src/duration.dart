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
    DurationTersity upperTersity = DurationTersity.week,
    DurationLocale locale = const EnglishDurationLocale(),
    String? spacer,
    String? delimiter,
    String? conjunction,
    bool abbreviated = false,
    bool first = false}) {
  if (abbreviated && delimiter == null) {
    delimiter = ', ';
    spacer = '';
  } else {
    delimiter ??= ' ';
    spacer ??= locale.defaultSpacer;
  }

  var out = <String>[];

  for (final currentTersity in DurationTersity.values) {
    if (currentTersity > upperTersity) {
      continue;
    } else if (currentTersity < tersity) {
      break;
    }
    int value = duration.inUnit(currentTersity);
    if (currentTersity != upperTersity) {
      value %= currentTersity.mod;
    }
    if (value > 0) {
      out.add(
          '$value$spacer${locale.inUnit(currentTersity, value, abbreviated)}');
    } else if (currentTersity == tersity && out.isEmpty) {
      out.add('0$spacer${locale.inUnit(currentTersity, value, abbreviated)}');
    }
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

String printDuration(Duration duration,
    {DurationTersity tersity = DurationTersity.second,
    DurationTersity upperTersity = DurationTersity.week,
    DurationLocale locale = const EnglishDurationLocale(),
    String? spacer,
    String? delimiter,
    String? conjugation,
    bool abbreviated = false}) {
  final String fmt = prettyDuration(duration,
      tersity: tersity,
      upperTersity: upperTersity,
      locale: locale,
      spacer: spacer,
      delimiter: delimiter,
      conjunction: conjugation,
      abbreviated: abbreviated);
  print(fmt);
  return fmt;
}
