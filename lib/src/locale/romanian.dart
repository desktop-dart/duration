part of duration.locale;

class RomanianDurationLocale extends DurationLocale {
  const RomanianDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'a';
    } else {
      return 'an' + (amount > 1 ? 'i' : '');
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'l';
    } else {
      return 'lun' + (amount > 1 ? 'i' : 'ă');
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'săptămân' + (amount > 1 ? 'i' : 'ă');
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'z';
    } else {
      return 'zi' + (amount > 1 ? 'le' : '');
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return 'or' + (amount > 1 ? 'e' : 'ă');
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'minut' + (amount > 1 ? 'e' : '');
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'secund' + (amount > 1 ? 'e' : 'ă');
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'millisecund' + (amount > 1 ? 'e' : 'ă');
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'microsecund' + (amount > 1 ? 'e' : 'ă');
    }
  }
}
