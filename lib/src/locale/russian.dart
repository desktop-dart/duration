part of duration.locale;

class RussianDurationLanguage implements DurationLocale {
  const RussianDurationLanguage();

  String _russianStr(int amount, String first, String second, String third) {
    final int lastDigit = amount % 10;
    if (lastDigit == 0 ||
        (amount >= 11 && amount <= 14) ||
        amount == 111 ||
        amount == 913) return third;
    if (lastDigit == 1) return first;
    if (lastDigit <= 4) return second;
    return third;
  }

  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'г';
    } else {
      return _russianStr(amount, 'год', 'года', 'лет');
    }
  }

  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мес';
    } else {
      return _russianStr(amount, 'месяц', 'месяца', 'месяцев');
    }
  }

  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'нед';
    } else {
      return _russianStr(amount, 'неделя', 'недели', 'недель');
    }
  }

  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'д';
    } else {
      return _russianStr(amount, 'день', 'дня', 'дней');
    }
  }

  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ч';
    } else {
      return _russianStr(amount, 'час', 'часа', 'часов');
    }
  }

  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'м';
    } else {
      return _russianStr(amount, 'минута', 'минуты', 'минут');
    }
  }

  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'c';
    } else {
      return _russianStr(amount, 'секунда', 'секунды', 'секунд');
    }
  }

  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мс';
    } else {
      return _russianStr(amount, 'миллисекунда', 'миллисекунды', 'миллисекунд');
    }
  }

  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мкс';
    } else {
      return _russianStr(amount, 'микросекунда', 'микросекунды', 'микросекунд');
    }
  }
}
