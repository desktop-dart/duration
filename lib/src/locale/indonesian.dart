part of duration.locale;

class IndonesianDurationLocale implements DurationLocale {
  const IndonesianDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'thn';
    } else {
      return 'tahun' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'bln';
    } else {
      return 'bulan' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mgg';
    } else {
      return 'minggu' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'hr';
    } else {
      return 'hari' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'j';
    } else {
      return 'jam' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'm';
    } else {
      return 'menit' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'd';
    } else {
      return 'detik' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'milidetik';
    } else {
      return 'milidetik' + (amount > 1 ? '' : ''); //no pluralization
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'mikrodetik';
    } else {
      return 'mikrodetik' + (amount > 1 ? 's' : ''); //no pluralization
    }
  }
}
