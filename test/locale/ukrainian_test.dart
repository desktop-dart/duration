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
        '1 тиждень 1 день 1 година 1 хвилина 1 секунда 1 мілісекунда 1 мікросекунда',
      );
      expect(
        prettyDuration(dur21,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '21 день 21 година 21 хвилина 21 секунда 21 мілісекунда 21 мікросекунда',
      );
      expect(
        prettyDuration(dur201,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '201 день 21 година 21 хвилина 21 секунда 201 мілісекунда 201 мікросекунда',
      );
      expect(prettyDuration(dur21W, locale: locale, first: true), '21 тиждень');
      expect(
          prettyDuration(dur201W, locale: locale, first: true), '201 тиждень');
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
        '2 тижні 2 дні 2 години 2 хвилини 2 секунди 2 мілісекунди 2 мікросекунди',
      );
      expect(
        prettyDuration(dur4,
            locale: locale, tersity: DurationTersity.microsecond),
        '4 тижні 4 дні 4 години 4 хвилини 4 секунди 4 мілісекунди 4 мікросекунди',
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
        '0 мікросекунд',
      );
      expect(
        prettyDuration(dur5,
            locale: locale, tersity: DurationTersity.microsecond),
        '5 тижнів 5 днів 5 годин 5 хвилин 5 секунд 5 мілісекунд 5 мікросекунд',
      );
      expect(
        prettyDuration(dur9,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '9 днів 9 годин 9 хвилин 9 секунд 9 мілісекунд 9 мікросекунд',
      );
      expect(
        prettyDuration(dur29,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '29 днів 9 годин 29 хвилин 29 секунд 29 мілісекунд 29 мікросекунд',
      );
      expect(
        prettyDuration(dur209,
            locale: locale,
            upperTersity: DurationTersity.day,
            tersity: DurationTersity.microsecond),
        '209 днів 9 годин 29 хвилин 29 секунд 209 мілісекунд 209 мікросекунд',
      );
    });

    test('Genitive plural edge case - number is equal to or ends with 11 to 20',
        () {
      expect(prettyDuration(const Duration(seconds: 11), locale: locale),
          '11 секунд');
      expect(prettyDuration(const Duration(seconds: 12), locale: locale),
          '12 секунд');
      expect(prettyDuration(const Duration(seconds: 13), locale: locale),
          '13 секунд');
      expect(prettyDuration(const Duration(seconds: 14), locale: locale),
          '14 секунд');
      expect(prettyDuration(const Duration(seconds: 15), locale: locale),
          '15 секунд');
      expect(prettyDuration(const Duration(seconds: 16), locale: locale),
          '16 секунд');
      expect(prettyDuration(const Duration(seconds: 17), locale: locale),
          '17 секунд');
      expect(prettyDuration(const Duration(seconds: 18), locale: locale),
          '18 секунд');
      expect(prettyDuration(const Duration(seconds: 19), locale: locale),
          '19 секунд');
      expect(prettyDuration(const Duration(seconds: 20), locale: locale),
          '20 секунд');
    });
  });
}
