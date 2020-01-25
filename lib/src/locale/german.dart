part of duration.locale;

class GermanDurationLocale implements DurationLocale {
  const GermanDurationLocale();

  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'J';
    else
      return 'Jahr' + (amount > 1 ? 'e' : '');
  }

  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'M';
    else
      return 'Monat' + (amount > 1 ? 'e' : '');
  }

  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'W';
    else
      return 'Woche' + (amount > 1 ? 'n' : '');
  }

  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'T';
    else
      return 'Tag' + (amount > 1 ? 'e' : '');
  }

  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'Std';
    else
      return 'Stunde' + (amount > 1 ? 'n' : '');
  }

  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'Min';
    else
      return 'Minute' + (amount > 1 ? 'n' : '');
  }

  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'Sek';
    else
      return 'Sekunde' + (amount > 1 ? 'n' : '');
  }

  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'Ms';
    else
      return 'Millisekunde' + (amount > 1 ? 'n' : '');
  }

  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'Us';
    else
      return 'Mikrosekunde' + (amount > 1 ? 'n' : '');
  }
}
