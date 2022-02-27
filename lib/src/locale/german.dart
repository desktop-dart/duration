part of duration.locale;

class GermanDurationLocale extends DurationLocale {
  const GermanDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'J';
    } else {
      return 'Jahr' + (amount > 1 ? 'e' : '');
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'M';
    } else {
      return 'Monat' + (amount > 1 ? 'e' : '');
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'W';
    } else {
      return 'Woche' + (amount > 1 ? 'n' : '');
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'T';
    } else {
      return 'Tag' + (amount > 1 ? 'e' : '');
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Std';
    } else {
      return 'Stunde' + (amount > 1 ? 'n' : '');
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Min';
    } else {
      return 'Minute' + (amount > 1 ? 'n' : '');
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Sek';
    } else {
      return 'Sekunde' + (amount > 1 ? 'n' : '');
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Ms';
    } else {
      return 'Millisekunde' + (amount > 1 ? 'n' : '');
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'Us';
    } else {
      return 'Mikrosekunde' + (amount > 1 ? 'n' : '');
    }
  }
}
