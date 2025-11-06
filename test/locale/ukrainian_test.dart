import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:test/test.dart';

void main() {
  group('Ukrainian locale test', () {
    const locale = UkrainianDurationLocale();
    test('Nominative Singular - number ends with 1', () {
      const dur1 = Duration(
          days: 8,
          hours: 1,
          minutes: 1,
          seconds: 1,
          milliseconds: 1,
          microseconds: 1);
      const dur21 = Duration(
          days: 21,
          hours: 21,
          minutes: 21,
          seconds: 21,
          milliseconds: 21,
          microseconds: 21);
      const dur201 = Duration(
          days: 201,
          hours: 21,
          minutes: 21,
          seconds: 21,
          milliseconds: 201,
          microseconds: 201);
      const dur21W = Duration(days: 21 * 7);
      const dur201W = Duration(days: 201 * 7);

      expect(
        prettyDuration(dur1,
            locale: locale, tersity: DurationTersity.microsecond),
        '1${'\u{00A0}'}тиждень 1${'\u{00A0}'}день 1${'\u{00A0}'}година 1${'\u{00A0}'}хвилина 1${'\u{00A0}'}секунда 1${'\u{00A0}'}мілісекунда 1${'\u{00A0}'}мікросекунда',
      );
      expect(
        prettyDuration(dur21,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '21${'\u{00A0}'}день 21${'\u{00A0}'}година 21${'\u{00A0}'}хвилина 21${'\u{00A0}'}секунда 21${'\u{00A0}'}мілісекунда 21${'\u{00A0}'}мікросекунда',
      );
      expect(
        prettyDuration(dur201,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '201${'\u{00A0}'}день 21${'\u{00A0}'}година 21${'\u{00A0}'}хвилина 21${'\u{00A0}'}секунда 201${'\u{00A0}'}мілісекунда 201${'\u{00A0}'}мікросекунда',
      );
      expect(prettyDuration(dur21W, locale: locale, maxUnits: 1),
          '21${'\u{00A0}'}тиждень');
      expect(prettyDuration(dur201W, locale: locale, maxUnits: 1),
          '201${'\u{00A0}'}тиждень');
    });
    test('Genitive singular - number ends with 2,3 or 4', () {
      const dur2 = Duration(
          days: 16,
          hours: 2,
          minutes: 2,
          seconds: 2,
          milliseconds: 2,
          microseconds: 2);
      const dur4 = Duration(
          days: 32,
          hours: 4,
          minutes: 4,
          seconds: 4,
          milliseconds: 4,
          microseconds: 4);
      expect(
        prettyDuration(dur2,
            locale: locale, tersity: DurationTersity.microsecond),
        '2${'\u{00A0}'}тижні 2${'\u{00A0}'}дні 2${'\u{00A0}'}години 2${'\u{00A0}'}хвилини 2${'\u{00A0}'}секунди 2${'\u{00A0}'}мілісекунди 2${'\u{00A0}'}мікросекунди',
      );
      expect(
        prettyDuration(dur4,
            locale: locale, tersity: DurationTersity.microsecond),
        '4${'\u{00A0}'}тижні 4${'\u{00A0}'}дні 4${'\u{00A0}'}години 4${'\u{00A0}'}хвилини 4${'\u{00A0}'}секунди 4${'\u{00A0}'}мілісекунди 4${'\u{00A0}'}мікросекунди',
      );
    });
    test('Genitive plural - number ends with 5,6,7,8,9,0', () {
      const dur0 = Duration.zero;
      const dur5 = Duration(
          days: 40,
          hours: 5,
          minutes: 5,
          seconds: 5,
          milliseconds: 5,
          microseconds: 5);
      const dur9 = Duration(
          days: 9,
          hours: 9,
          minutes: 9,
          seconds: 9,
          milliseconds: 9,
          microseconds: 9);
      const dur29 = Duration(
          days: 29,
          hours: 9,
          minutes: 29,
          seconds: 29,
          milliseconds: 29,
          microseconds: 29);
      const dur209 = Duration(
          days: 209,
          hours: 9,
          minutes: 29,
          seconds: 29,
          milliseconds: 209,
          microseconds: 209);

      expect(
        prettyDuration(dur0,
            locale: locale, tersity: DurationTersity.microsecond),
        '0${'\u{00A0}'}мікросекунд',
      );
      expect(
        prettyDuration(dur5,
            locale: locale, tersity: DurationTersity.microsecond),
        '5${'\u{00A0}'}тижнів 5${'\u{00A0}'}днів 5${'\u{00A0}'}годин 5${'\u{00A0}'}хвилин 5${'\u{00A0}'}секунд 5${'\u{00A0}'}мілісекунд 5${'\u{00A0}'}мікросекунд',
      );
      expect(
        prettyDuration(dur9,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '9${'\u{00A0}'}днів 9${'\u{00A0}'}годин 9${'\u{00A0}'}хвилин 9${'\u{00A0}'}секунд 9${'\u{00A0}'}мілісекунд 9${'\u{00A0}'}мікросекунд',
      );
      expect(
        prettyDuration(dur29,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '29${'\u{00A0}'}днів 9${'\u{00A0}'}годин 29${'\u{00A0}'}хвилин 29${'\u{00A0}'}секунд 29${'\u{00A0}'}мілісекунд 29${'\u{00A0}'}мікросекунд',
      );
      expect(
        prettyDuration(dur209,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '209${'\u{00A0}'}днів 9${'\u{00A0}'}годин 29${'\u{00A0}'}хвилин 29${'\u{00A0}'}секунд 209${'\u{00A0}'}мілісекунд 209${'\u{00A0}'}мікросекунд',
      );
    });

    test('Genitive plural edge case - number is equal to or ends with 11 to 20',
        () {
      expect(prettyDuration(const Duration(seconds: 11), locale: locale),
          '11${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 12), locale: locale),
          '12${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 13), locale: locale),
          '13${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 14), locale: locale),
          '14${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 15), locale: locale),
          '15${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 16), locale: locale),
          '16${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 17), locale: locale),
          '17${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 18), locale: locale),
          '18${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 19), locale: locale),
          '19${'\u{00A0}'}секунд');
      expect(prettyDuration(const Duration(seconds: 20), locale: locale),
          '20${'\u{00A0}'}секунд');
    });
  });
}
