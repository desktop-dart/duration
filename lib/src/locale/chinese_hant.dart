part of duration.locale;

class ChineseTraditionalDurationLocale extends DurationLocale {
  const ChineseTraditionalDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    return '年';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    return '月';
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    return '週';
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    return '日';
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return '時';
    } else {
      return '小時';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return '分鐘';
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return '秒';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return '毫秒';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return '微秒';
  }
}
