library duration.locale;

part 'english.dart';
part 'french.dart';
part 'portuguese_br.dart';
part 'russian.dart';
part 'spanish.dart';
part 'swedish.dart';
part 'turkish.dart';

/// Interface to print time units for different locale
abstract class DurationLocale {
  /// Print [amount] years for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String year(int amount, [bool abbreviated = true]);

  /// Print [amount] month for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String month(int amount, [bool abbreviated = true]);

  /// Print [amount] week for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String week(int amount, [bool abbreviated = true]);

  /// Print [amount] day for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String day(int amount, [bool abbreviated = true]);

  /// Print [amount] hour for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String hour(int amount, [bool abbreviated = true]);

  /// Print [amount] minute for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String minute(int amount, [bool abbreviated = true]);

  /// Print [amount] second for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String second(int amount, [bool abbreviated = true]);

  /// Print [amount] millisecond for the corresponding locale. The unit is abbreviated
  /// if [abbreviated] is set to true.
  String millisecond(int amount, [bool abbreviated = true]);

  /// Print [amount] microseconds for the corresponding locale. The unit is
  /// abbreviated if [abbreviated] is set to true.
  String microseconds(int amount, [bool abbreviated = true]);
}

/// [DurationLocale] for English language
const EnglishDurationLocale englishLocale = const EnglishDurationLocale();

/// [DurationLocale] for French language
const FrenchDurationLocale frenchLocale = const FrenchDurationLocale();

/// [DurationLocale] for Portuguese language
const PortugueseBRDurationLanguage portugueseBrLocale =
    const PortugueseBRDurationLanguage();

/// [DurationLocale] for Russian language
const RussianDurationLanguage russianLocale = const RussianDurationLanguage();

/// [DurationLocale] for Spanish language
const SpanishDurationLanguage spanishLocale = const SpanishDurationLanguage();

/// [DurationLocale] for Swedish language
const SwedishDurationLanguage swedishLocale = const SwedishDurationLanguage();

/// [DurationLocale] for Turkish language
const TurkishDurationLocale turkishLocale = const TurkishDurationLocale();

const _locales = <String, DurationLocale>{
  'en': englishLocale,
  'fr': frenchLocale,
  'pt': portugueseBrLocale,
  'ru': russianLocale,
  'es': spanishLocale,
  'sv': swedishLocale,
  'tr': turkishLocale,
};

DurationLocale getLocaleFromLanguageCode(String languageCode) {
  return _locales[languageCode];
}
