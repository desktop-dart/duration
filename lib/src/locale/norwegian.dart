part of duration.locale;

class NorwegianDurationLanguage implements DurationLocale {
  const NorwegianDurationLanguage();

  @override
  String year(int amount, [bool abbreviated = true]) {
    // No need to abbreviate a 2 letter word. It's also the same in singular and plural.
    return 'år';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mnd';
    } else {
      return 'måned' + (amount > 1 ? 'er' : '');
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'u';
    } else {
      return 'uke' + (amount > 1 ? 'r' : '');
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return 'dag' + (amount > 1 ? 'er' : '');
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 't';
    } else {
      return 'time' + (amount > 1 ? 'r' : '');
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'minutt' + (amount > 1 ? 'er' : '');
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'sekund' + (amount > 1 ? 'er' : '');
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisekund' + (amount > 1 ? 'er' : '');
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'mikrosekund' + (amount > 1 ? 'er' : '');
    }
  }
}
