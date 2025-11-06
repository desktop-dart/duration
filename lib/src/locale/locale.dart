library duration.locale;

import 'package:duration/duration.dart';

part 'arabic.dart';
part 'chinese_hans.dart';
part 'chinese_hant.dart';
part 'czech.dart';
part 'dutch.dart';
part 'english.dart';
part 'english_us.dart';
part 'finnish.dart';
part 'french.dart';
part 'german.dart';
part 'greek.dart';
part 'hebrew.dart';
part 'indonesian.dart';
part 'italian.dart';
part 'japanese.dart';
part 'korean.dart';
part 'norwegian.dart';
part 'polish.dart';
part 'portuguese_br.dart';
part 'romanian.dart';
part 'russian.dart';
part 'spanish.dart';
part 'swedish.dart';
part 'thai.dart';
part 'turkish.dart';
part 'ukrainian.dart';
part 'vietnamese.dart';

/// Interface to print time units for different locale
abstract class DurationLocale {
  const DurationLocale();

  String get defaultSpacer => '\u{00A0}';

  String get abbreviatedSpacer => '\u{00A0}';

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

  String inUnit(DurationTersity unit, int amount, [bool abbreviated = true]) {
    switch (unit) {
      case DurationTersity.week:
        return week(amount, abbreviated);
      case DurationTersity.day:
        return day(amount, abbreviated);
      case DurationTersity.hour:
        return hour(amount, abbreviated);
      case DurationTersity.minute:
        return minute(amount, abbreviated);
      case DurationTersity.second:
        return second(amount, abbreviated);
      case DurationTersity.millisecond:
        return millisecond(amount, abbreviated);
      case DurationTersity.microsecond:
        return microseconds(amount, abbreviated);
      default:
        throw UnsupportedError('unsupported duration unit: $unit');
    }
  }

  static DurationLocale? fromLanguageCode(String languageCode) {
    return _locales[languageCode];
  }
}

/// [DurationLocale] for Arabic language
const ArabicDurationLocale arabicLocale = ArabicDurationLocale();

/// [DurationLocale] for Chinese (Simplified) language
const ChineseSimplifiedDurationLocale chineseSimplifiedDurationLocale =
    ChineseSimplifiedDurationLocale();

ChineseSimplifiedDurationLocale get chineseDurationLocale =>
    chineseSimplifiedDurationLocale;

/// [DurationLocale] for Chinese (Traditional) language
const ChineseTraditionalDurationLocale chineseTraditionalLocale =
    ChineseTraditionalDurationLocale();

/// [DurationLocale] for Czech language
const CzechDurationLocale czechLocale = CzechDurationLocale();

/// [DurationLocale] for Dutch language
const DutchDurationLocale dutchLocale = DutchDurationLocale();

/// [DurationLocale] for English language
const EnglishDurationLocale englishLocale = EnglishDurationLocale();

/// [DurationLocale] for US English language
const EnglishUSDurationLocale englishUSLocale = EnglishUSDurationLocale();

/// [DurationLocale] for Finnish language
const FinnishDurationLocale finnishLocale = FinnishDurationLocale();

/// [DurationLocale] for French language
const FrenchDurationLocale frenchLocale = FrenchDurationLocale();

/// [DurationLocale] for German language
const GermanDurationLocale germanLocale = GermanDurationLocale();

/// [DurationLocale] for Greek language
const GreekDurationLocale greekLocale = GreekDurationLocale();

/// [DurationLocale] for Hebrew language
const HebrewDurationLocale hebrewLocale = HebrewDurationLocale();

/// [DurationLocale] for Indonesian language
const IndonesianDurationLocale indonesianLocale = IndonesianDurationLocale();

/// [DurationLocale] for Italian language
const ItalianDurationLocale italianLocale = ItalianDurationLocale();

/// [DurationLocale] for Japanese language
const JapaneseDurationLocale japaneseLocale = JapaneseDurationLocale();

/// [DurationLocale] for Korean language
const KoreanDurationLocale koreanLocale = KoreanDurationLocale();

/// [DurationLocale] for Norwegian language
const NorwegianDurationLanguage norwegianLocale = NorwegianDurationLanguage();

/// [DurationLocale] for Polish language
const PolishDurationLocale polishLocale = PolishDurationLocale();

/// [DurationLocale] for Portuguese language
const PortugueseBRDurationLanguage portugueseBrLocale =
    PortugueseBRDurationLanguage();

/// [DurationLocale] for Romanian language
const RomanianDurationLocale romanianLocale = RomanianDurationLocale();

/// [DurationLocale] for Russian language
const RussianDurationLanguage russianLocale = RussianDurationLanguage();

/// [DurationLocale] for Spanish language
const SpanishDurationLanguage spanishLocale = SpanishDurationLanguage();

/// [DurationLocale] for Swedish language
const SwedishDurationLanguage swedishLocale = SwedishDurationLanguage();

/// [DurationLocale] for Thai language
const ThaiDurationLocale thaiLocale = ThaiDurationLocale();

/// [DurationLocale] for Turkish language
const TurkishDurationLocale turkishLocale = TurkishDurationLocale();

///[DurationLocale] for Ukrainian language
const UkrainianDurationLocale ukrainianLocale = UkrainianDurationLocale();

///[DurationLocale] for Vietnamese language
const VietnameseDurationLocale vietnameseLocale = VietnameseDurationLocale();

const _locales = <String, DurationLocale>{
  'ar': arabicLocale,
  'cs': czechLocale,
  'de': germanLocale,
  'el': greekLocale,
  'en': englishLocale,
  'en_US': englishUSLocale,
  'es': spanishLocale,
  'fi': finnishLocale,
  'fr': frenchLocale,
  'he': hebrewLocale,
  'id': indonesianLocale,
  'it': italianLocale,
  'ja': japaneseLocale,
  'ko': koreanLocale,
  'nb': norwegianLocale,
  'nl': dutchLocale,
  'pl': polishLocale,
  'pt': portugueseBrLocale,
  'ro': romanianLocale,
  'ru': russianLocale,
  'sv': swedishLocale,
  'th': thaiLocale,
  'tr': turkishLocale,
  'uk': ukrainianLocale,
  'vi': vietnameseLocale,
  'zh': chineseSimplifiedDurationLocale,
  'zh_Hant': chineseTraditionalLocale,
};
