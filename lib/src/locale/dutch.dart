part of duration.locale;

class DutchDurationLocale implements DurationLocale {
  const DutchDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'j';
    } else {
      return amount == 1 ? 'jaar' : 'jaren';
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'maand${amount != 1 ? 'en' : ''}';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'w';
    } else {
      return amount == 1 ? 'week' : 'weken';
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return 'dag${amount != 1 ? 'en' : ''}';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'u';
    } else {
      return amount == 1 ? 'uur' : 'uren';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'min';
    } else {
      return amount == 1 ? 'minuut' : 'minuten';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 's';
    } else {
      return 'seconde${amount != 1 ? 'n' : ''}';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ms';
    } else {
      return 'milliseconde${amount != 1 ? 'n' : ''}';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'us';
    } else {
      return 'microseconde${amount != 1 ? 'n' : ''}';
    }
  }
}
