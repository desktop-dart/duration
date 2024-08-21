import 'locale/locale.dart';

/// Pretty format [duration] in terms of milliseconds.
///
/// If [terse] is true, microseconds are ignored.
/// Use [language] to configure which locale to print for.
/// Use [abbreviated] to control if the units should be abbreviated.
String prettyMilliseconds(Duration duration,
    {bool terse = false,
    DurationLocale language = const EnglishDurationLocale(),
    String separator = ' ',
    bool abbreviated = false}) {
  if (duration.inMilliseconds > 0) {
    final int us = duration.inMicroseconds % 1000;
    if (us == 0 || terse) {
      // If no microseconds are present, print "xxxxx ms"
      final sb = StringBuffer();
      sb.write(duration.inMilliseconds);
      sb.write(separator);
      sb.write(language.millisecond(duration.inMilliseconds, abbreviated));
      return sb.toString();
    } else {
      // If microseconds are present, print "xxx.yy ms"
      final sb = StringBuffer();
      sb.write(duration.inMilliseconds);
      sb.write('.');
      sb.write(_digits(us, 3));
      sb.write(separator);
      sb.write(language.millisecond(duration.inMilliseconds, abbreviated));
      return sb.toString();
    }
  } else {
    // If only microseconds are present, print "yyy us"
    final sb = StringBuffer();
    sb.write(duration.inMicroseconds);
    sb.write(separator);
    sb.write(language.microseconds(duration.inMicroseconds, abbreviated));
    return sb.toString();
  }
}

/// Pretty format [duration] in terms of seconds.
///
/// If [terse] is true, milliseconds and microseconds are ignored.
/// Use [language] to configure which locale to print for.
/// Use [abbreviated] to control if the units should be abbreviated.
String prettySeconds(Duration duration,
    {bool terse = false,
    DurationLocale language = const EnglishDurationLocale(),
    String separator = ' ',
    String delimiter = ' ',
    bool abbreviated = false}) {
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

String _digits(int data, int digits) {
  final String ret = data.toString();
  if (ret.length < digits) return '0' * (digits - ret.length) + ret;
  return ret;
}
