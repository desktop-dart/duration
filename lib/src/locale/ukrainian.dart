part of duration.locale;

class UkrainianDurationLocale extends DurationLocale {
  const UkrainianDurationLocale();

  String _pickNoun(int amount, String nominativeSingle, String genitiveSingle,
      String genitivePlural) {
    final lastTwoDigits = amount % 100;
    final lastDigit = amount % 10;

    if (lastTwoDigits >= 11 && lastTwoDigits <= 20) {
      return genitivePlural;
    }

    if (lastDigit == 1) {
      return nominativeSingle;
    } else if (lastDigit >= 2 && lastDigit <= 4) {
      return genitiveSingle;
    } else {
      return genitivePlural;
    }
  }

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'р';
    }
    return _pickNoun(amount, 'рік', 'роки', 'років');
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'міс';
    }
    return _pickNoun(amount, 'місяць', 'місяці', 'місяців');
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'тижд';
    }
    return _pickNoun(amount, 'тиждень', 'тижні', 'тижнів');
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'д';
    }
    return _pickNoun(amount, 'день', 'дні', 'днів');
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'год';
    }
    return _pickNoun(amount, 'година', 'години', 'годин');
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'хв';
    }
    return _pickNoun(amount, 'хвилина', 'хвилини', 'хвилин');
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'с';
    }
    return _pickNoun(amount, 'секунда', 'секунди', 'секунд');
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мс';
    }
    return _pickNoun(amount, 'мілісекунда', 'мілісекунди', 'мілісекунд');
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'мкс';
    }
    return _pickNoun(amount, 'мікросекунда', 'мікросекунди', 'мікросекунд');
  }
}
