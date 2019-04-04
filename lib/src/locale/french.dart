part of duration.locale;

class FrenchDurationLocale implements DurationLocale {
  const FrenchDurationLocale();

  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'an';
    else
      return 'année' + (amount > 1 ? 's' : '');
  }

  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'mo';
    else
      return 'mois';
  }

  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'sem';
    else
      return 'semaine' + (amount > 1 ? 's' : '');
  }

  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'j';
    else
      return 'jour' + (amount > 1 ? 's' : '');
  }

  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'h';
    else
      return 'heure' + (amount > 1 ? 's' : '');
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
      return 'seconde' + (amount > 1 ? 's' : '');
  }

  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'ms';
    else
      return 'milliseconde' + (amount > 1 ? 's' : '');
  }

  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'us';
    else
      return 'microseconde' + (amount > 1 ? 's' : '');
  }
}
