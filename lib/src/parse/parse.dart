/// Parses duration string formatted by [prettyDuration] into [Duration] (in abbreviated mode).
/// [separator] defines the string that splits duration components in the string.
///
/// Example:
///     parseDuration('2w 5d 23h 59m 59s 999ms 999us');
Duration parseDuration(String input, {String separator = ','}) {
  bool isNegative = false;
  if (input.startsWith('-')) {
    isNegative = true;
    input = input.substring(1);
  } else if (input.startsWith('+')) {
    input = input.substring(1);
  }

  final parts = input.split(separator).map((t) => t.trim()).toList();

  int? weeks;
  int? days;
  int? hours;
  int? minutes;
  int? seconds;
  int? milliseconds;
  int? microseconds;

  for (String part in parts) {
    final match = RegExp(r'^(\d+)(w|d|h|min|m|s|ms|us)$').matchAsPrefix(part);
    if (match == null) throw FormatException('Invalid duration format');

    int value = int.parse(match.group(1)!);
    String? unit = match.group(2);

    switch (unit) {
      case 'w':
        if (weeks != null) {
          throw FormatException('Weeks specified multiple times');
        }
        weeks = value;
        break;
      case 'd':
        if (days != null) {
          throw FormatException('Days specified multiple times');
        }
        days = value;
        break;
      case 'h':
        if (hours != null) {
          throw FormatException('Hours specified multiple times');
        }
        hours = value;
        break;
      case 'min':
      case 'm':
        if (minutes != null) {
          throw FormatException('Minutes specified multiple times');
        }
        minutes = value;
        break;
      case 's':
        if (seconds != null) {
          throw FormatException('Seconds specified multiple times');
        }
        seconds = value;
        break;
      case 'ms':
        if (milliseconds != null) {
          throw FormatException('Milliseconds specified multiple times');
        }
        milliseconds = value;
        break;
      case 'us':
        if (microseconds != null) {
          throw FormatException('Microseconds specified multiple times');
        }
        microseconds = value;
        break;
      default:
        throw FormatException('Invalid duration unit $unit');
    }
  }

  var ret = Duration(
      days: (days ?? 0) + (weeks ?? 0) * 7,
      hours: hours ?? 0,
      minutes: minutes ?? 0,
      seconds: seconds ?? 0,
      milliseconds: milliseconds ?? 0,
      microseconds: microseconds ?? 0);
  return isNegative ? -ret : ret;
}

/// Parses duration string formatted by Duration.toString() to [Duration].
/// The string should be of form hours:minutes:seconds.microseconds
///
/// Example:
///     parseTime('245:09:08.007006');
Duration parseTime(String input) {
  bool isNegative = false;
  if (input.startsWith('-')) {
    isNegative = true;
    input = input.substring(1);
  } else if (input.startsWith('+')) {
    input = input.substring(1);
  }

  final parts = input.split(':');

  if (parts.length != 3) throw FormatException('Invalid time format');

  int days;
  int hours;
  int minutes;
  int seconds;
  int milliseconds;
  int microseconds;

  {
    final p = parts[2].split('.');

    if (p.length != 2) throw FormatException('Invalid time format');

    // If fractional seconds is passed, but less than 6 digits
    // Pad out to the right so we can calculate the ms/us correctly
    final p2 = int.parse(p[1].padRight(6, '0'));
    microseconds = p2 % 1000;
    milliseconds = p2 ~/ 1000;

    seconds = int.parse(p[0]);
  }

  minutes = int.parse(parts[1]);

  {
    int p = int.parse(parts[0]);
    hours = p % 24;
    days = p ~/ 24;
  }

  // TODO verify that there are no negative parts

  var ret = Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
      microseconds: microseconds);

  return isNegative ? -ret : ret;
}

Duration parseTimeLoose(String input) {
  final parts = input.split(':');
  if (parts.length != 3 && parts.length != 2) {
    throw const FormatException('Invalid time format');
  }

  final isNegative = input.startsWith('-');
  if (isNegative) {
    input = input.substring(1);
  }

  late final int days;
  late final int hours;
  late final int minutes;
  late final int seconds;
  late final int milliseconds;
  late final int microseconds;

  if (parts.length == 3) {
    final p = parts[2].split('.');

    if (p.length == 2) {
      // If fractional seconds is passed, but less than 6 digits
      // Pad out to the right so we can calculate the ms/us correctly
      final p2 = int.parse(p[1].padRight(6, '0')).abs();

      microseconds = p2 % 1000;
      milliseconds = p2 ~/ 1000;
      seconds = int.parse(p[0]).abs();
    } else if (p.length == 1) {
      microseconds = 0;
      milliseconds = 0;
      seconds = int.parse(p[0]).abs();
    } else {
      throw const FormatException('Invalid time format');
    }
  } else {
    microseconds = 0;
    milliseconds = 0;
    seconds = 0;
  }

  minutes = int.parse(parts[1]).abs();

  {
    final p = int.parse(parts[0]).abs();

    hours = p % 24;
    days = p ~/ 24;
  }

  final duration = Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
      microseconds: microseconds);

  return (isNegative) ? -duration : duration;
}

Duration? tryParseDuration(String input) {
  try {
    return parseDuration(input);
  } catch (_) {
    return null;
  }
}

Duration? tryParseTime(String input) {
  try {
    return parseTime(input);
  } catch (_) {
    return null;
  }
}

Duration? tryParseTimeLoose(String input) {
  try {
    return parseTime(input);
  } catch (_) {
    return null;
  }
}

Duration? tryParseDurationAny(String input) {
  try {
    return parseDuration(input);
  } catch (_) {
    try {
      return parseTime(input);
    } catch (e) {
      return null;
    }
  }
}
