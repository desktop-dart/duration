import 'package:duration/duration.dart';
import 'package:test/test.dart';

void main() {
  group('parseTime', () {
    test('time', () {
      expect(parseTime('245:09:08.007006').toString(), '245:09:08.007006');
    });
    test('time without microsecods', () {
      expect(parseTime('245:09:08.12').toString(), '245:09:08.120000');
    });
    test('Negative', () {
      expect(parseTime('-245:09:08.007006').toString(), '-245:09:08.007006');
    });
  });

  group('parseDuration', () {
    test('duration', () {
      expect((parseDuration('20d,10h,30m')).toString(), '490:30:00.000000');
    });

    test('duration weeks', () {
      expect((parseDuration('2w,20d,10h,30m')).toString(), '826:30:00.000000');
    });
    test('Negative', () {
      expect(parseDuration('-20d,10h,30m').toString(), '-490:30:00.000000');
    });
  });
}
