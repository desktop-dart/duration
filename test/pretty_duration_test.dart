import 'package:duration/duration.dart';
import 'package:test/test.dart';

void main() {
  group('prettyDuration', () {
    test('default', () {
      {
        final dur = Duration(microseconds: 0);
        expect(prettyDuration(dur), '0 seconds');
      }

      {
        final dur = Duration(microseconds: 999);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '999 microseconds');
      }

      {
        final dur = Duration(microseconds: 1000);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '1 millisecond');
      }

      {
        final dur = Duration(milliseconds: 5);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '5 milliseconds');
      }

      {
        final dur = Duration(milliseconds: 999);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '999 milliseconds');
      }

      {
        final dur = Duration(milliseconds: 1000);
        expect(prettyDuration(dur), '1 second');
      }

      {
        final dur = Duration(seconds: 5);
        expect(prettyDuration(dur), '5 seconds');
      }

      {
        final dur = Duration(seconds: 59);
        expect(prettyDuration(dur), '59 seconds');
      }

      {
        final dur = Duration(seconds: 60);
        expect(prettyDuration(dur), '1 minute');
      }

      {
        final dur = Duration(minutes: 5);
        expect(prettyDuration(dur), '5 minutes');
      }

      {
        final dur = Duration(minutes: 59);
        expect(prettyDuration(dur), '59 minutes');
      }

      {
        final dur = Duration(minutes: 60);
        expect(prettyDuration(dur), '1 hour');
      }

      {
        final dur = Duration(hours: 5);
        expect(prettyDuration(dur), '5 hours');
      }

      {
        final dur = Duration(hours: 23);
        expect(prettyDuration(dur), '23 hours');
      }

      {
        final dur = Duration(hours: 24);
        expect(prettyDuration(dur), '1 day');
      }

      {
        final dur = Duration(days: 5);
        expect(prettyDuration(dur), '5 days');
      }

      {
        final dur = Duration(days: 7);
        expect(prettyDuration(dur), '1 week');
      }

      {
        final dur = Duration(days: 14);
        expect(prettyDuration(dur), '2 weeks');
      }
    });

    test('Abbreviated', () {
      {
        final dur = Duration(microseconds: 0);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '0us');
      }

      {
        final dur = Duration(microseconds: 999);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '999us');
      }

      {
        final dur = Duration(microseconds: 1000);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '1ms');
      }

      {
        final dur = Duration(milliseconds: 5);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '5ms');
      }

      {
        final dur = Duration(milliseconds: 999);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '999ms');
      }

      {
        final dur = Duration(milliseconds: 1000);
        expect(prettyDuration(dur, abbreviated: true), '1s');
      }

      {
        final dur = Duration(seconds: 5);
        expect(prettyDuration(dur, abbreviated: true), '5s');
      }

      {
        final dur = Duration(seconds: 59);
        expect(prettyDuration(dur, abbreviated: true), '59s');
      }

      {
        final dur = Duration(seconds: 60);
        expect(prettyDuration(dur, abbreviated: true), '1min');
      }

      {
        final dur = Duration(minutes: 5);
        expect(prettyDuration(dur, abbreviated: true), '5min');
      }

      {
        final dur = Duration(minutes: 59);
        expect(prettyDuration(dur, abbreviated: true), '59min');
      }

      {
        final dur = Duration(minutes: 60);
        expect(prettyDuration(dur, abbreviated: true), '1h');
      }

      {
        final dur = Duration(hours: 5);
        expect(prettyDuration(dur, abbreviated: true), '5h');
      }

      {
        final dur = Duration(hours: 23);
        expect(prettyDuration(dur, abbreviated: true), '23h');
      }

      {
        final dur = Duration(hours: 24);
        expect(prettyDuration(dur, abbreviated: true), '1d');
      }

      {
        final dur = Duration(days: 5);
        expect(prettyDuration(dur, abbreviated: true), '5d');
      }

      {
        final dur = Duration(days: 7);
        expect(prettyDuration(dur, abbreviated: true), '1w');
      }

      {
        final dur = Duration(days: 14);
        expect(prettyDuration(dur, abbreviated: true), '2w');
      }
    });

    test('Delimiter', () {
      expect(
        prettyDuration(aMinute * 10, delimiter: ', '),
        '10 minutes',
      );

      expect(
        prettyDuration(aMinute * 10 + aSecond * 5, delimiter: ', '),
        '10 minutes, 5 seconds',
      );

      expect(
        prettyDuration(anHour * 15 + aMinute * 10 + aSecond * 5,
            delimiter: ', '),
        '15 hours, 10 minutes, 5 seconds',
      );
    });

    test('Spacer', () {
      expect(
        prettyDuration(aMinute * 10, spacer: '_'),
        '10_minutes',
      );

      expect(
        prettyDuration(aMinute * 10 + aSecond * 5, spacer: '_'),
        '10_minutes 5_seconds',
      );

      expect(
        prettyDuration(anHour * 15 + aMinute * 10 + aSecond * 5, spacer: '_'),
        '15_hours 10_minutes 5_seconds',
      );
    });

    test('Conjugation', () {
      expect(
        prettyDuration(aMinute * 10, conjunction: ' and '),
        '10 minutes',
      );

      expect(
        prettyDuration(aMinute * 10 + aSecond * 5, conjunction: ' and '),
        '10 minutes and 5 seconds',
      );

      expect(
        prettyDuration(anHour * 15 + aMinute * 10 + aSecond * 5,
            conjunction: ' and '),
        '15 hours 10 minutes and 5 seconds',
      );

      expect(
        prettyDuration(anHour * 15 + aMinute * 10 + aSecond * 5,
            conjunction: ' and ', delimiter: ', '),
        '15 hours, 10 minutes and 5 seconds',
      );
    });

    test('Terse', () {
      final dur = Duration(
          days: 5,
          hours: 23,
          minutes: 59,
          seconds: 59,
          milliseconds: 999,
          microseconds: 999);

      expect(prettyDuration(dur, tersity: DurationTersity.day), '5 days');

      expect(prettyDuration(dur, tersity: DurationTersity.hour),
          '5 days 23 hours');

      expect(prettyDuration(dur, tersity: DurationTersity.minute),
          '5 days 23 hours 59 minutes');

      expect(prettyDuration(dur, tersity: DurationTersity.second),
          '5 days 23 hours 59 minutes 59 seconds');

      expect(prettyDuration(dur, tersity: DurationTersity.millisecond),
          '5 days 23 hours 59 minutes 59 seconds 999 milliseconds');

      expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
          '5 days 23 hours 59 minutes 59 seconds 999 milliseconds 999 microseconds');
    });

    test('Upper Tersity', () {
      final dur = Duration(days: 8);
      expect(prettyDuration(dur), '1 week 1 day');

      expect(prettyDuration(dur, upperTersity: DurationTersity.day), '8 days');

      expect(
          prettyDuration(dur, upperTersity: DurationTersity.hour), '192 hours');

      expect(prettyDuration(dur, upperTersity: DurationTersity.minute),
          '11520 minutes');

      expect(prettyDuration(dur, upperTersity: DurationTersity.second),
          '691200 seconds');

      expect(
          prettyDuration(dur,
              upperTersity: DurationTersity.millisecond,
              tersity: DurationTersity.all),
          '691200000 milliseconds');
      expect(
          prettyDuration(dur,
              upperTersity: DurationTersity.microsecond,
              tersity: DurationTersity.all),
          '691200000000 microseconds');
    });

    test('First', () {
      final dur = Duration(days: 5, hours: 23);

      expect(prettyDuration(dur, first: true), '5 days');
    });
  });
}
