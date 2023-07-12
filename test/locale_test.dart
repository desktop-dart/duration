import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:test/test.dart';

void main() {
  group('test by language', () {
    test('English', () {
      const locale = EnglishDurationLocale();
      const dur = Duration(days: 5, hours: 23);
      expect(
        prettyDuration(dur, locale: locale),
        '5 days 23 hours',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true),
        '5d, 23h',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true, delimiter: ' '),
        '5 d 23 h',
      );
    });

    test('Chinese', () {
      const locale = ChineseSimplifiedDurationLocale();
      const dur = Duration(days: 5, hours: 23);
      expect(
        prettyDuration(dur, locale: locale),
        '5日 23小时',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true),
        '5日, 23小时',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true, delimiter: ' '),
        '5日 23小时',
      );
    });

    test('Japanese', () {
      const locale = JapaneseDurationLocale();
      const dur = Duration(days: 5, hours: 23);
      expect(
        prettyDuration(dur, locale: locale),
        '5日 23時間',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true),
        '5日, 23時間',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true, delimiter: ' '),
        '5日 23時間',
      );
    });

    test('Korean', () {
      const locale = KoreanDurationLocale();
      const dur = Duration(days: 5, hours: 23);
      expect(
        prettyDuration(dur, locale: locale),
        '5일 23시간',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true),
        '5일, 23시간',
      );
      expect(
        prettyDuration(dur, locale: locale, abbreviated: true, delimiter: ' '),
        '5일 23시간',
      );
    });
  });
}
