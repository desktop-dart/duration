part of duration.locale;

class EnglishDurationLocale implements DurationLocale {
  const EnglishDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'y';
    } else {
      return 'year' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mon';
    } else {
      return 'month' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'w';
    } else {
      return 'week' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return 'day' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return 'hour' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'minute' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'second' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisecond' + (amount > 1 ? 's' : '');
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'microsecond' + (amount > 1 ? 's' : '');
    }
  }
}
