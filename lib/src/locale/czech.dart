part of duration.locale;

enum CzechDurationLocalePluralization {
  one,
  few,
  many,
}

class CzechDurationLocale extends DurationLocale {
  const CzechDurationLocale();

  static CzechDurationLocalePluralization getPluralization(int amount) {
    if (amount == 1) {
      return CzechDurationLocalePluralization.one;
    } else if (amount > 1 && amount < 5) {
      return CzechDurationLocalePluralization.few;
    } else {
      return CzechDurationLocalePluralization.many;
    }
  }

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'r';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'rok';
      case CzechDurationLocalePluralization.few:
        return 'roky';
      case CzechDurationLocalePluralization.many:
      default:
        return 'let';
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'měs.';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'měsíc';
      case CzechDurationLocalePluralization.few:
        return 'měsíce';
      case CzechDurationLocalePluralization.many:
      default:
        return 'měsíců';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 't';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'týden';
      case CzechDurationLocalePluralization.few:
        return 'týdny';
      case CzechDurationLocalePluralization.many:
      default:
        return 'týdnů';
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'den';
      case CzechDurationLocalePluralization.few:
        return 'dny';
      case CzechDurationLocalePluralization.many:
      default:
        return 'dnů';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'h';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'hodina';
      case CzechDurationLocalePluralization.few:
        return 'hodiny';
      case CzechDurationLocalePluralization.many:
      default:
        return 'hodin';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'minuta';
      case CzechDurationLocalePluralization.few:
        return 'minuty';
      case CzechDurationLocalePluralization.many:
      default:
        return 'minut';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'sekunda';
      case CzechDurationLocalePluralization.few:
        return 'sekundy';
      case CzechDurationLocalePluralization.many:
      default:
        return 'sekund';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'milisekunda';
      case CzechDurationLocalePluralization.few:
        return 'milisekundy';
      case CzechDurationLocalePluralization.many:
      default:
        return 'milisekund';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'μs';
    }

    switch (CzechDurationLocale.getPluralization(amount)) {
      case CzechDurationLocalePluralization.one:
        return 'mikrosekunda';
      case CzechDurationLocalePluralization.few:
        return 'mikrosekundy';
      case CzechDurationLocalePluralization.many:
        return 'mikrosekund';
    }
  }
}
