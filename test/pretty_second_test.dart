import 'package:duration/duration.dart';
import 'package:test/test.dart';

void main() {
  group('prettySecond', () {
    test('default', () {
      {
        final dur = Duration(microseconds: 0);
        expect(prettySeconds(dur), '0 microseconds');
      }

      {
        final dur = Duration(microseconds: 999);
        expect(prettySeconds(dur), '999 microseconds');
      }

      {
        final dur = Duration(microseconds: 1000);
        expect(prettySeconds(dur), '1 millisecond');
      }

      {
        final dur = Duration(microseconds: 5123);
        expect(prettySeconds(dur), '5.123 milliseconds');
      }

      {
        final dur = Duration(microseconds: 999555);
        expect(prettySeconds(dur), '999.555 milliseconds');
      }

      {
        final dur = Duration(microseconds: 5123456);
        expect(prettySeconds(dur), '5 seconds 123.456 milliseconds');
      }

      {
        final dur = Duration(microseconds: 124123456);
        expect(prettySeconds(dur), '124 seconds 123.456 milliseconds');
      }
    });
    test('Abbreviated', () {
      {
        final dur = Duration(microseconds: 0);
        expect(prettySeconds(dur, abbreviated: true), '0 us');
      }

      {
        final dur = Duration(microseconds: 999);
        expect(prettySeconds(dur, abbreviated: true), '999 us');
      }

      {
        final dur = Duration(microseconds: 1000);
        expect(prettySeconds(dur, abbreviated: true), '1 ms');
      }

      {
        final dur = Duration(microseconds: 5123);
        expect(prettySeconds(dur, abbreviated: true), '5.123 ms');
      }

      {
        final dur = Duration(microseconds: 999555);
        expect(prettySeconds(dur, abbreviated: true), '999.555 ms');
      }

      {
        final dur = Duration(microseconds: 5123456);
        expect(prettySeconds(dur, abbreviated: true), '5 s 123.456 ms');
      }

      {
        final dur = Duration(microseconds: 124123456);
        expect(prettySeconds(dur, abbreviated: true), '124 s 123.456 ms');
      }
    });
    test('terse', () {
      {
        final dur = Duration(microseconds: 0);
        expect(prettySeconds(dur, terse: true), '0 microseconds');
      }

      {
        final dur = Duration(microseconds: 999);
        expect(prettySeconds(dur, terse: true), '999 microseconds');
      }

      {
        final dur = Duration(microseconds: 1000);
        expect(prettySeconds(dur, terse: true), '1 millisecond');
      }

      {
        final dur = Duration(microseconds: 5123);
        expect(prettySeconds(dur, terse: true), '5 milliseconds');
      }

      {
        final dur = Duration(microseconds: 999555);
        expect(prettySeconds(dur, terse: true), '999 milliseconds');
      }

      {
        final dur = Duration(microseconds: 5123456);
        expect(prettySeconds(dur, terse: true), '5 seconds');
      }

      {
        final dur = Duration(microseconds: 124123456);
        expect(prettySeconds(dur, terse: true), '124 seconds');
      }
    });
  });
}
