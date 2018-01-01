part of duration.locale;

class SwedishDurationLanguage implements DurationLocale {
  const SwedishDurationLanguage();

  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'y';
    else
      return 'år';
  }

  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'mon';
    else
      return 'månad' + (amount > 1 ? 'er' : '');
  }

  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'w';
    else
      return 'veck' + (amount > 1 ? 'or' : 'a');
  }

  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'd';
    else
      return 'dag' + (amount > 1 ? 'ar' : '');
  }

  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'h';
    else
      return 'timm' + (amount > 1 ? 'ar' : 'e');
  }

  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'm';
    else
      return 'minut' + (amount > 1 ? 'er' : '');
  }

  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 's';
    else
      return 'sekund' + (amount > 1 ? 'er' : '');
  }

  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'ms';
    else
      return 'millisekund' + (amount > 1 ? 'er' : '');
  }

  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated)
      return 'us';
    else
      return 'mikrosekund' + (amount > 1 ? 'er' : '');
  }
}