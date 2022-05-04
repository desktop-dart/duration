part of duration.locale;

class JapaneseDurationLocale extends DurationLocale {
  const JapaneseDurationLocale();

  @override
  String get defaultSpacer => '';

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
      return '時間';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return '分';
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return '秒';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return 'ミリ秒';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return 'マイクロ秒';
  }
}
