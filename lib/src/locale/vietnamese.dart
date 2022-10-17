part of duration.locale;

class VietnameseDurationLocale extends DurationLocale {
  const VietnameseDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    return 'năm';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    return 'tháng';
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    return 'tuần';
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    return 'ngày';
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    return 'giờ';
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    return 'phút';
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return 'giây';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return 'mili giây';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return 'micro giây';
  }
}
