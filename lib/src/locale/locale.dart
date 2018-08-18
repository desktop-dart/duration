library duration.locale;

part 'english.dart';
part 'spanish.dart';
part 'swedish.dart';

abstract class DurationLocale {
  String year(int amount, [bool abbreviated = true]);

  String month(int amount, [bool abbreviated = true]);

  String week(int amount, [bool abbreviated = true]);

  String day(int amount, [bool abbreviated = true]);

  String hour(int amount, [bool abbreviated = true]);

  String minute(int amount, [bool abbreviated = true]);

  String second(int amount, [bool abbreviated = true]);

  String millisecond(int amount, [bool abbreviated = true]);

  String microseconds(int amount, [bool abbreviated = true]);
}

const EnglishDurationLocale englishLocale = const EnglishDurationLocale();

const SpanishDurationLanguage spanishLocale = const SpanishDurationLanguage();

const SwedishDurationLanguage swedishLocale = const SwedishDurationLanguage();
