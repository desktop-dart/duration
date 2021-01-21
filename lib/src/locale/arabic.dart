part of duration.locale;

class ArabicDurationLocale implements DurationLocale {
  const ArabicDurationLocale();

  @override
  String year(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ع';
    } else {
      if (amount == 1) {
        return 'عام';
      } else if (amount == 2) {
        return 'عامين';
      } else if (amount > 2 && amount < 11) {
        return 'اعوام';
      } else if (amount > 10) {
        return 'عام';
      }

      return 'اعوام';
    }
  }

  @override
  String month(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ش';
    } else {
      if (amount == 1) {
        return 'شهر';
      } else if (amount == 2) {
        return 'شهرين';
      } else if (amount > 2 && amount < 11) {
        return 'اشهر';
      } else if (amount > 10) {
        return 'شهر';
      }
      return 'شهور';
    }
  }

  @override
  String week(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'أ';
    } else {
      if (amount == 1) {
        return 'اسبوع';
      } else if (amount == 2) {
        return 'اسبوعين';
      } else if (amount > 2 && amount < 11) {
        return 'اسابيع';
      } else if (amount > 10) {
        return 'اسبوع';
      }
      return 'اسابيع';
    }
  }

  @override
  String day(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ي';
    } else {
      if (amount == 1) {
        return 'يوم';
      } else if (amount == 2) {
        return 'يومين';
      } else if (amount > 2 && amount < 11) {
        return 'ايام';
      } else if (amount > 10) {
        return 'يوم';
      }
      return 'ايام';
    }
  }

  @override
  String hour(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'س';
    } else {
      if (amount == 1) {
        return 'ساعة';
      } else if (amount == 2) {
        return 'ساعتين';
      } else if (amount > 2 && amount < 11) {
        return 'ساعات';
      } else if (amount > 10) {
        return 'ساعة';
      }
      return 'ساعات';
    }
  }

  @override
  String minute(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'د';
    } else {
      if (amount == 1) {
        return 'دقيقة';
      } else if (amount == 2) {
        return 'دقيقتين';
      } else if (amount > 2 && amount < 11) {
        return 'دقائق';
      } else if (amount > 10) {
        return 'دقيقة';
      }
      return 'دقائق';
    }
  }

  @override
  String second(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ث';
    } else {
      if (amount == 1) {
        return 'ثانية';
      } else if (amount == 2) {
        return 'ثانيتين';
      } else if (amount > 2 && amount < 11) {
        return 'ثواني';
      } else if (amount > 10) {
        return 'ثانية';
      }
      return 'ثواني';
    }
  }

  @override
  String millisecond(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'م ث';
    } else {
      if (amount == 1) {
        return 'ميلى ثانية';
      } else if (amount == 2) {
        return 'ميلي ثانيتين';
      } else if (amount > 2 && amount < 11) {
        return 'ميلي ثواني';
      } else if (amount > 10) {
        return 'ميلي ثانية';
      }
      return 'ميلي ثواني';
    }
  }

  @override
  String microseconds(int amount, [bool abbreviated = true]) {
    if (abbreviated) {
      return 'ميكرو ث';
    } else {
      if (amount == 1) {
        return 'ميكرو ثانية';
      } else if (amount == 2) {
        return 'ميكرو ثانيتيتن';
      } else if (amount > 2 && amount < 11) {
        return 'ميكرو ثواني';
      } else if (amount > 10) {
        return 'ميكرو ثواني';
      }
      return 'ميكرو ثواني';
    }
  }
}
