library duration.locale;

part 'english.dart';
part 'french.dart';
part 'hebrew.dart';
part 'polish.dart';
part 'portuguese_br.dart';
part 'russian.dart';
part 'spanish.dart';
part 'swedish.dart';
part 'norwegian.dart';
part 'turkish.dart';
part 'italian.dart';
part 'german.dart';
part 'hebrew.dart';
part 'dutch.dart';
part 'chinese_hans.dart';
part 'chinese_hant.dart';
part 'thai.dart';
part 'romanian.dart';
part 'arabic.dart';
part 'korean.dart';
part 'indonesian.dart';
part 'czech.dart';

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

  static DurationLocale? fromLanguageCode(String languageCode) {
    return _locales[languageCode];
  }
}

/// [DurationLocale] for English language
const EnglishDurationLocale englishLocale = EnglishDurationLocale();

/// [DurationLocale] for French language
const FrenchDurationLocale frenchLocale = FrenchDurationLocale();

/// [DurationLocale] for Hebrew language
const HebrewDurationLocale hebrewLocale = HebrewDurationLocale();

/// [DurationLocale] for Polish language
const PolishDurationLocale polishLocale = PolishDurationLocale();

/// [DurationLocale] for Portuguese language
const PortugueseBRDurationLanguage portugueseBrLocale =
    PortugueseBRDurationLanguage();

/// [DurationLocale] for Russian language
const RussianDurationLanguage russianLocale = RussianDurationLanguage();

/// [DurationLocale] for Spanish language
const SpanishDurationLanguage spanishLocale = SpanishDurationLanguage();

/// [DurationLocale] for Swedish language
const SwedishDurationLanguage swedishLocale = SwedishDurationLanguage();

/// [DurationLocale] for Norwegian language
const NorwegianDurationLanguage norwegianLocale = NorwegianDurationLanguage();

/// [DurationLocale] for Turkish language
const TurkishDurationLocale turkishLocale = TurkishDurationLocale();

/// [DurationLocale] for Italian language
const ItalianDurationLocale italianLocale = ItalianDurationLocale();

/// [DurationLocale] for German language
const GermanDurationLocale germanLocale = GermanDurationLocale();

/// [DurationLocale] for Hebrew language
const HebrewDurationLocale hebrewLocale = HebrewDurationLocale();

/// [DurationLocale] for Dutch language
const DutchDurationLocale dutchLocale = DutchDurationLocale();

/// [DurationLocale] for Chinese (Simplified) language
const ChineseSimplifiedDurationLocale chineseSimplifiedDurationLocale =
    ChineseSimplifiedDurationLocale();

ChineseSimplifiedDurationLocale get chineseDurationLocale =>
    chineseSimplifiedDurationLocale;

/// [DurationLocale] for Chinese (Traditional) language
const ChineseTraditionalDurationLocale chineseTraditionalLocale =
    ChineseTraditionalDurationLocale();

/// [DurationLocale] for Thai language
const ThaiDurationLocale thaiLocale = ThaiDurationLocale();

/// [DurationLocale] for Indonesian language
const IndonesianDurationLocale indonesianLocale = IndonesianDurationLocale();

/// [DurationLocale] for Korean language
const KoreanDurationLocale koreanLocale = KoreanDurationLocale();

/// [DurationLocale] for Romanian language
const RomanianDurationLocale romanianLocale = RomanianDurationLocale();

/// [DurationLocale] for Arabic language
const ArabicDurationLocale arabicLocale = ArabicDurationLocale();

/// [DurationLocale] for Czech language
const CzechDurationLocale czechLocale = CzechDurationLocale();

const _locales = <String, DurationLocale>{
  'en': englishLocale,
  'fr': frenchLocale,
  'he': hebrewLocale,
  'pl': polishLocale,
  'pt': portugueseBrLocale,
  'ru': russianLocale,
  'es': spanishLocale,
  'sv': swedishLocale,
  'nb': norwegianLocale,
  'tr': turkishLocale,
  'it': italianLocale,
  'de': germanLocale,
  'he': hebrewLocale,
  'nl': dutchLocale,
  'zh': chineseSimplifiedDurationLocale,
  'zh_Hant': chineseTraditionalLocale,
  'th': thaiLocale,
  'id': indonesianLocale,
  'ko': koreanLocale,
  'ro': romanianLocale,
  'ar': arabicLocale,
  'cz': czechLocale,
};
