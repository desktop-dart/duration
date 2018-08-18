part of duration.locale;

class EnglishDurationLocale implements DurationLocale {
  const EnglishDurationLocale();

  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'y';
    else
      return 'year' + (amount > 1 ? 's' : '');
  }

  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'mon';
    else
      return 'month' + (amount > 1 ? 's' : '');
  }

  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'w';
    else
      return 'week' + (amount > 1 ? 's' : '');
  }

  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'd';
    else
      return 'day' + (amount > 1 ? 's' : '');
  }

  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'h';
    else
      return 'hour' + (amount > 1 ? 's' : '');
  }

  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'm';
    else
      return 'minute' + (amount > 1 ? 's' : '');
  }

  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 's';
    else
      return 'second' + (amount > 1 ? 's' : '');
  }

  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'ms';
    else
      return 'millisecond' + (amount > 1 ? 's' : '');
  }

  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'us';
    else
      return 'microsecond' + (amount > 1 ? 's' : '');
  }
}
