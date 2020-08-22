part of duration.locale;

class ThaiDurationLocale implements DurationLocale {
  const ThaiDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    return 'ปี';
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    return 'เดือน';
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    return 'สัปดาห์';
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    return 'วัน';
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ชม.';
    } else {
      return 'ชั่วโมง';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'น.';
    } else {
      return 'นาที';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    return 'วินาที';
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    return 'มิลลิวินาที';
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    return 'ไมโครวินาที';
  }
}
