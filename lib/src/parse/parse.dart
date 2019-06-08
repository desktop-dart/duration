/// Parses duration string into [Duration]
Duration parseDuration(String input, {String separator = ','}) {
  final parts = input.split(separator).map((t) => t.trim()).toList();

  int days;
  int hours;
  int minutes;
  int seconds;
  int milliseconds;
  int microseconds;

  for (String part in parts) {
    final match = RegExp(r'^(\d+)(d|h|m|s|ms|us])$').matchAsPrefix(part);
    if (match == null) throw FormatException("Invalid duration format");

    int value = int.parse(match.group(1));
    String unit = match.group(2);

    switch (unit) {
      case 'd':
        if (days != null) {
          throw FormatException("Days specified multiple times");
        }
        days = value;
        break;
      case 'h':
        if (hours != null) {
          throw FormatException("Days specified multiple times");
        }
        hours = value;
        break;
      case 'm':
        if (minutes != null) {
          throw FormatException("Days specified multiple times");
        }
        minutes = value;
        break;
      case 's':
        if (seconds != null) {
          throw FormatException("Days specified multiple times");
        }
        seconds = value;
        break;
      case 'ms':
        if (milliseconds != null) {
          throw FormatException("Days specified multiple times");
        }
        milliseconds = value;
        break;
      case 'us':
        if (microseconds != null) {
          throw FormatException("Days specified multiple times");
        }
        microseconds = value;
        break;
      default:
        throw FormatException("Invalid duration unit $unit");
    }
  }

  return Duration(
      days: days ?? 0,
      hours: hours ?? 0,
      minutes: minutes ?? 0,
      seconds: seconds ?? 0,
      milliseconds: milliseconds ?? 0,
      microseconds: microseconds ?? 0);
}

Duration parseTime(String input) {
  final parts = input.split(':');

  if (parts.length != 3) throw FormatException("Invalid time format");

  int days;
  int hours;
  int minutes;
  int seconds;
  int milliseconds;
  int microseconds;

  {
    final p = parts[2].split('.');

    if (p.length != 2) throw FormatException("Invalid time format");

    final p2 = int.parse(p[1]);
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

  return Duration(
      days: days ?? 0,
      hours: hours ?? 0,
      minutes: minutes ?? 0,
      seconds: seconds ?? 0,
      milliseconds: milliseconds ?? 0,
      microseconds: microseconds ?? 0);
}

Duration tryParseDuration(String input) {
  try {
    return parseDuration(input);
  } catch (_) {
    return null;
  }
}

Duration tryParseTime(String input) {
  try {
    return parseTime(input);
  } catch (_) {
    return null;
  }
}

Duration tryParseDurationAny(String input) {
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
