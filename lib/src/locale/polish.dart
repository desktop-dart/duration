part of duration.locale;

class PolishDurationLocale implements DurationLocale {
  const PolishDurationLocale();

  /// Based on https://github.com/unicode-org/cldr/blob/master/common/supplemental/plurals.xml
  /// 'other' case is skipped as it doesn't affect the duration strings.
  String _polishStr(int amount, String one, String few, String many) {
    if (amount == 1) return one;

    final int lastDigit = amount % 10;
    final int lastTwoDigits = amount % 100;
    if (lastDigit >= 2 &&
        lastDigit <= 4 &&
        !(lastTwoDigits >= 12 && lastTwoDigits <= 14)) return few;

    return many;
  }

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return _polishStr(amount, 'r', 'l', 'l');
    } else {
      return _polishStr(amount, 'rok', 'lata', 'lat');
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mc';
    } else {
      return _polishStr(amount, 'miesiąc', 'miesiące', 'miesięcy');
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 't';
    } else {
      return _polishStr(amount, 'tydzień', 'tygodnie', 'tygodni');
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return _polishStr(amount, 'dzień', 'dni', 'dni');
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    } else {
      return _polishStr(amount, 'godzina', 'godziny', 'godzin');
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return _polishStr(amount, 'minuta', 'minuty', 'minut');
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return _polishStr(amount, 'sekunda', 'sekundy', 'sekund');
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return _polishStr(amount, 'milisekunda', 'milisekundy', 'milisekund');
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return _polishStr(amount, 'mikrosekunda', 'mikrosekundy', 'mikrosekund');
    }
  }
}
