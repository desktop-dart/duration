part of duration.locale;

class PortugueseBRDurationLanguage implements DurationLocale {
  const PortugueseBRDurationLanguage();

  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'a';
    else
      return 'ano' + (amount > 1 ? 's' : '');
  }

  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'mês';
    else
      return 'mês' + (amount > 1 ? 'es' : '');
  }

  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'sem';
    else
      return 'semana' + (amount > 1 ? 's' : '');
  }

  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'd';
    else
      return 'día' + (amount > 1 ? 's' : '');
  }

  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'h';
    else
      return 'hora' + (amount > 1 ? 's' : '');
  }

  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'm';
    else
      return 'minuto' + (amount > 1 ? 's' : '');
  }

  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 's';
    else
      return 'segundo' + (amount > 1 ? 's' : '');
  }

  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'ms';
    else
      return 'milisegundo' + (amount > 1 ? 's' : '');
  }

  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'us';
    else
      return 'microsegundo' + (amount > 1 ? 's' : '');
  }
}
