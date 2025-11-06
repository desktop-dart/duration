import 'package:duration/duration.dart';
import 'package:test/test.dart';

void main() {
  group('prettyDuration', () {
    test('default', () {
      {
        final dur = Duration(microseconds: 0);
        expect(prettyDuration(dur), '0${'\u{00A0}'}seconds');
      }

      {
        final dur = Duration(microseconds: 999);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '999${'\u{00A0}'}microseconds');
      }

      {
        final dur = Duration(microseconds: 1000);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '1${'\u{00A0}'}millisecond');
      }

      {
        final dur = Duration(milliseconds: 5);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '5${'\u{00A0}'}milliseconds');
      }

      {
        final dur = Duration(milliseconds: 999);
        expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
            '999${'\u{00A0}'}milliseconds');
      }

      {
        final dur = Duration(milliseconds: 1000);
        expect(prettyDuration(dur), '1${'\u{00A0}'}second');
      }

      {
        final dur = Duration(seconds: 5);
        expect(prettyDuration(dur), '5${'\u{00A0}'}seconds');
      }

      {
        final dur = Duration(seconds: 59);
        expect(prettyDuration(dur), '59${'\u{00A0}'}seconds');
      }

      {
        final dur = Duration(seconds: 60);
        expect(prettyDuration(dur), '1${'\u{00A0}'}minute');
      }

      {
        final dur = Duration(minutes: 5);
        expect(prettyDuration(dur), '5${'\u{00A0}'}minutes');
      }

      {
        final dur = Duration(minutes: 59);
        expect(prettyDuration(dur), '59${'\u{00A0}'}minutes');
      }

      {
        final dur = Duration(minutes: 60);
        expect(prettyDuration(dur), '1${'\u{00A0}'}hour');
      }

      {
        final dur = Duration(hours: 5);
        expect(prettyDuration(dur), '5${'\u{00A0}'}hours');
      }

      {
        final dur = Duration(hours: 23);
        expect(prettyDuration(dur), '23${'\u{00A0}'}hours');
      }

      {
        final dur = Duration(hours: 24);
        expect(prettyDuration(dur), '1${'\u{00A0}'}day');
      }

      {
        final dur = Duration(days: 5);
        expect(prettyDuration(dur), '5${'\u{00A0}'}days');
      }

      {
        final dur = Duration(days: 7);
        expect(prettyDuration(dur), '1${'\u{00A0}'}week');
      }

      {
        final dur = Duration(days: 14);
        expect(prettyDuration(dur), '2${'\u{00A0}'}weeks');
      }
    });

    test('Abbreviated', () {
      {
        final dur = Duration(microseconds: 0);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '0${'\u{00A0}'}us');
      }

      {
        final dur = Duration(microseconds: 999);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '999${'\u{00A0}'}us');
      }

      {
        final dur = Duration(microseconds: 1000);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '1${'\u{00A0}'}ms');
      }

      {
        final dur = Duration(milliseconds: 5);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '5${'\u{00A0}'}ms');
      }

      {
        final dur = Duration(milliseconds: 999);
        expect(
            prettyDuration(dur,
                abbreviated: true, tersity: DurationTersity.microsecond),
            '999${'\u{00A0}'}ms');
      }

      {
        final dur = Duration(milliseconds: 1000);
        expect(prettyDuration(dur, abbreviated: true), '1${'\u{00A0}'}s');
      }

      {
        final dur = Duration(seconds: 5);
        expect(prettyDuration(dur, abbreviated: true), '5${'\u{00A0}'}s');
      }

      {
        final dur = Duration(seconds: 59);
        expect(prettyDuration(dur, abbreviated: true), '59${'\u{00A0}'}s');
      }

      {
        final dur = Duration(seconds: 60);
        expect(prettyDuration(dur, abbreviated: true), '1${'\u{00A0}'}min');
      }

      {
        final dur = Duration(minutes: 5);
        expect(prettyDuration(dur, abbreviated: true), '5${'\u{00A0}'}min');
      }

      {
        final dur = Duration(minutes: 59);
        expect(prettyDuration(dur, abbreviated: true), '59${'\u{00A0}'}min');
      }

      {
        final dur = Duration(minutes: 60);
        expect(prettyDuration(dur, abbreviated: true), '1${'\u{00A0}'}h');
      }

      {
        final dur = Duration(hours: 5);
        expect(prettyDuration(dur, abbreviated: true), '5${'\u{00A0}'}h');
      }

      {
        final dur = Duration(hours: 23);
        expect(prettyDuration(dur, abbreviated: true), '23${'\u{00A0}'}h');
      }

      {
        final dur = Duration(hours: 24);
        expect(prettyDuration(dur, abbreviated: true), '1${'\u{00A0}'}d');
      }

      {
        final dur = Duration(days: 5);
        expect(prettyDuration(dur, abbreviated: true), '5${'\u{00A0}'}d');
      }

      {
        final dur = Duration(days: 7);
        expect(prettyDuration(dur, abbreviated: true), '1${'\u{00A0}'}w');
      }

      {
        final dur = Duration(days: 14);
        expect(prettyDuration(dur, abbreviated: true), '2${'\u{00A0}'}w');
      }
    });

    test('Delimiter', () {
      expect(
        prettyDuration(aMinute * 10, delimiter: ', '),
        '10${'\u{00A0}'}minutes',
      );

      expect(
        prettyDuration(aMinute * 10 + aSecond * 5, delimiter: ', '),
        '10${'\u{00A0}'}minutes, 5${'\u{00A0}'}seconds',
      );

      expect(
        prettyDuration(anHour * 15 + aMinute * 10 + aSecond * 5,
            delimiter: ', '),
        '15${'\u{00A0}'}hours, 10${'\u{00A0}'}minutes, 5${'\u{00A0}'}seconds',
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
        '10${'\u{00A0}'}minutes',
      );

      expect(
        prettyDuration(aMinute * 10 + aSecond * 5, conjunction: ' and '),
        '10${'\u{00A0}'}minutes and 5${'\u{00A0}'}seconds',
      );

      expect(
        prettyDuration(anHour * 15 + aMinute * 10 + aSecond * 5,
            conjunction: ' and '),
        '15${'\u{00A0}'}hours 10${'\u{00A0}'}minutes and 5${'\u{00A0}'}seconds',
      );

      expect(
        prettyDuration(anHour * 15 + aMinute * 10 + aSecond * 5,
            conjunction: ' and ', delimiter: ', '),
        '15${'\u{00A0}'}hours, 10${'\u{00A0}'}minutes and 5${'\u{00A0}'}seconds',
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

      expect(prettyDuration(dur, tersity: DurationTersity.day),
          '5${'\u{00A0}'}days');

      expect(prettyDuration(dur, tersity: DurationTersity.hour),
          '5${'\u{00A0}'}days 23${'\u{00A0}'}hours');

      expect(prettyDuration(dur, tersity: DurationTersity.minute),
          '5${'\u{00A0}'}days 23${'\u{00A0}'}hours 59${'\u{00A0}'}minutes');

      expect(prettyDuration(dur, tersity: DurationTersity.second),
          '5${'\u{00A0}'}days 23${'\u{00A0}'}hours 59${'\u{00A0}'}minutes 59${'\u{00A0}'}seconds');

      expect(prettyDuration(dur, tersity: DurationTersity.millisecond),
          '5${'\u{00A0}'}days 23${'\u{00A0}'}hours 59${'\u{00A0}'}minutes 59${'\u{00A0}'}seconds 999${'\u{00A0}'}milliseconds');

      expect(prettyDuration(dur, tersity: DurationTersity.microsecond),
          '5${'\u{00A0}'}days 23${'\u{00A0}'}hours 59${'\u{00A0}'}minutes 59${'\u{00A0}'}seconds 999${'\u{00A0}'}milliseconds 999${'\u{00A0}'}microseconds');
    });

    test('upperTersity', () {
      {
        final dur = Duration(hours: 25);
        expect(prettyDuration(dur, upperTersity: DurationTersity.hour),
            '25${'\u{00A0}'}hours');
      }

      {
        final dur = Duration(days: 2, hours: 2);
        expect(prettyDuration(dur, upperTersity: DurationTersity.minute),
            '3000${'\u{00A0}'}minutes');
      }
    });

    test('maxUnits', () {
      final dur = Duration(days: 5, hours: 23, minutes: 15, seconds: 25);

      expect(prettyDuration(dur, maxUnits: 1), '5${'\u{00A0}'}days');
      expect(prettyDuration(dur, maxUnits: 3),
          '5${'\u{00A0}'}days 23${'\u{00A0}'}hours 15${'\u{00A0}'}minutes');
      expect(prettyDuration(dur, maxUnits: 3, conjunction: ' and '),
          '5${'\u{00A0}'}days 23${'\u{00A0}'}hours and 15${'\u{00A0}'}minutes');
    });

    test('MinusDurations', () {
      expect(
        (-(aMinute * 10)).pretty(),
        '-10${'\u{00A0}'}minutes',
      );
      expect(
        (-(aMinute * 10 + aSecond * 15)).pretty(),
        '-10${'\u{00A0}'}minutes 15${'\u{00A0}'}seconds',
      );
      expect(
        (-(aMinute * 10 + aSecond * 15)).pretty(maxUnits: 1),
        '-10${'\u{00A0}'}minutes',
      );
    });
  });
}
